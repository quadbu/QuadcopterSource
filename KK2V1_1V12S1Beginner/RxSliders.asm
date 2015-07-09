
RxSliders:


rxs1:	
	
	lrv RxTimeoutLimit, 2
	call GetRxChannels	; do this to get valid flags

	cli				;get throttle channel value / channel 3 value
	lds xl, ThrottleL
	lds xh, ThrottleH

	rvbrflagfalse	flagCppmOn, tend

	lds xl, CppmChannel3L
	lds xh, CppmChannel3H

tend:sei

	

	call Xabs			;sanitize
	clr yh				;store in register
	b16store RxThrottle

	cli				;get roll channel value / channel 1 value
	lds xl, RollL
	lds xh, RollH

	rvbrflagfalse	flagCppmOn, rend

	lds xl, CppmChannel1L
	lds xh, CppmChannel1H

rend:sei

	call Xabs			;sanitize
	clr yh				;store in register
	b16store RxRoll

	cli				;get Pitch channel value / channel 2 value
	lds xl, PitchL
	lds xh, PitchH
	
	rvbrflagfalse	flagCppmOn, pend

	lds xl, CppmChannel2L
	lds xh, CppmChannel2H

pend:sei

	call Xabs			;sanitize
	clr yh				;store in register
	b16store RxPitch

	cli				;get yaw channel value / channel 4 value
	lds xl, YawL
	lds xh, YawH

	rvbrflagfalse	flagCppmOn, yend

	lds xl, CppmChannel4L
	lds xh, CppmChannel4H

yend:sei

	call Xabs			;sanitize
	clr yh				;store in register
	b16store RxYaw

	cli				;get Aux channel value / channel 5 value
	lds xl, AuxL
	lds xh, AuxH

	rvbrflagfalse	flagCppmOn, aend

	lds xl, CppmChannel5L
	lds xh, CppmChannel5H

aend:sei

	call Xabs			;sanitize
	clr yh				;store in register
	b16store RxAux

	b16ldi	Temp,0.4
	b16mul	RxThrottle, RxThrottle, Temp
	b16mul  RxRoll, RxRoll, Temp
	b16mul  RxPitch, RxPitch, Temp
	b16mul  RxYaw, RxYaw, Temp
	b16mul  RxAux, RxAux, Temp

	call LcdClear

.def	Counter = r17

	ldi Counter, 30
	ldz pixels * 2
rxs2:
	lpm	t,Z+
	sts	Xpos, t
	lpm	t,Z+
	sts Ypos, t
	call SetPixel
	dec Counter
	brne rxs2

	lrv PixelType, 1
	lrv FontSelector, f4x6

	ldi Counter, 0
	ldz	inputs *  2
rxs3:
	ldi	t,4
	sts	X1, t
	lpm t,Z+
	sts Y1, t
	mov t, Counter
	call PrintChar
	inc	Counter
	cpi Counter,5
	brne rxs3

.undef	Counter

	lrv PixelType, 1
	lrv FontSelector, f4x6a

	ldi t,109
	sts	X1, t
	ldi t,0
	sts	Y1, t
	rvbrflagtrue flagRollValid, rxsroll2
	jmp rxsroll1
rxsroll2:
	b16load RxRoll
	call	Print16Signed
	b16ldi Temp, 1000
	b16sub RxRoll, RxRoll, Temp
	b16ldi Temp, 0.1
	b16mul RxRoll, RxRoll, Temp
	b16load RxRoll
	call limits
	ldi	t,10
	sts X1,t
	ldi t,2
	sts Y1,t
	sts Y2,t
	adiw xl,10
	mov	t,xl
	sts X2,t
	call Bresenham

	rjmp rxsroll3
rxsroll1:
	mPrintString rxs8	
rxsroll3:

	ldi t,109
	sts	X1, t
	ldi t,7
	sts	Y1, t
	rvbrflagtrue flagPitchValid, rxspitch2
	jmp rxspitch1
