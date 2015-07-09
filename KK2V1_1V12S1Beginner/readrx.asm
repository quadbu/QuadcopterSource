
IntRoll:
	in SregSaver, sreg

	lds tt, flagCppmOn		;CPPM mode?
	tst tt
	brpl rx6
	rjmp cppm

rx6:	sbis pind,3			;rising or falling?
	rjmp rx1

	lds tt, tcnt1l			;rising, store the start value
	sts RollStartL, tt
	lds tt, tcnt1h
	sts RollStartH, tt
	
	clr tt
	sts RollDcnt, tt

	out sreg, SregSaver		;exit	
	reti

rx1:	lds tt, tcnt1l			;falling, calculate the pulse length
	lds treg, RollStartL
	sub tt, treg
	sts RollL, tt

	lds tt, tcnt1h
	lds treg, RollStartH
	sbc tt, treg
	sts RollH, tt

	out sreg, SregSaver		;exit	
	reti



IntPitch:
	in SregSaver, sreg

	sbis pind,2			;rising or falling?
	rjmp rx2

	lds tt, tcnt1l			;rising, store the start value
	sts PitchStartL, tt
	lds tt, tcnt1h
	sts PitchStartH, tt

	clr tt
	sts PitchDcnt, tt
	
	out sreg, SregSaver		;exit	
	reti

rx2:	lds tt, tcnt1l			;falling, calculate the pulse length
	lds treg, PitchStartL
	sub tt, treg
	sts PitchL, tt

	lds tt, tcnt1h
	lds treg, PitchStartH
	sbc tt, treg
	sts PitchH, tt

	out sreg, SregSaver		;exit	
	reti



IntThrottle:
	in SregSaver, sreg

	sbis pind,0			;rising or falling?
	rjmp rx3

	lds tt, tcnt1l			;rising, store the start value
	sts ThrottleStartL, tt
	lds tt, tcnt1h
	sts ThrottleStartH, tt
	
	clr tt
	sts ThrottleDcnt, tt

	out sreg, SregSaver		;exit	
	reti

rx3:	lds tt, tcnt1l			;falling, calculate the pulse length
	lds treg, ThrottleStartL
	sub tt, treg
	sts ThrottleL, tt

	lds tt, tcnt1h
	lds treg, ThrottleStartH
	sbc tt, treg
	sts ThrottleH, tt

	out sreg, SregSaver		;exit	
	reti



IntYaw:
	in SregSaver, sreg

	sbis pinb,2			;rising or falling?
	rjmp rx4

	lds tt, tcnt1l			;rising, store the start value
	sts YawStartL, tt
	lds tt, tcnt1h
	sts YawStartH, tt

	clr tt
	sts YawDcnt, tt
	
	out sreg, SregSaver		;exit	
	reti

rx4:	lds tt, tcnt1l			;falling, calculate the pulse length
	lds treg, YawStartL
	sub tt, treg
	sts YawL, tt

	lds tt, tcnt1h
	lds treg, YawStartH
	sbc tt, treg
	sts YawH, tt

	out sreg, SregSaver		;exit	
	reti



IntAux:
	in SregSaver, sreg

	sbis pinb,0			;rising or falling?
	rjmp rx5

	lds tt, tcnt1l			;rising, store the start value
	sts AuxStartL, tt
	lds tt, tcnt1h
	sts AuxStartH, tt

	clr tt
	sts AuxDcnt, tt
	
	out sreg, SregSaver		;exit	
	reti

