
SetupHardware:
	;       76543210	;set port directions
	ldi t,0b00110010	;output5, output6
	out ddra,t
	
	;       76543210
	ldi t,0b00001010
	out ddrb,t
	
	;       76543210
	ldi t,0b11111100	;scl, sda, output 1-8
	out ddrc,t

	;       76543210
	ldi t,0b11110010
	out ddrd,t

	;       76543210
	ldi t,0b11111111	;turn off digital inputs on port A
	store didr0,t

	;       76543210
	ldi t,0b11110101	;turn on pull ups on button inputs and aux, rud
	out portb,t

	;       76543210
	ldi t,0b00000011	;turn on pull ups SPI pin
	out portc,t         

	;       76543210
	ldi t,0b00001101	;turn on pull ups on thr, ele and ail
	out portd ,t


	//***********************************************************
	// Spektrum receiver binding - Code from David Thompson
	//***********************************************************

	// Wait 20 msec to give everything time to settle

	ldx 20
	call WaitXms

	// Bind as master if button 2&3 are pressed

	call GetButtons	
	cpi t, 0x06		;Button 2&3
	brne skipbinding

	// Make port d,0 (throttle) output for binding
	;       76543210
	ldi t,0b11110011
	out ddrd,t

	call bind_master

	// set port D direction back (throttle input)
	;       76543210
	ldi t,0b11110010
	out ddrd,t

skipbinding:

	;       76543210
	ldi t,0b00000000	;Set timer 1 to run at 2.5MHz
	store tccr1a, t

	;       76543210
	ldi t,0b00000010	
	store tccr1b, t

	;       76543210
	ldi t,0b00000000	
	store tccr1c, t

	ldz eeCppmOn
	call ReadEeprom
	sts flagCppmOn, t

	;       76543210
	ldi t,0b00010101	;setup external interrupts.
	store eicra, t

	;       76543210
	ldi t,0b00000111
	store eimsk, t

	rvbrflagfalse	flagCppmOn, intmask1

	;       76543210
	ldi t,0b00000010		; disable throttle input interrupt (PCINT2)
	store pcicr, t
	rjmp intmask2

intmask1:					; enable  throttle input interrupt (PCINT2)
	ldi t,0b00001010
	store pcicr, t

intmask2:
	;       76543210
	ldi t,0b00000001
	store pcmsk3, t

	;       76543210
	ldi t,0b00000001
	store pcmsk1, t

;sbi OutputPin8   ;<---- OBS

// Init_TWI =============================
	
	lds	t,TWSR
	andi t,0b11111100	; initialize twi prescaler set to 4^0 = 1
	sts TWSR,t

	ldi	t, 17 
	sts TWBR, t			; TWBR = ((20000000L / 400000L) - 16) / 2 = 17 for 400kHz clk rate

// End Init_TWI =============================

	;--- setup LCD --- 

	sbi lcd_cs1		;LCD signals
	sbi lcd_scl
	cbi lcd_res

	LedOn			;I am alive
	BuzzerOn
	ldx 500
	call WaitXms
	LedOff
	BuzzerOff

	sbi lcd_res

	ldx 100
	call WaitXms

	

	;---

	ret

BaudRatedelay:

ret

	ldi t,231		;this delay may need tweaking to give errorfree transfer
ba1:	dec t
	brne ba1
	ret