rxspitch2:
	b16load RxPitch
	call	Print16Signed
	b16ldi Temp, 1000
	b16sub RxPitch, RxPitch, Temp
	b16ldi Temp, 0.1
	b16mul RxPitch, RxPitch, Temp
	b16load RxPitch
	call limits
	ldi	t,10
	sts X1,t
	ldi t,9
	sts Y1,t
	sts Y2,t
	adiw xl,10
	mov	t,xl
	sts X2,t
	call Bresenham

	rjmp rxspitch3
rxspitch1:
	mPrintString rxs8	
rxspitch3:

	ldi t,109
	sts	X1, t
	ldi t,14
	sts	Y1, t
	rvbrflagtrue flagThrottleValid, rxsthrottle2
	jmp rxsthrottle1
rxsthrottle2:
	b16load RxThrottle
	call	Print16Signed
	b16ldi Temp, 1000
	b16sub RxThrottle, RxThrottle, Temp
	b16ldi Temp, 0.1
	b16mul RxThrottle, RxThrottle, Temp
	b16load RxThrottle
	call limits
	ldi	t,10
	sts X1,t
	ldi t,16
	sts Y1,t
	sts Y2,t
	adiw xl,10
	mov	t,xl
	sts X2,t
	call Bresenham

	rjmp rxsthrottle3
rxsthrottle1:
	mPrintString rxs8	
rxsthrottle3:

	ldi t,109
	sts	X1, t
	ldi t,21
	sts	Y1, t
	rvbrflagtrue flagYawValid, rxsyaw2
	jmp rxsyaw1
rxsyaw2:
	b16load RxYaw
	call	Print16Signed
	b16ldi Temp, 1000
	b16sub RxYaw, RxYaw, Temp
	b16ldi Temp, 0.1
	b16mul RxYaw, RxYaw, Temp
	b16load RxYaw
	call limits
	ldi	t,10
	sts X1,t
	ldi t,23
	sts Y1,t
	sts Y2,t
	adiw xl,10
	mov	t,xl
	sts X2,t
	call Bresenham

	rjmp rxsyaw3
rxsyaw1:
	mPrintString rxs8
rxsyaw3:

	ldi t,109
	sts	X1, t
	ldi t,28
	sts	Y1, t
	rvbrflagtrue flagAuxValid, rxsaux2
	jmp rxsaux1
rxsaux2:
	b16load RxAux
	call	Print16Signed
	b16ldi Temp, 1000
	b16sub RxAux, RxAux, Temp
	b16ldi Temp, 0.1
	b16mul RxAux, RxAux, Temp
	b16load RxAux
	call limits
	ldi	t,10
	sts X1,t
	ldi t,30
	sts Y1,t
	sts Y2,t
	adiw xl,10
	mov	t,xl
	sts X2,t
	call Bresenham

	rjmp rxs5
rxsaux1:
	mPrintString rxs8


rxs5:		
	lrv PixelType, 1
	lrv FontSelector, f6x8

	;footer
	lrv X1, 0
	lrv Y1, 57
	mPrintString rxs6

	call LcdUpdate

	call GetButtons

	cpi t, 0x08		;BACK?
	brne rxs7
	ret

rxs7: 
	jmp	rxs1

limits:

	ldz 0		;X < 0
	cp  xl, zl
	cpc xh, zh
	brlt gtrxs1

	ldz 100		;X > 100?
	cp  xl, zl
	cpc xh, zh
	brge gtrxs2
	ret

gtrxs1:
	ldx	0
	ret

gtrxs2:
	ldx 100
	ret

rxs6:	.db "BACK", 0, 0
rxs8:	.db "----", 0, 0

pixels:

	.db 10,1,10,3,10,8,10,10,10,15,10,17,10,22,10,24,10,29,10,31
	.db 58,1,58,3,58,8,58,10,58,15,58,17,58,22,58,24,58,29,58,31
	.db 107,1,107,3,107,8,107,10,107,15,107,17,107,22,107,24,107,29,107,31

inputs:

	.db 0,7,14,21,28,  0