rx5:	lds tt, tcnt1l			;falling, calculate the pulse length
	lds treg, AuxStartL
	sub tt, treg
	sts AuxL, tt

	lds tt, tcnt1h
	lds treg, AuxStartH
	sbc tt, treg
	sts AuxH, tt

	out sreg, SregSaver		;exit	
	reti

	;--- USART ISR ---

	//************************************************************
	//* Spektrum Satellite format (8-N-1/115Kbps) MSB sent first
	//* DX7/DX6i: One data-frame at 115200 baud every 22ms.
	//* DX7se:    One data-frame at 115200 baud every 11ms.
	//*
	//*    byte1: is a frame loss counter
	//*    byte2: [0 0 0 R 0 0 N1 N0]
	//*    byte3:  and byte4:  channel data (FLT-Mode)	= FLAP 6
	//*    byte5:  and byte6:  channel data (Roll)		= AILE A
	//*    byte7:  and byte8:  channel data (Pitch)		= ELEV E
	//*    byte9:  and byte10: channel data (Yaw)		= RUDD R
	//*    byte11: and byte12: channel data (Gear Switch) GEAR 5
	//*    byte13: and byte14: channel data (Throttle)	= THRO T
	//*    byte15: and byte16: channel data (AUX2)		= AUX2 8
	//* 
	//* DS9 (9 Channel): One data-frame at 115200 baud every 11ms,
	//* alternating frame 1/2 for CH1-7 / CH8-9
	//*
	//*   1st Frame:
	//*    byte1: is a frame loss counter
	//*    byte2: [0 0 0 R 0 0 N1 N0]
	//*    byte3:  and byte4:  channel data
	//*    byte5:  and byte6:  channel data
	//*    byte7:  and byte8:  channel data
	//*    byte9:  and byte10: channel data
	//*    byte11: and byte12: channel data
	//*    byte13: and byte14: channel data
	//*    byte15: and byte16: channel data
	//*   2nd Frame:
	//*    byte1: is a frame loss counter
	//*    byte2: [0 0 0 R 0 0 N1 N0]
	//*    byte3:  and byte4:  channel data
	//*    byte5:  and byte6:  channel data
	//*    byte7:  and byte8:  0xffff
	//*    byte9:  and byte10: 0xffff
	//*    byte11: and byte12: 0xffff
	//*    byte13: and byte14: 0xffff
	//*    byte15: and byte16: 0xffff
	//* 
	//* Each channel data (16 bit= 2byte, first msb, second lsb) is arranged as:
	//* 
	//* Bits: F 00 C3 C2 C1 C0  D9 D8 D7 D6 D5 D4 D3 D2 D1 D0 for 10-bit data (0 to 1023) or
	//* Bits: F C3 C2 C1 C0 D10 D9 D8 D7 D6 D5 D4 D3 D2 D1 D0 for 11-bit data (0 to 2047) 
	//* 
	//* R: 0 for 10 bit resolution 1 for 11 bit resolution channel data
	//* N1 to N0 is the number of frames required to receive all channel data. 
	//* F: 1 = indicates beginning of 2nd frame for CH8-9 (DS9 only)
	//* C3 to C0 is the channel number. 0 to 9 (4 bit, as assigned in the transmitter)
	//* D9 to D0 is the channel data 
	//*		(10 bit) 0xaa..0x200..0x356 for 100% transmitter-travel
	//*		(11 bit) 0x154..0x400..0x6ac for 100% transmitter-travel
	//*
	//* The data values can range from 0 to 1023/2047 to define a servo pulse width 
	//* from approximately 0.75ms to 2.25ms (1.50ms difference). 1.465us per digit.
	//* A value of 171/342 is 1.0 ms
	//* A value of 512/1024 is 1.5 ms
	//* A value of 853/1706 is 2.0 ms
	//* 0 = 750us, 1023/2047 = 2250us
	//*
	//************************************************************
	

	// This code only supports DSM2 1024/22ms
	// Tested with OrangeRX R100 Satellite and AR7/8000 Satellite
	// CH0 = Throttle, CH1 = Aileron, CH2 = Elevator, CH3 = Rudder, CH4 = Gear, etc....

