//***********************************************************
//* init.c
//***********************************************************

//***********************************************************
//* Includes
//***********************************************************

#include "compiledefs.h"
#include <avr/io.h>
#include <avr/eeprom.h>
#include <stdbool.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <string.h>
#include "eeprom.h"
#include "io_cfg.h"
#include "isr.h"
#include "rc.h"
#include "main.h"
#include "adc.h"
#include "vbat.h"
#include "servos.h"
#include "gyros.h"
#include "acc.h"
#include "mixer.h"
#include "glcd_driver.h"
#include "mugui.h"
#include <avr/pgmspace.h>
#include "glcd_menu.h"
#include "pid.h"
#include "menu_ext.h"
#include "imu.h"
#include "uart.h"
#include "i2cmaster.h"
#include "i2c.h"
#include "MPU6050.h"
#include <avr/wdt.h>

//************************************************************
// Prototypes
//************************************************************

void init(void);

// WDT reset prototype. Placed before main() in code to prevent wdt re-firing
void wdt_init(void) __attribute__((naked)) __attribute__((section(".init3")));

void wdt_init(void)
{
	MCUSR = 0;
	wdt_disable();
	return;
}

//************************************************************
// Code
//************************************************************

CONFIG_STRUCT Config;			// eeProm data configuration
uint16_t SystemVoltage = 0;		// Initial voltage measured.

