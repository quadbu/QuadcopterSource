//***********************************************************
//* pots.c
//***********************************************************

//***********************************************************
//* Includes
//***********************************************************

#include <avr/io.h>
#include <stdbool.h>
#include "..\inc\io_cfg.h"
#include "..\inc\adc.h"

//************************************************************
// Prototypes
//************************************************************

void ReadGainValues(void);
void GetVbat(void);	

//************************************************************
// Code
//************************************************************

uint16_t	GainInADC[3];	// Pot readings
uint16_t	vBat;			// Battery voltage

void ReadGainValues(void)
{
#ifndef ACCELEROMETER		// Allow pot usage without accelerometer
	read_adc(ROLL_POT);		// Read roll pot value 0 - 256
	GainInADC[ROLL] = ADCW >> 2;

	read_adc(PITCH_POT);	// Read pitch pot value 0 - 256
	GainInADC[PITCH] = ADCW >> 2;
#endif
	read_adc(YAW_POT);		// Read yaw pot value 0 - 256
	GainInADC[YAW] = ADCW >> 2;
}

void GetVbat(void)			// Get battery voltage (VBAT on ADC6)
{	
	read_adc(VBAT);			// Multiplication factor = (Display volts / 1024) / (Vbat / 11 / Vref)
#ifndef MEMS_MODULE
	vBat = ADCW * 7 / 4;	// For Vref = 1.64V, factor = 1.76 (7/4 = 1.75)
#else
	vBat = ADCW * 31 / 12;	// For Vref = 2.40V, factor = 2.578 (31/12 = 2.583)
#endif
}