IsrUsart:
	in SregSaver, sreg

	push zh
	push zl
	push xh
	push xl

	lds xl, tcnt1l			;X = TCNT1 - SatRxStart, SatRxStart = TCNT1
	lds xh, tcnt1h
	lds zl, SatRxStartL
	lds zh, SatRxStartH
	sts SatRxStartL, xl
	sts SatRxStartH, xh
	sub xl, zl
	sbc xh, zh

	brpl IU8			;X = ABS(X)
	ldz 0
	sub zl, xl
	sbc zh, xh
	movw x, z
IU8:	
	ldz 6250			;have we waited longer than 2.5ms?
	cp  xl, zl
	cpc xh, zh
	brlo IU11			; No

	rjmp IU3		;yes, reset array address sequence and exit

IU11:
	lds zl, SatByteArrayAddressL
	lds zh, SatByteArrayAddressH

	ldx SatByte16		; End of array reached?
	cp  zl, xl
	cpc zh, xh
	brlo IU1			; No
						; Yes

	// Routine when 16 bytes received
	
	lds	tt, UDR0					; Save 16th byte to array
	sts SatByte16, tt

	ser	tt							; Show that we have successfully received 16 bytes
	sts flagSat, tt

IU3:
	ldz SatByte1					; Reset to start of array
	rjmp IU2

IU1:						; Routine when < 16 bytes received	

	lds	tt, UDR0			; Get byte from buffer
	st	z+, tt				; Save byte to array and inc array address pointer
IU2:
	sts SatByteArrayAddressL, zl	; Save array address pointer
	sts SatbyteArrayAddressH, zh

	clr tt							; reset timeout counter
	sts CppmTimeoutCounter, tt

	pop	xl
	pop	xh
	pop	zl
	pop zh

	out sreg, SregSaver		
	reti

	;--- CPPM ISR ---

cppm:	sbic pind,3			;rising or falling?
	rjmp rx7

	out sreg, SregSaver		;falling, exit	
	reti

rx7:	push xl				;rising, calculate pulse length:
	push xh
	push zl
	push zh
	
	lds xl, tcnt1l			;X = TCNT1 - CppmPulseStart, CppmPulseStart = TCNT1
	lds xh, tcnt1h
	lds zl, CppmPulseStartL
	lds zh, CppmPulseStartH
	sts CppmPulseStartL, xl
	sts CppmPulseStartH, xh
	sub xl, zl
	sbc xh, zh

	brpl rx8			;X = ABS(X)
	ldz 0
	sub zl, xl
	sbc zh, xh
	movw x, z
rx8:	
	ldz 6250			;pulse longer than 2.5ms?
	cp  xl, zl
	cpc xh, zh
	brlo rx11

	ldz CppmChannel1L		;yes, reset cppm sequence and exit
	rjmp rx10

rx11:	lds zl, CppmPulseArrayAddressL	;store channel in channel array.
	lds zh, CppmPulseArrayAddressH

	st z+, xl
	st z+, xh

	ldx CppmChannel9L		;end of array reached?
	cp  zl, xl
	cpc zh, xh
	brlo rx10
	breq rx10

	ldz CppmChannel9L		;yes, limit

rx10:	sts CppmPulseArrayAddressL, zl	;store array pointer
	sts CppmPulseArrayAddressH, zh

	clr tt				;reset timeout counter
	sts CppmTimeoutCounter, tt

	pop zh
	pop zl
	pop xh
	pop xl

	out sreg, SregSaver		;exit	
	reti


	;---


GetRxChannels:

	; If using a satellite, need to move channels into Cppm Channel Array
	; Only supports 10 bit and all channels in a single frame (16 bytes)

	rvbrflagfalse flagSat, skipsatchannelmove1
	rjmp sat5
skipsatchannelmove1:
	jmp skipsatchannelmove
sat5:
	ldx SatByte3	; Skip first 2 bytes
	ldy SatByte16+1	; used as loop counter
	
	; Set CPPM Array to 1st location