void init(void)
{
	//***********************************************************
	// I/O setup
	//***********************************************************
	// Set port directions
	DDRA		= 0x00;		// Port A - All inputs
	DDRB		= 0x0A;		// Port B - Buzzer and LED1 are outputs
	DDRC		= 0x00;		// Port C - All inputs
	DDRD		= 0xF2;		// Port D - SI, SCL, /CSI, /RES and A0 outputs 
							//			THR, AIL and ELE are inputs

	// Preset I/O pins
	LED1 		= 0;		// LED1 off
	LVA 		= 0; 		// LVA alarm OFF
	LCD_SCL		= 1;		// GLCD clock high

	// Set/clear pull-ups (1 = set, 0 = clear)
	PINB		= 0xF5;		// Set PB pull-ups
	PIND		= 0x0C;		// Set PD pull-ups (Don't pull up RX yet)

	//***********************************************************
	// Spektrum receiver binding. Must be done immediately on power-up
	// 
	// 3 low pulses: DSM2 1024/22ms
	// 5 low pulses: DSM2 2048/11ms
	// 7 low pulses: DSMX 1024/22ms
	// 9 low pulses: DSMX 2048/11ms
	//***********************************************************

	PIND	= 0x0C;			// Release RX pull up on PD0
	_delay_ms(63);			// Pause while satellite wakes up
							// and pull-ups have time to rise.
							// Tweak until bind pulses about 68ms after power-up		
		
	// Bind as master if any single button pressed.
	// NB: Have to wait until the button pull-ups rise before testing for a button press.
	// Button 1
	if ((PINB & 0xf0) == 0x70)
	{
		DDRD	= 0xF3;		// Switch PD0 to output
		bind_master(3);
		
	}
	// Button 2	
	if ((PINB & 0xf0) == 0xb0)
	{
		DDRD	= 0xF3;		// Switch PD0 to output
		bind_master(5);
	}
	// Button 3	
	if ((PINB & 0xf0) == 0xd0)
	{
		DDRD	= 0xF3;		// Switch PD0 to output
		bind_master(7);
	}
	
	// Button 4
	if ((PINB & 0xf0) == 0xE0)
	{
		DDRD	= 0xF3;		// Switch PD0 to output
		bind_master(9);
	}
	
	DDRD	= 0xF2;			// Reset Port D directions
	PIND	= 0x0D;			// Set PD pull-ups (now pull up RX as well)

	//***********************************************************
	// Timers
	//***********************************************************

	// Timer0 (8bit) - run @ 20MHz / 1024 = 19.531kHz or 51.2us - max 13.1ms
	// Slow timer to extend Timer 1
	TCCR0A = 0;								// Normal operation
	TCCR0B = 0x05;							// Clk / 1024 = 19.531kHz or 51.2us - max 13.1ms
	TIMSK0 |= (1 << TOIE0);					// Enable interrupts
	TCNT0 = 0;								// Reset counter

	// Timer1 (16bit) - run @ 2.5MHz (400ns) - max 26.2ms
	// Used to measure Rx Signals & control ESC/servo output rate
	TCCR1A = 0;
	TCCR1B |= (1 << CS11);					// Clk/8 = 2.5MHz

	// Timer2 8bit - run @ 20MHz / 1024 = 19.531kHz or 51.2us - max 13.1ms
	// Used to time arm/disarm intervals
	TCCR2A = 0;	
	TCCR2B = 0x07;							// Clk/1024 = 19.531kHz
	TIMSK2 = 0;
	TIFR2 = 0;
	TCNT2 = 0;								// Reset counter

	//***********************************************************
	// Interrupts and pin function setup
	//***********************************************************

	// Pin change interrupt enables PCINT3 (Throttle)
	PCICR  = 0x08;							// PCINT24 to PCINT31 (PCINT3 group - THR (PCINT24))
	PCIFR  = 0x0F;							// Clear PCIF0 to PCIF3 interrupt flags 

	// External interrupts INT0 (Elevator) and INT1 (Aileron) and INT2 (Rudder) - Disabled by EIMSK
	EICRA = 0x15;							// Any change INT0 (Elevator)
											// Any change INT1 (Aileron)
											// Any change INT2 (Rudder/CPPM)
	EIFR  = 0x07; 							// Clear INT0 interrupt flag (Elevator)
											// Clear INT1 interrupt flag (Aileron)
											// Clear INT2 interrupt flag (Rudder/CPPM)

	//***********************************************************
	// Start up
	//***********************************************************

	// Preset important flags
	Interrupted = false;	
	Flight_flags = 0;					
	Flight_flags |= (1 << FirstTimeFlightMode);
	int_count = 0;

	//***********************************************************
	// GLCD initialisation
	//***********************************************************
	
	// Initialise the GLCD
	st7565_init();

	// Make sure the LCD is blank without clearing buffer (and so no logo)
	clear_screen();
	
	// This delay prevents the GLCD flashing up a ghost image of old data
	_delay_ms(300);
	
	//***********************************************************
	// Load or reset EEPROM settings
	//***********************************************************
	// Reload default eeprom settings if middle two buttons are pressed
	if ((PINB & 0xf0) == 0x90)
	{
		// Display reset message
		st7565_command(CMD_SET_COM_NORMAL); 	// For text (not for logo)
		clear_buffer(buffer);
		LCD_Display_Text(1,(const unsigned char*)Verdana14,40,25);
		write_buffer(buffer);
		clear_buffer(buffer);

		Set_EEPROM_Default_Config();
		Save_Config_to_EEPROM();
		
		// Now set contrast to the previously saved value
		st7565_set_brightness((uint8_t)Config.Contrast);
		_delay_ms(500);		// Save is now too fast to show the "Reset" text long enough
	}
	// Load "Config" global data structure
	else
	{
		Initial_EEPROM_Config_Load();
	}		

	// Now set contrast to the previously saved value
	st7565_set_brightness((uint8_t)Config.Contrast);

#ifdef KK21
	// Write logo from buffer
	write_buffer(buffer);
	_delay_ms(500);
#endif

	clear_buffer(buffer);
	write_buffer(buffer);
	
	st7565_init(); // Seems necessary for KK2 mini

	//***********************************************************
	// i2c init for KK2.1
	//***********************************************************	

#ifdef KK21
	i2c_init();
	init_i2c_gyros();
	init_i2c_accs();
#endif

	//***********************************************************
	// Remaining init tasks
	//***********************************************************

	// Display "Hold steady" message
	clear_buffer(buffer);
	st7565_command(CMD_SET_COM_NORMAL); 	// For text (not for logo)
	LCD_Display_Text(2,(const unsigned char*)Verdana14,18,25);	// "Hold steady"
	write_buffer(buffer);
	clear_buffer(buffer);
		
	// Do startup tasks
	Init_ADC();
	init_int();								// Initialise interrupts based on RC input mode
	init_uart();							// Initialise UART	

	// Initial gyro calibration
	if (!CalibrateGyrosSlow())
	{
		clear_buffer(buffer);
		LCD_Display_Text(61,(const unsigned char*)Verdana14,25,25); // "Cal. failed"
		write_buffer(buffer);
		_delay_ms(1000);
	
		// Reset
		cli();
		wdt_enable(WDTO_15MS);				// Watchdog on, 15ms
		while(1);							// Wait for reboot
	}

	// Update voltage detection
	SystemVoltage = GetVbat();				// Check power-up battery voltage
	UpdateLimits();							// Update travel and trigger limits

	// Check to see that throttle is low if RC detected
	if (Interrupted)
	{
		RxGetChannels();
		if (MonopolarThrottle > THROTTLEIDLE)
		{
			General_error |= (1 << THROTTLE_HIGH); 	// Set throttle high error bit
		}
	}
	
	// Reset IMU
	reset_IMU();

	// Beep that init is complete
	LVA = 1;
	_delay_ms(25);
	LVA = 0;

} // init()
