.def Item		= r17

AdvancedSettings2:

bsux11:	call LcdClear
	
	lrv PixelType, 1
	lrv FontSelector, f6x8

	lrv X1,0		;servo on arm
	lrv Y1,1
	mPrintString bsux1
	ldz eeServoOnArm
	call GetEeVariable8 
	brflagfalse xl, bsux30
	mPrintString bsux28
	rjmp bsux32
bsux30:	mPrintString bsux29
bsux32:

	;footer
	lrv X1, 0
	lrv Y1, 57
	mPrintString bsux6

	;print selector
	ldzarray bsux7*2, 4, Item
	lpm t, z+
	sts X1, t
	lpm t, z+
	sts Y1, t
	lpm t, z+
	sts X2, t
	lpm t, z
	sts Y2, t
	lrv PixelType, 0
	call HilightRectangle

	call LcdUpdate

	call GetButtonsBlocking

	cpi t, 0x08		;BACK?
	brne bsux8
	ret	

bsux8:	cpi t, 0x04		;PREV?
	brne bsux9	
	dec Item
	brpl bsux10
	ldi Item, 0
bsux10:	rjmp bsux11	

bsux9:	cpi t, 0x02		;NEXT?
	brne bsux12
	inc Item
	cpi item, 1
	brne bsux13
	ldi Item, 0
bsux13:	rjmp bsux11	

bsux12:	cpi t, 0x01		;CHANGE?
	brne bsux14

	ldzarray eeServoOnArm, 1, Item	;toggle flag
	call GetEeVariable8
	ldi t, 0x80
	eor xl, t
	ldzarray eeServoOnArm, 1, Item
	call StoreEeVariable8

bsux14: rjmp bsux11


bsux1:	.db "Servos On Arm  : ", 0
bsux6:	.db "BACK PREV NEXT CHANGE", 0
bsux28:	.db "Yes",0
bsux29:	.db "No",0,0

bsux7:	.db 100, 0, 122, 9

.undef Item