sat3:
	ldz CppmChannel1L
	;cli
	ld	t,x
	;sei
	lsr t
	andi t,0x0E		; Mask Channel Number (this is actually 2*CH# and limited to 7 channels)
	inc t			; Add one so we end up at CppmChannelXH
	
	add zl,t		; Increase CPPM Channel Array Pointer for current sat channel
	brcc	sat2
	inc zh
sat2:
	;cli
	ld t,x+
	;sei
	andi t,0x03		; Mask for D9 & D8
	st z,t			; Store and decrement pointer
	sbiw z,1
	;cli
	ld t,x+			; Get D0 to D7
	;sei
	st z,t			; Store D0 to D7

	; Check to see if we have got to Byte 16 (X is actully pointing to Byte17)
	cp  yl, xl
	cpc yh, xh

	brne sat3

	; Go through CPPM Channel Array and do some maths so the values are meaningful

	ldx	CppmChannel9H+1
	ldy CppmChannel1L
	ldz CppmChannel9H+1

sat7:
	ld t,-x
	sts Temper,t
	ld t,-x
	sts Temper+1,t
	clr t
	sts Temper+2,t
	
	b16ldi Temp,512
	b16sub Temper,Temper,Temp
	
	b16ldi Temp,2.93
	b16mul Temper,Temper,Temp

	b16ldi Temp,3750
	b16add Temper,Temper,Temp

	lds t, Temper
	st -z,t
	lds t, Temper+1
	st -z,t

	cp  yl, xl		; Did we reach CppmChannel1L yet?
	cpc yh, xh

	brne sat8
	rjmp satchannelmoveexit
sat8:jmp sat7	

satchannelmoveexit:
	
	clr	t
	sts flagSat, t

skipsatchannelmove:

	;--- Roll ---

	rvbrflagfalse flagCppmOn, rx12

	ldz eeCppmRoll
	rcall GetCppmChannel
	rjmp rx13


rx12:	cli				;get roll channel value
	lds xl, RollL
	lds xh, RollH
	sei

rx13:	rcall gt1m1			;sanitize
	clr yh				;store in register
	b16store RxRoll

	
	;--- Pitch

	rvbrflagfalse flagCppmOn, rx14

	ldz eeCppmPitch
	rcall GetCppmChannel
	rjmp rx15

rx14:	cli				;get Pitch channel value
	lds xl, PitchL
	lds xh, PitchH
	sei

rx15:	rcall gt1m1			;sanitize
	clr yh				;store in register
	b16store RxPitch


	;--- Throttle ---

	rvbrflagfalse flagCppmOn, rx16

	ldz eeCppmThrottle
	rcall GetCppmChannel
	rjmp rx17

rx16:	cli				;get Throttle channel value
	lds xl, ThrottleL
	lds xh, ThrottleH
	sei

rx17:	rvsetflagfalse flagThrottleZero

	rcall Xabs			;X = ABS(X)

	ldz 2875			;X = X - 2875 (1.15ms)
	sub xl, zl
	sbc xh, zh

	ldz 0				;X < 0 ?
	cp  xl, zl
	cpc xh, zh
	brge gt8m8

	rjmp rx30			;yes, set to zero

gt8m8:	ldz 3125			;X > 3125? (1.25ms)
	cp  xl, zl
	cpc xh, zh
	brlt gt7m2

rx30:	ldx 0				;Yes, set to zero
	rvsetflagtrue flagThrottleZero

gt7m2:	clr yh				;store in register
	b16store RxThrottle


	;--- Yaw ---

	rvbrflagfalse flagCppmOn, rx18

	ldz eeCppmYaw
	rcall GetCppmChannel
	rjmp rx19

rx18:	cli				;get Yaw channel value
	lds xl, YawL
	lds xh, YawH
	sei

rx19:	rcall gt1m1			;sanitize

	clr yh				;store in register
	b16store RxYaw

	
	;--- AUX ---

	rvbrflagfalse flagCppmOn, rx20

	ldz eeCppmAux
	rcall GetCppmChannel
	rjmp rx21

rx20:	cli				;get Aux channel value
	lds xl, AuxL
	lds xh, AuxH
	sei

rx21:	rcall gt1m1			;sanitize

	rvsetflagfalse flagAuxOn
	tst xh
	brmi gt9m3
	breq gt9m3
	rvsetflagtrue flagAuxOn
	
gt9m3:	clr yh				;store in register
	b16store RxAux


	;--- Check rx ---


	rvsetflagtrue flagRollValid	
	rvsetflagtrue flagPitchValid	
	rvsetflagtrue flagThrottleValid	
	rvsetflagtrue flagYawValid	
	rvsetflagtrue flagAuxValid	

	rvbrflagtrue flagCppmOn, rx22
	rjmp rx24

rx22:	rvinc CppmTimeoutCounter			;CPPM timeout?
	rvcp CppmTimeoutCounter, RxTimeoutLimit
	brlo rx23			
	rvdec CppmTimeoutCounter
	rvsetflagfalse flagRollValid			;yes, set flags to false and values to zero
	rvsetflagfalse flagPitchValid	
	rvsetflagfalse flagThrottleValid	
	rvsetflagfalse flagYawValid	
	rvsetflagfalse flagAuxValid	
	b16clr RxRoll
	b16clr RxPitch
	b16clr RxThrottle
	rvsetflagtrue flagThrottleZero
	b16clr RxYaw
	b16clr RxAux
	rvsetflagfalse flagAuxOn

rx23:	ret


rx24:	rvinc RollDcnt					;signal timed out?
	rvcp RollDcnt, RxTimeoutLimit
	brlo rx25			
	rvdec RollDcnt
	rvsetflagfalse flagRollValid			;Yes, set flag to false and set value to 0
	b16clr RxRoll

rx25:	rvinc PitchDcnt					;signal timed out?
	rvcp PitchDcnt, RxTimeoutLimit
	brlo rx26			
	rvdec PitchDcnt
	rvsetflagfalse flagPitchValid			;Yes, set flag to false and set value to 0
	b16clr RxPitch

rx26:	rvinc ThrottleDcnt				;signal timed out?
	rvcp ThrottleDcnt, RxTimeoutLimit
	brlo rx27			
	rvdec ThrottleDcnt
	rvsetflagfalse flagThrottleValid		;Yes, set flag to false and set value to 0
	b16clr RxThrottle
	rvsetflagtrue flagThrottleZero

rx27:	rvinc YawDcnt					;signal timed out?
	rvcp YawDcnt, RxTimeoutLimit
	brlo rx28			
	rvdec YawDcnt
	rvsetflagfalse flagYawValid			;Yes, set flag to false and set value to 0
	b16clr RxYaw

rx28:	rvinc AuxDcnt					;signal timed out?
	rvcp AuxDcnt, RxTimeoutLimit
	brlo rx29			
	rvdec AuxDcnt
	rvsetflagfalse flagAuxValid			;Yes, set flag to false and set value to 0
	b16clr RxAux
	rvsetflagfalse flagAuxOn

rx29:	ret


	;----

GetCppmChannel:
	call ReadEeprom
	dec t
	mov r0, t
	ldzarray CppmChannel1L, 2, r0
	cli
	ld xl, z+
	ld xh, z
	sei

	ret



gt1m1:	rcall Xabs	;X = ABS(X)

	ldz 3750	;X = X - 3750 (1.5ms)
	sub xl, zl
	sbc xh, zh

	ldz -1750	;X < -1750?  (0.7ms)
	cp  xl, zl
	cpc xh, zh
	brlt gt1m2

	ldz 1750	;X > 1750?
	cp  xl, zl
	cpc xh, zh
	brge gt1m2

	ret		;No, exit

gt1m2:	ldx 0		;Yes, set to zero
	ret





Xabs:	tst xh		;X = ABS(X)
	brpl xa1

	com xl
	com xh
	
	ldi t,1
	add xl,t
	clr t
	adc xh,t

xa1:	ret




