	.file	"lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sendByte,"ax",@progbits
	.type	sendByte, @function
sendByte:
.LFB12:
	.file 1 "../driver/lcd.c"
	.loc 1 60 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 60 0
	ldi r25,lo8(8)
.LVL1:
.L5:
.LBB2:
	.loc 1 63 0
	cbi 0xb,4
	.loc 1 64 0
	sbrs r24,7
	rjmp .L2
	.loc 1 65 0
	sbi 0xb,1
	rjmp .L3
.L2:
	.loc 1 67 0
	cbi 0xb,1
.L3:
	.loc 1 68 0
	sbi 0xb,4
	.loc 1 69 0
	lsl r24
.LVL2:
	subi r25,lo8(-(-1))
.LVL3:
	.loc 1 61 0
	brne .L5
/* epilogue start */
.LBE2:
	.loc 1 71 0
	ret
	.cfi_endproc
.LFE12:
	.size	sendByte, .-sendByte
	.section	.text.sendCommand,"ax",@progbits
	.type	sendCommand, @function
sendCommand:
.LFB13:
	.loc 1 74 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 75 0
	cbi 0xb,5
	.loc 1 76 0
	cbi 0xb,7
	.loc 1 77 0
	call sendByte
.LVL5:
	.loc 1 78 0
	sbi 0xb,5
	ret
	.cfi_endproc
.LFE13:
	.size	sendCommand, .-sendCommand
	.section	.lowtext,"ax",@progbits
.global	__vector_18
	.type	__vector_18, @function
__vector_18:
.LFB16:
	.loc 1 98 0
	.cfi_startproc
	sei
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r28
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 28, -14
	push r29
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -15
	push r30
.LCFI14:
	.cfi_def_cfa_offset 17
	.cfi_offset 30, -16
	push r31
.LCFI15:
	.cfi_def_cfa_offset 18
	.cfi_offset 31, -17
/* prologue: Interrupt */
/* frame size = 0 */
/* stack size = 17 */
.L__stack_usage = 17
	.loc 1 101 0
	lds r28,offset.2134
	lds r29,offset.2134+1
	movw r24,r28
	andi r24,127
	clr r25
	or r24,r25
	brne .L9
.LVL6:
	.loc 1 102 0
	movw r24,r28
	lsl r24
	mov r24,r25
	rol r24
	sbc r25,r25
	neg r25
.LBB7:
.LBB8:
	.loc 1 91 0
	andi r24,lo8(7)
	ori r24,lo8(-80)
	call sendCommand
.LVL7:
	.loc 1 92 0
	ldi r24,lo8(16)
	call sendCommand
.LVL8:
	.loc 1 93 0
	ldi r24,0
	call sendCommand
.LVL9:
.L9:
.LBE8:
.LBE7:
	.loc 1 104 0
	movw r30,r28
	subi r30,lo8(-(_screen))
	sbci r31,hi8(-(_screen))
	ld r24,Z
.LVL10:
.LBB9:
.LBB10:
	.loc 1 83 0
	cbi 0xb,5
	.loc 1 84 0
	sbi 0xb,7
	.loc 1 85 0
	call sendByte
.LVL11:
	.loc 1 86 0
	sbi 0xb,5
.LBE10:
.LBE9:
	.loc 1 104 0
	adiw r28,1
	.loc 1 105 0
	andi r29,3
	sts offset.2134+1,r29
	sts offset.2134,r28
/* epilogue start */
	.loc 1 106 0
	pop r31
	pop r30
	pop r29
	pop r28
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE16:
	.size	__vector_18, .-__vector_18
	.section	.text.lcdSetPos,"ax",@progbits
.global	lcdSetPos
	.type	lcdSetPos, @function
lcdSetPos:
.LFB17:
	.loc 1 109 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 110 0
	andi r22,lo8(127)
.LVL13:
	sts _curx,r22
	.loc 1 111 0
	lsl r24
	lsl r24
	lsl r24
.LVL14:
	sts _cury,r24
	ret
	.cfi_endproc
.LFE17:
	.size	lcdSetPos, .-lcdSetPos
	.section	.text.lcdXY,"ax",@progbits
.global	lcdXY
	.type	lcdXY, @function
lcdXY:
.LFB18:
	.loc 1 115 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 116 0
	sts _curx,r24
	.loc 1 117 0
	sts _cury,r22
	ret
	.cfi_endproc
.LFE18:
	.size	lcdXY, .-lcdXY
	.section	.text.lcdSetPixel,"ax",@progbits
.global	lcdSetPixel
	.type	lcdSetPixel, @function
lcdSetPixel:
.LFB19:
	.loc 1 121 0
	.cfi_startproc
.LVL16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 123 0
	mov r25,r22
	lsr r25
	lsr r25
	lsr r25
	mov r26,r24
	ldi r27,0
	ldi r24,lo8(-128)
.LVL17:
	mul r25,r24
	add r26,r0
	adc r27,r1
	clr __zero_reg__
.LVL18:
	subi r26,lo8(-(_screen))
	sbci r27,hi8(-(_screen))
.LVL19:
.LBB11:
	.loc 1 124 0
	andi r22,lo8(7)
.LVL20:
	mov r30,r22
	ldi r31,0
	subi r30,lo8(-(masks.2148))
	sbci r31,hi8(-(masks.2148))
/* #APP */
 ;  124 "../driver/lcd.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL21:
/* #NOAPP */
.LBE11:
	.loc 1 125 0
	ldi r18,lo8(1)
	cpse r20,__zero_reg__
	ldi r18,0
.L14:
	lds r24,_flags
	andi r24,lo8(1)
	ld r25,X
	cp r18,r24
	breq .L13
	.loc 1 126 0
	com r30
.LVL22:
	and r30,r25
.LVL23:
	rjmp .L19
.LVL24:
.L13:
	.loc 1 128 0
	or r30,r25
.LVL25:
.L19:
	st X,r30
	ret
	.cfi_endproc
.LFE19:
	.size	lcdSetPixel, .-lcdSetPixel
	.section	.text.lcdLine,"ax",@progbits
.global	lcdLine
	.type	lcdLine, @function
lcdLine:
.LFB22:
	.loc 1 153 0
	.cfi_startproc
.LVL26:
	push r8
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r11
.LCFI18:
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
.LCFI19:
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r13
.LCFI20:
	.cfi_def_cfa_offset 7
	.cfi_offset 13, -6
	push r14
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -7
	push r15
.LCFI22:
	.cfi_def_cfa_offset 9
	.cfi_offset 15, -8
	push r16
.LCFI23:
	.cfi_def_cfa_offset 10
	.cfi_offset 16, -9
	push r17
.LCFI24:
	.cfi_def_cfa_offset 11
	.cfi_offset 17, -10
	push r28
.LCFI25:
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
.LCFI26:
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
	rcall .
	push __zero_reg__
.LCFI27:
	.cfi_def_cfa_offset 16
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI28:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 3 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r12,r24
	mov r13,r22
	mov r11,r20
	.loc 1 155 0
	mov r30,r20
	ldi r31,0
	sub r30,r24
	sbc r31,__zero_reg__
	sbrs r31,7
	rjmp .L21
	neg r31
	neg r30
	sbc r31,__zero_reg__
.L21:
	mov r16,r30
.LVL27:
	.loc 1 156 0
	cp r12,r11
	brsh .L30
	ldi r19,lo8(1)
	rjmp .L22
.L30:
	ldi r19,lo8(-1)
.L22:
.LVL28:
	.loc 1 157 0 discriminator 3
	mov r30,r18
.LVL29:
	ldi r31,0
	sub r30,r13
	sbc r31,__zero_reg__
	sbrs r31,7
	rjmp .L23
	neg r31
	neg r30
	sbc r31,__zero_reg__
.L23:
	mov r14,r30
	neg r14
.LVL30:
	.loc 1 158 0 discriminator 3
	cp r13,r18
	brsh .L31
	.loc 1 158 0 is_stmt 0
	ldi r25,lo8(1)
	rjmp .L24
.L31:
	ldi r25,lo8(-1)
.L24:
.LVL31:
	.loc 1 159 0 is_stmt 1 discriminator 3
	clr r17
	sbrc r16,7
	com r17
	clr r15
	sbrc r14,7
	com r15
	movw r8,r16
	add r8,r14
	adc r9,r15
.LVL32:
.L25:
	.loc 1 163 0
	ldi r20,lo8(1)
	mov r22,r13
	mov r24,r12
	std Y+3,r18
	std Y+1,r19
	std Y+2,r25
	call lcdSetPixel
.LVL33:
	.loc 1 165 0
	ldd r18,Y+3
	ldd r19,Y+1
	ldd r25,Y+2
	cpse r12,r11
	rjmp .L26
	.loc 1 165 0 is_stmt 0 discriminator 1
	cp r13,r18
	breq .L20
.L26:
	.loc 1 168 0 is_stmt 1
	movw r30,r8
	lsl r30
	rol r31
.LVL34:
	.loc 1 169 0
	cp r14,r30
	cpc r15,r31
	brge .L28
	.loc 1 169 0 is_stmt 0 discriminator 1
	add r8,r14
	adc r9,r15
.LVL35:
	add r12,r19
.LVL36:
.L28:
	.loc 1 170 0 is_stmt 1
	cp r30,r16
	cpc r31,r17
	brge .L25
	.loc 1 170 0 is_stmt 0 discriminator 1
	add r8,r16
	adc r9,r17
.LVL37:
	add r13,r25
.LVL38:
	rjmp .L25
.LVL39:
.L20:
/* epilogue start */
	.loc 1 172 0 is_stmt 1
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL40:
	pop r13
.LVL41:
	pop r12
.LVL42:
	pop r11
.LVL43:
	pop r9
	pop r8
.LVL44:
	ret
	.cfi_endproc
.LFE22:
	.size	lcdLine, .-lcdLine
	.section	.text.lcdRectangle,"ax",@progbits
.global	lcdRectangle
	.type	lcdRectangle, @function
lcdRectangle:
.LFB23:
	.loc 1 175 0
	.cfi_startproc
.LVL45:
	push r14
.LCFI29:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI32:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI33:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI34:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r29,r24
	mov r28,r22
	mov r17,r20
	mov r15,r18
	.loc 1 177 0
	cp r20,r24
	brsh .L33
	mov r29,r20
	mov r17,r24
.L33:
.LVL46:
	.loc 1 178 0
	cp r15,r28
	brsh .L34
	mov r24,r28
	mov r28,r15
	mov r15,r24
.L34:
.LVL47:
	.loc 1 179 0
	mov r14,r29
.LVL48:
.L35:
	.loc 1 179 0 is_stmt 0 discriminator 1
	cp r17,r14
	brlo .L37
	.loc 1 181 0 is_stmt 1 discriminator 2
	mov r20,r16
	mov r22,r28
	mov r24,r14
	call lcdSetPixel
.LVL49:
	.loc 1 182 0 discriminator 2
	mov r20,r16
	mov r22,r15
	mov r24,r14
	call lcdSetPixel
.LVL50:
	.loc 1 179 0 discriminator 2
	inc r14
.LVL51:
	rjmp .L35
.LVL52:
.L37:
	.loc 1 184 0 discriminator 1
	cp r15,r28
	brlo .L41
	.loc 1 186 0 discriminator 2
	mov r20,r16
	mov r22,r28
	mov r24,r29
	call lcdSetPixel
.LVL53:
	.loc 1 187 0 discriminator 2
	mov r20,r16
	mov r22,r28
	mov r24,r17
	call lcdSetPixel
.LVL54:
	.loc 1 184 0 discriminator 2
	subi r28,lo8(-(1))
.LVL55:
	rjmp .L37
.L41:
/* epilogue start */
	.loc 1 189 0
	pop r29
.LVL56:
	pop r28
.LVL57:
	pop r17
.LVL58:
	pop r16
.LVL59:
	pop r15
.LVL60:
	pop r14
	ret
	.cfi_endproc
.LFE23:
	.size	lcdRectangle, .-lcdRectangle
	.section	.text.lcdFillRectangle,"ax",@progbits
.global	lcdFillRectangle
	.type	lcdFillRectangle, @function
lcdFillRectangle:
.LFB24:
	.loc 1 192 0
	.cfi_startproc
.LVL61:
	push r13
.LCFI35:
	.cfi_def_cfa_offset 3
	.cfi_offset 13, -2
	push r14
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI39:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI41:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
	push __zero_reg__
.LCFI42:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI43:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r13,r24
	mov r14,r22
	mov r17,r20
	.loc 1 194 0
	cp r20,r24
	brsh .L43
	mov r13,r20
	mov r17,r24
.L43:
.LVL62:
	.loc 1 195 0
	cp r18,r14
	brsh .L45
	mov r24,r14
	mov r14,r18
	mov r18,r24
.LVL63:
	.loc 1 196 0
	rjmp .L45
.LVL64:
.L51:
	inc r14
.LVL65:
.L45:
	.loc 1 196 0 is_stmt 0 discriminator 1
	cp r18,r14
	brlo .L42
	.loc 1 196 0
	mov r15,r13
.L48:
.LVL66:
.LBB12:
	.loc 1 197 0 is_stmt 1 discriminator 1
	cp r17,r15
	brlo .L51
	.loc 1 198 0 discriminator 2
	mov r20,r16
	mov r22,r14
	mov r24,r15
	std Y+1,r18
	call lcdSetPixel
.LVL67:
	.loc 1 197 0 discriminator 2
	inc r15
.LVL68:
	ldd r18,Y+1
	rjmp .L48
.LVL69:
.L42:
/* epilogue start */
.LBE12:
	.loc 1 199 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL70:
	pop r16
.LVL71:
	pop r15
	pop r14
.LVL72:
	pop r13
.LVL73:
	ret
	.cfi_endproc
.LFE24:
	.size	lcdFillRectangle, .-lcdFillRectangle
	.section	.text.lcdClear,"ax",@progbits
.global	lcdClear
	.type	lcdClear, @function
lcdClear:
.LFB25:
	.loc 1 202 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 203 0
	ldi r24,0
	ldi r25,lo8(4)
	ldi r30,lo8(_screen)
	ldi r31,hi8(_screen)
	movw r26,r30
	movw r18,r24
	0:
	st X+,__zero_reg__
	subi r18,1
	sbci r19,0
	brne 0b
.LVL74:
.LBB15:
.LBB16:
	.loc 1 110 0
	sts _curx,__zero_reg__
	.loc 1 111 0
	sts _cury,__zero_reg__
.LBE16:
.LBE15:
	.loc 1 205 0
	sts _flags,__zero_reg__
	ret
	.cfi_endproc
.LFE25:
	.size	lcdClear, .-lcdClear
	.section	.text.lcdWriteSprite_P,"ax",@progbits
.global	lcdWriteSprite_P
	.type	lcdWriteSprite_P, @function
lcdWriteSprite_P:
.LFB26:
	.loc 1 209 0
	.cfi_startproc
.LVL75:
	push r10
.LCFI44:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI45:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI46:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI47:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI48:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI49:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI50:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI51:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI52:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI53:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r28,r24
	mov r10,r22
	mov r12,r20
	mov r11,r18
.LVL76:
.LBB22:
	.loc 1 211 0
	mov r13,__zero_reg__
.LBE22:
	.loc 1 210 0
	mov r14,__zero_reg__
.LBB30:
.LBB23:
	.loc 1 220 0
	mov r16,r20
	ldi r17,0
.LVL77:
.L54:
.LBE23:
	.loc 1 211 0 discriminator 1
	cp r13,r10
	brne .+2
	rjmp .L53
	.loc 1 211 0 is_stmt 0
	mov r15,__zero_reg__
.L63:
.LVL78:
.LBB29:
	.loc 1 213 0 is_stmt 1 discriminator 1
	cp r15,r12
	brlo .+2
	rjmp .L68
	.loc 1 215 0
	mov r24,r15
	andi r24,lo8(7)
	brne .L55
.LBB24:
	.loc 1 216 0
	movw r24,r28
	adiw r24,1
.LVL79:
	movw r30,r28
/* #APP */
 ;  216 "../driver/lcd.c" 1
	lpm r14, Z
	
 ;  0 "" 2
.LVL80:
/* #NOAPP */
	movw r28,r24
.LVL81:
.L55:
.LBE24:
	.loc 1 218 0
	cpse r11,__zero_reg__
	rjmp .L56
	.loc 1 220 0
	lds r22,_cury
	mov r25,r22
	andi r25,lo8(7)
	add r22,r15
	lds r24,_curx
	cpse r25,__zero_reg__
	rjmp .L57
	.loc 1 220 0 is_stmt 0 discriminator 1
	movw r30,r16
	sub r30,r15
	sbc r31,__zero_reg__
	sbiw r30,8
	brlt .L57
.LVL82:
.LBB25:
.LBB26:
	.loc 1 133 0 is_stmt 1
	lsr r22
	lsr r22
	lsr r22
.LBE26:
.LBE25:
	.loc 1 222 0
	add r24,r13
.LVL83:
.LBB28:
.LBB27:
	.loc 1 133 0
	mov r26,r24
	ldi r27,0
	ldi r31,lo8(-128)
	mul r22,r31
	add r26,r0
	adc r27,r1
	clr __zero_reg__
	subi r26,lo8(-(_screen))
	sbci r27,hi8(-(_screen))
.LVL84:
	.loc 1 134 0
	lds r24,_flags
.LVL85:
	sbrs r24,0
	rjmp .L58
	.loc 1 135 0
	mov r24,r14
	com r24
	st X,r24
	rjmp .L59
.L58:
	.loc 1 137 0
	st X,r14
.L59:
.LBE27:
.LBE28:
	.loc 1 223 0
	ldi r24,lo8(7)
	add r15,r24
.LVL86:
	rjmp .L60
.LVL87:
.L57:
	.loc 1 226 0
	mov r20,r14
	andi r20,lo8(1)
	rjmp .L67
.L56:
	.loc 1 228 0
	ldi r30,lo8(1)
	cpse r11,r30
	rjmp .L60
	.loc 1 230 0
	sbrs r14,0
	rjmp .L60
	.loc 1 231 0
	lds r22,_cury
	add r22,r15
	lds r24,_curx
	ldi r20,lo8(1)
.L67:
	add r24,r13
	call lcdSetPixel
.LVL88:
.L60:
	.loc 1 233 0
	lsr r14
.LVL89:
	.loc 1 213 0
	inc r15
.LVL90:
	rjmp .L63
.L68:
.LBE29:
	.loc 1 211 0
	inc r13
.LVL91:
	rjmp .L54
.LVL92:
.L53:
/* epilogue start */
.LBE30:
	.loc 1 236 0
	pop r29
	pop r28
.LVL93:
	pop r17
	pop r16
	pop r15
	pop r14
.LVL94:
	pop r13
.LVL95:
	pop r12
.LVL96:
	pop r11
.LVL97:
	pop r10
.LVL98:
	ret
	.cfi_endproc
.LFE26:
	.size	lcdWriteSprite_P, .-lcdWriteSprite_P
	.section	.text.lcdWriteGlyph_P,"ax",@progbits
.global	lcdWriteGlyph_P
	.type	lcdWriteGlyph_P, @function
lcdWriteGlyph_P:
.LFB27:
	.loc 1 239 0
	.cfi_startproc
.LVL99:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r22
.LVL100:
.LBB31:
	.loc 1 240 0
	movw r30,r24
/* #APP */
 ;  240 "../driver/lcd.c" 1
	lpm r22, Z
	
 ;  0 "" 2
.LVL101:
/* #NOAPP */
.LBE31:
.LBB32:
	.loc 1 241 0
	adiw r30,1
.LVL102:
/* #APP */
 ;  241 "../driver/lcd.c" 1
	lpm r20, Z
	
 ;  0 "" 2
.LVL103:
/* #NOAPP */
.LBE32:
	.loc 1 242 0
	adiw r24,2
.LVL104:
	jmp lcdWriteSprite_P
.LVL105:
	.cfi_endproc
.LFE27:
	.size	lcdWriteGlyph_P, .-lcdWriteGlyph_P
	.section	.text.lcdWriteChar,"ax",@progbits
.global	lcdWriteChar
	.type	lcdWriteChar, @function
lcdWriteChar:
.LFB28:
	.loc 1 246 0
	.cfi_startproc
.LVL106:
	push r28
.LCFI54:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI55:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
.LCFI56:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI57:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r20,_font+1
	.loc 1 247 0
	cpi r24,lo8(10)
	brne .L71
.LVL107:
.LBB35:
.LBB36:
	.loc 1 249 0
	lds r24,_cury
.LVL108:
	add r24,r20
	sts _cury,r24
	.loc 1 250 0
	sts _curx,__zero_reg__
	rjmp .L70
.LVL109:
.L71:
.LBE36:
.LBE35:
	.loc 1 254 0
	lds r22,_font
	lds r30,_font+2
	lds r31,_font+2+1
	std Y+2,r20
	std Y+1,r22
	icall
.LVL110:
	ldi r18,0
	ldd r20,Y+2
	ldd r22,Y+1
	call lcdWriteSprite_P
.LVL111:
	.loc 1 255 0
	lds r24,_curx
	lds r25,_font
	add r24,r25
	sts _curx,r24
.L70:
/* epilogue start */
	.loc 1 257 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE28:
	.size	lcdWriteChar, .-lcdWriteChar
	.section	.text.lcdWriteString,"ax",@progbits
.global	lcdWriteString
	.type	lcdWriteString, @function
lcdWriteString:
.LFB29:
	.loc 1 260 0
	.cfi_startproc
.LVL112:
	push r28
.LCFI58:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI59:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LVL113:
.L74:
	.loc 1 262 0 discriminator 1
	ld r24,Y+
.LVL114:
	tst r24
	breq .L76
	.loc 1 263 0
	call lcdWriteChar
.LVL115:
	rjmp .L74
.LVL116:
.L76:
/* epilogue start */
	.loc 1 264 0
	pop r29
	pop r28
.LVL117:
	ret
	.cfi_endproc
.LFE29:
	.size	lcdWriteString, .-lcdWriteString
	.section	.text.lcdWriteString_P,"ax",@progbits
.global	lcdWriteString_P
	.type	lcdWriteString_P, @function
lcdWriteString_P:
.LFB30:
	.loc 1 267 0
	.cfi_startproc
.LVL118:
	push r28
.LCFI60:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI61:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 269 0
	sbiw r24,0
	breq .L77
	movw r30,r24
.LVL119:
.L79:
.LBB37:
	.loc 1 270 0 discriminator 1
/* #APP */
 ;  270 "../driver/lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL120:
/* #NOAPP */
	movw r28,r30
	adiw r28,1
.LVL121:
.LBE37:
	tst r24
	breq .L77
	.loc 1 271 0
	call lcdWriteChar
.LVL122:
	movw r30,r28
	rjmp .L79
.LVL123:
.L77:
/* epilogue start */
	.loc 1 272 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE30:
	.size	lcdWriteString_P, .-lcdWriteString_P
	.section	.text.lcdReverse,"ax",@progbits
.global	lcdReverse
	.type	lcdReverse, @function
lcdReverse:
.LFB31:
	.loc 1 275 0
	.cfi_startproc
.LVL124:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,_flags
	.loc 1 276 0
	tst r24
	breq .L85
	.loc 1 277 0
	ori r25,lo8(1)
	rjmp .L87
.L85:
	.loc 1 279 0
	andi r25,lo8(-2)
.L87:
	sts _flags,r25
	ret
	.cfi_endproc
.LFE31:
	.size	lcdReverse, .-lcdReverse
	.section	.text.lcdEnable,"ax",@progbits
.global	lcdEnable
	.type	lcdEnable, @function
lcdEnable:
.LFB33:
	.loc 1 292 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 294 0
	out 0x26,__zero_reg__
	.loc 1 295 0
	ldi r24,lo8(1)
	out 0x15,r24
	.loc 1 296 0
	ldi r30,lo8(110)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ret
	.cfi_endproc
.LFE33:
	.size	lcdEnable, .-lcdEnable
	.section	.text.lcdDisable,"ax",@progbits
.global	lcdDisable
	.type	lcdDisable, @function
lcdDisable:
.LFB34:
	.loc 1 300 0
	.cfi_startproc
	push r28
.LCFI62:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI63:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB38:
	.loc 1 301 0
	call millis
.LVL125:
	movw r28,r24
.LVL126:
.L91:
	.loc 1 301 0 is_stmt 0 discriminator 1
	call millis
.LVL127:
	sub r24,r28
	sbc r25,r29
	cpi r24,110
	cpc r25,__zero_reg__
	brlo .L91
.LBE38:
	.loc 1 302 0 is_stmt 1
	lds r24,110
	andi r24,lo8(-2)
	sts 110,r24
/* epilogue start */
	.loc 1 303 0
	pop r29
	pop r28
.LVL128:
	ret
	.cfi_endproc
.LFE34:
	.size	lcdDisable, .-lcdDisable
	.section	.text.lcdSetContrast,"ax",@progbits
.global	lcdSetContrast
	.type	lcdSetContrast, @function
lcdSetContrast:
.LFB32:
	.loc 1 283 0
	.cfi_startproc
.LVL129:
	push r16
.LCFI64:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI65:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI66:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI67:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	.loc 1 284 0
	ldi r28,lo8(110)
	ldi r29,0
	ld r17,Y
.LVL130:
	.loc 1 285 0
	call lcdDisable
.LVL131:
	.loc 1 286 0
	ldi r24,lo8(-127)
	call sendCommand
.LVL132:
	.loc 1 287 0
	mov r24,r16
	andi r24,lo8(63)
	call sendCommand
.LVL133:
	.loc 1 288 0
	st Y,r17
/* epilogue start */
	.loc 1 289 0
	pop r29
	pop r28
	pop r17
.LVL134:
	pop r16
.LVL135:
	ret
	.cfi_endproc
.LFE32:
	.size	lcdSetContrast, .-lcdSetContrast
	.section	.text.lcdSelectFont,"ax",@progbits
.global	lcdSelectFont
	.type	lcdSelectFont, @function
lcdSelectFont:
.LFB35:
	.loc 1 306 0
	.cfi_startproc
.LVL136:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 307 0
	sbiw r24,0
	brne .L94
	.loc 1 308 0
	ldi r24,lo8(font6x8)
	ldi r25,hi8(font6x8)
.LVL137:
.L94:
	.loc 1 309 0
	ldi r20,lo8(4)
	ldi r21,0
	movw r22,r24
	ldi r24,lo8(_font)
	ldi r25,hi8(_font)
.LVL138:
	jmp memcpy_P
.LVL139:
	.cfi_endproc
.LFE35:
	.size	lcdSelectFont, .-lcdSelectFont
	.section	.text.lcdInit,"ax",@progbits
.global	lcdInit
	.type	lcdInit, @function
lcdInit:
.LFB36:
	.loc 1 328 0
	.cfi_startproc
	push r12
.LCFI68:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI69:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI70:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI71:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 330 0
	sbi 0xa,5
	.loc 1 331 0
	sbi 0xa,6
	.loc 1 332 0
	sbi 0xa,7
	.loc 1 333 0
	sbi 0xa,4
	.loc 1 334 0
	sbi 0xa,1
	.loc 1 337 0
	cbi 0xb,6
.LBB39:
	.loc 1 338 0
	call ticks
.LVL140:
	movw r12,r22
	movw r14,r24
.LVL141:
.L98:
	.loc 1 338 0 is_stmt 0 discriminator 1
	call ticks
.LVL142:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cpi r22,64
	sbci r23,-100
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L98
.LBE39:
	.loc 1 339 0 is_stmt 1
	sbi 0xb,6
.LBB40:
	.loc 1 340 0
	call ticks
.LVL143:
	movw r12,r22
	movw r14,r24
.LVL144:
.L101:
	.loc 1 340 0 is_stmt 0 discriminator 1
	call ticks
.LVL145:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	cpi r22,64
	sbci r23,-100
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L101
	.loc 1 340 0
	ldi r30,lo8(_initSeq)
	ldi r31,hi8(_initSeq)
.L100:
.LVL146:
.LBE40:
.LBB41:
	.loc 1 344 0 is_stmt 1 discriminator 1
/* #APP */
 ;  344 "../driver/lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL147:
/* #NOAPP */
	movw r14,r30
	ldi r25,-1
	sub r14,r25
	sbc r15,r25
.LVL148:
.LBE41:
	tst r24
	breq .L103
	.loc 1 345 0
	call sendCommand
.LVL149:
	movw r30,r14
	rjmp .L100
.LVL150:
.L103:
	.loc 1 347 0
	ldi r24,0
	ldi r25,0
.LVL151:
	call lcdSelectFont
.LVL152:
	.loc 1 353 0
	ldi r24,lo8(2)
	out 0x25,r24
/* epilogue start */
	.loc 1 355 0
	pop r15
	pop r14
.LVL153:
	pop r13
	pop r12
.LVL154:
	.loc 1 354 0
	jmp lcdEnable
.LVL155:
	.cfi_endproc
.LFE36:
	.size	lcdInit, .-lcdInit
	.section	.progmem.data.masks.2148,"a",@progbits
	.type	masks.2148, @object
	.size	masks.2148, 8
masks.2148:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.section	.bss.offset.2134,"aw",@nobits
	.type	offset.2134, @object
	.size	offset.2134, 2
offset.2134:
	.zero	2
	.section	.progmem.data._initSeq,"a",@progbits
	.type	_initSeq, @object
	.size	_initSeq, 12
_initSeq:
	.byte	-94
	.byte	-96
	.byte	-56
	.byte	64
	.byte	-90
	.byte	-92
	.byte	47
	.byte	36
	.byte	-127
	.byte	32
	.byte	-81
	.byte	0
	.section	.bss._font,"aw",@nobits
	.type	_font, @object
	.size	_font, 4
_font:
	.zero	4
	.section	.bss._cury,"aw",@nobits
	.type	_cury, @object
	.size	_cury, 1
_cury:
	.zero	1
	.section	.bss._curx,"aw",@nobits
	.type	_curx, @object
	.size	_curx, 1
_curx:
	.zero	1
	.section	.bss._screen,"aw",@nobits
	.type	_screen, @object
	.size	_screen, 1024
_screen:
	.zero	1024
	.section	.bss._flags,"aw",@nobits
	.type	_flags, @object
	.size	_flags, 1
_flags:
	.zero	1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/hardware.h"
	.file 4 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h"
	.file 5 "../include/fonts.h"
	.file 6 "../include/glyphs.h"
	.file 7 "../include/system.h"
	.file 8 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd59
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF76
	.byte	0x1
	.long	.LASF77
	.long	.LASF78
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x7c
	.long	0x6a
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0x7e
	.long	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.long	0x129
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x12
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x13
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x14
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x15
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x16
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x17
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0x18
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.byte	0x19
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0x1a
	.long	0x134
	.uleb128 0x7
	.long	0x98
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF21
	.uleb128 0x8
	.byte	0x2
	.long	0x146
	.uleb128 0x9
	.long	0x14b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF22
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0xd4
	.long	0x6a
	.uleb128 0x8
	.byte	0x2
	.long	0x163
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.long	0x197
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0x14
	.long	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	0x140
	.long	0x1a7
	.uleb128 0xd
	.long	0x46
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x197
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.byte	0x15
	.long	0x164
	.uleb128 0x5
	.byte	0x2
	.byte	0x6
	.byte	0x10
	.long	0x1eb
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.byte	0x13
	.long	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xe
	.long	0x14b
	.long	0x1fa
	.uleb128 0xf
	.long	0x139
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x6
	.byte	0x14
	.long	0x1b8
	.uleb128 0x10
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.byte	0x1
	.long	0x21d
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0xf5
	.long	0x14b
	.byte	0
	.uleb128 0x12
	.long	.LASF36
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.byte	0x1
	.long	0x241
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0x59
	.long	0x3b
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0x59
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.long	.LASF32
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x281
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x3b
	.long	0x3b
	.long	.LLST0
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF33
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2bb
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.byte	0x49
	.long	0x3b
	.long	.LLST2
	.uleb128 0x18
	.long	.LVL5
	.long	0x241
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.long	0x2d4
	.uleb128 0x13
	.long	.LASF38
	.byte	0x1
	.byte	0x51
	.long	0x3b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST3
	.byte	0x1
	.long	0x373
	.uleb128 0x1b
	.long	.LASF39
	.byte	0x1
	.byte	0x63
	.long	0x5f
	.byte	0x5
	.byte	0x3
	.long	offset.2134
	.uleb128 0x1c
	.long	0x21d
	.long	.LBB7
	.long	.LBE7
	.byte	0x1
	.byte	0x66
	.long	0x350
	.uleb128 0x1d
	.long	0x235
	.long	.LLST4
	.uleb128 0x1d
	.long	0x22a
	.long	.LLST5
	.uleb128 0x1e
	.long	.LVL7
	.long	0x281
	.uleb128 0x1f
	.long	.LVL8
	.long	0x281
	.long	0x340
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.long	.LVL9
	.long	0x281
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2bb
	.long	.LBB9
	.long	.LBE9
	.byte	0x1
	.byte	0x68
	.uleb128 0x1d
	.long	0x2c8
	.long	.LLST6
	.uleb128 0x1e
	.long	.LVL11
	.long	0x241
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.long	0x398
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0x6c
	.long	0x3b
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.byte	0x6c
	.long	0x3b
	.byte	0
	.uleb128 0x21
	.long	0x373
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3c1
	.uleb128 0x1d
	.long	0x381
	.long	.LLST7
	.uleb128 0x1d
	.long	0x38c
	.long	.LLST8
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3f2
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.byte	0x1
	.byte	0x68
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x48e
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.long	.LLST9
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.long	.LLST10
	.uleb128 0x25
	.long	.LASF45
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.long	.LASF46
	.byte	0x1
	.byte	0x7a
	.long	0x49e
	.byte	0x5
	.byte	0x3
	.long	masks.2148
	.uleb128 0x26
	.string	"scr"
	.byte	0x1
	.byte	0x7b
	.long	0x4a3
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x27
	.long	.LASF47
	.byte	0x1
	.byte	0x7c
	.long	0x3b
	.long	.LLST11
	.uleb128 0x16
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x27
	.long	.LASF48
	.byte	0x1
	.byte	0x7c
	.long	0x5f
	.long	.LLST12
	.uleb128 0x27
	.long	.LASF49
	.byte	0x1
	.byte	0x7c
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x14b
	.long	0x49e
	.uleb128 0x28
	.long	0x139
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x48e
	.uleb128 0x8
	.byte	0x2
	.long	0x3b
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST14
	.byte	0x1
	.long	0x56c
	.uleb128 0x24
	.string	"x0"
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST15
	.uleb128 0x24
	.string	"y0"
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST16
	.uleb128 0x24
	.string	"x1"
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST17
	.uleb128 0x24
	.string	"y1"
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST18
	.uleb128 0x17
	.string	"dx"
	.byte	0x1
	.byte	0x9b
	.long	0x29
	.long	.LLST19
	.uleb128 0x17
	.string	"sx"
	.byte	0x1
	.byte	0x9c
	.long	0x29
	.long	.LLST20
	.uleb128 0x17
	.string	"dy"
	.byte	0x1
	.byte	0x9d
	.long	0x29
	.long	.LLST21
	.uleb128 0x17
	.string	"sy"
	.byte	0x1
	.byte	0x9e
	.long	0x29
	.long	.LLST22
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x9f
	.long	0x4d
	.long	.LLST23
	.uleb128 0x17
	.string	"e2"
	.byte	0x1
	.byte	0x9f
	.long	0x4d
	.long	.LLST24
	.uleb128 0x18
	.long	.LVL33
	.long	0x3f2
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST25
	.byte	0x1
	.long	0x657
	.uleb128 0x24
	.string	"x0"
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST26
	.uleb128 0x24
	.string	"y0"
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST27
	.uleb128 0x24
	.string	"x1"
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST28
	.uleb128 0x24
	.string	"y1"
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST29
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST30
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST31
	.uleb128 0x1f
	.long	.LVL49
	.long	0x3f2
	.long	0x5fa
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL50
	.long	0x3f2
	.long	0x61a
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL53
	.long	0x3f2
	.long	0x63a
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LVL54
	.long	0x3f2
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST32
	.byte	0x1
	.long	0x6f9
	.uleb128 0x24
	.string	"x0"
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST33
	.uleb128 0x24
	.string	"y0"
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST34
	.uleb128 0x24
	.string	"x1"
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST35
	.uleb128 0x24
	.string	"y1"
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST36
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST37
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.byte	0xc1
	.long	0x3b
	.long	.LLST38
	.uleb128 0x16
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.long	0x3b
	.long	.LLST39
	.uleb128 0x18
	.long	.LVL67
	.long	0x3f2
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0xc9
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x72f
	.uleb128 0x20
	.long	0x373
	.long	.LBB15
	.long	.LBE15
	.byte	0x1
	.byte	0xcc
	.uleb128 0x2a
	.long	0x38c
	.byte	0
	.uleb128 0x2a
	.long	0x381
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.byte	0x1
	.long	0x763
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.uleb128 0x11
	.string	"b"
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.uleb128 0x2b
	.string	"scr"
	.byte	0x1
	.byte	0x85
	.long	0x4a3
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST40
	.byte	0x1
	.long	0x860
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.byte	0xd0
	.long	0x140
	.long	.LLST41
	.uleb128 0x15
	.long	.LASF24
	.byte	0x1
	.byte	0xd0
	.long	0x3b
	.long	.LLST42
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0xd0
	.long	0x3b
	.long	.LLST43
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0xd0
	.long	0x3b
	.long	.LLST44
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0xd2
	.long	0x3b
	.long	.LLST45
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.long	0x3b
	.long	.LLST46
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0xd5
	.long	0x3b
	.long	.LLST47
	.uleb128 0x2d
	.long	.LBB24
	.long	.LBE24
	.long	0x816
	.uleb128 0x27
	.long	.LASF48
	.byte	0x1
	.byte	0xd8
	.long	0x5f
	.long	.LLST48
	.uleb128 0x27
	.long	.LASF49
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST49
	.byte	0
	.uleb128 0x2e
	.long	0x72f
	.long	.LBB25
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xde
	.long	0x854
	.uleb128 0x1d
	.long	0x74e
	.long	.LLST50
	.uleb128 0x1d
	.long	0x745
	.long	.LLST51
	.uleb128 0x1d
	.long	0x73c
	.long	.LLST52
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.long	0x757
	.long	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL88
	.long	0x3f2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x92f
	.uleb128 0x15
	.long	.LASF28
	.byte	0x1
	.byte	0xee
	.long	0x92f
	.long	.LLST54
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0xee
	.long	0x3b
	.long	.LLST55
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.byte	0xf0
	.long	0x3b
	.long	.LLST56
	.uleb128 0x27
	.long	.LASF25
	.byte	0x1
	.byte	0xf1
	.long	0x3b
	.long	.LLST57
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.long	0x8e2
	.uleb128 0x27
	.long	.LASF48
	.byte	0x1
	.byte	0xf0
	.long	0x5f
	.long	.LLST58
	.uleb128 0x27
	.long	.LASF49
	.byte	0x1
	.byte	0xf0
	.long	0x3b
	.long	.LLST56
	.byte	0
	.uleb128 0x2d
	.long	.LBB32
	.long	.LBE32
	.long	0x90e
	.uleb128 0x27
	.long	.LASF48
	.byte	0x1
	.byte	0xf1
	.long	0x5f
	.long	.LLST60
	.uleb128 0x27
	.long	.LASF49
	.byte	0x1
	.byte	0xf1
	.long	0x3b
	.long	.LLST57
	.byte	0
	.uleb128 0x30
	.long	.LVL105
	.byte	0x1
	.long	0x763
	.uleb128 0x19
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.byte	0x1
	.byte	0x62
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x935
	.uleb128 0x9
	.long	0x1fa
	.uleb128 0x31
	.long	0x205
	.long	.LFB28
	.long	.LFE28
	.long	.LLST62
	.byte	0x1
	.long	0x980
	.uleb128 0x1d
	.long	0x213
	.long	.LLST63
	.uleb128 0x2d
	.long	.LBB35
	.long	.LBE35
	.long	0x970
	.uleb128 0x1d
	.long	0x213
	.long	.LLST64
	.byte	0
	.uleb128 0x18
	.long	.LVL111
	.long	0x763
	.uleb128 0x19
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x103
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST65
	.byte	0x1
	.long	0x9c1
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.word	0x103
	.long	0x9c1
	.long	.LLST66
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.word	0x105
	.long	0x14b
	.long	.LLST67
	.uleb128 0x1e
	.long	.LVL115
	.long	0x205
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x14b
	.uleb128 0x32
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.word	0x10a
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST68
	.byte	0x1
	.long	0xa36
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.word	0x10a
	.long	0x140
	.long	.LLST69
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.word	0x10c
	.long	0x14b
	.long	.LLST70
	.uleb128 0x2d
	.long	.LBB37
	.long	.LBE37
	.long	0xa2c
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.word	0x10e
	.long	0x5f
	.long	.LLST71
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.word	0x10e
	.long	0x3b
	.long	.LLST70
	.byte	0
	.uleb128 0x1e
	.long	.LVL122
	.long	0x205
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.word	0x112
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa60
	.uleb128 0x37
	.long	.LASF61
	.byte	0x1
	.word	0x112
	.long	0x3b
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.word	0x123
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.word	0x12b
	.long	.LFB34
	.long	.LFE34
	.long	.LLST73
	.byte	0x1
	.long	0xabc
	.uleb128 0x16
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x34
	.string	"_m"
	.byte	0x1
	.word	0x12d
	.long	0x5f
	.long	.LLST74
	.uleb128 0x1e
	.long	.LVL125
	.long	0xd15
	.uleb128 0x1e
	.long	.LVL127
	.long	0xd15
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.word	0x11a
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST75
	.byte	0x1
	.long	0xb26
	.uleb128 0x3a
	.long	.LASF65
	.byte	0x1
	.word	0x11a
	.long	0x3b
	.long	.LLST76
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.word	0x11c
	.long	0x3b
	.long	.LLST77
	.uleb128 0x1e
	.long	.LVL131
	.long	0xa76
	.uleb128 0x1f
	.long	.LVL132
	.long	0x281
	.long	0xb12
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.byte	0
	.uleb128 0x18
	.long	.LVL133
	.long	0x281
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x80
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.word	0x131
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xb75
	.uleb128 0x3a
	.long	.LASF67
	.byte	0x1
	.word	0x131
	.long	0xb75
	.long	.LLST78
	.uleb128 0x30
	.long	.LVL139
	.byte	0x1
	.long	0xd28
	.uleb128 0x19
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_font
	.uleb128 0x19
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xb7b
	.uleb128 0x9
	.long	0x1ad
	.uleb128 0x39
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.word	0x147
	.long	.LFB36
	.long	.LFE36
	.long	.LLST79
	.byte	0x1
	.long	0xc70
	.uleb128 0x34
	.string	"ptr"
	.byte	0x1
	.word	0x156
	.long	0xc70
	.long	.LLST80
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.word	0x157
	.long	0x3b
	.long	.LLST81
	.uleb128 0x2d
	.long	.LBB39
	.long	.LBE39
	.long	0xbe7
	.uleb128 0x34
	.string	"_m"
	.byte	0x1
	.word	0x152
	.long	0x78
	.long	.LLST82
	.uleb128 0x1e
	.long	.LVL140
	.long	0xd4d
	.uleb128 0x1e
	.long	.LVL142
	.long	0xd4d
	.byte	0
	.uleb128 0x2d
	.long	.LBB40
	.long	.LBE40
	.long	0xc16
	.uleb128 0x34
	.string	"_m"
	.byte	0x1
	.word	0x154
	.long	0x78
	.long	.LLST83
	.uleb128 0x1e
	.long	.LVL143
	.long	0xd4d
	.uleb128 0x1e
	.long	.LVL145
	.long	0xd4d
	.byte	0
	.uleb128 0x2d
	.long	.LBB41
	.long	.LBE41
	.long	0xc44
	.uleb128 0x35
	.long	.LASF48
	.byte	0x1
	.word	0x158
	.long	0x5f
	.long	.LLST84
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.word	0x158
	.long	0x3b
	.long	.LLST81
	.byte	0
	.uleb128 0x1e
	.long	.LVL149
	.long	0x281
	.uleb128 0x1f
	.long	.LVL152
	.long	0xb26
	.long	0xc65
	.uleb128 0x19
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.long	.LVL155
	.byte	0x1
	.long	0xa60
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xc76
	.uleb128 0x9
	.long	0x46
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_flags
	.uleb128 0xe
	.long	0x3b
	.long	0xc9d
	.uleb128 0x3c
	.long	0x139
	.word	0x3ff
	.byte	0
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.byte	0x37
	.long	0xc8c
	.byte	0x5
	.byte	0x3
	.long	_screen
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_curx
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_cury
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.byte	0x39
	.long	0x1ad
	.byte	0x5
	.byte	0x3
	.long	_font
	.uleb128 0xe
	.long	0x46
	.long	0xcf1
	.uleb128 0x28
	.long	0x139
	.byte	0xb
	.byte	0
	.uleb128 0x3d
	.long	.LASF74
	.byte	0x1
	.word	0x138
	.long	0xd03
	.byte	0x5
	.byte	0x3
	.long	_initSeq
	.uleb128 0x9
	.long	0xce1
	.uleb128 0x3e
	.long	.LASF80
	.byte	0x5
	.byte	0x19
	.long	0xb7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.long	.LASF75
	.byte	0x7
	.byte	0x17
	.long	0x5f
	.byte	0x1
	.long	0xd28
	.uleb128 0x40
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF81
	.byte	0x8
	.word	0x474
	.byte	0x1
	.long	0xd4b
	.byte	0x1
	.long	0xd4b
	.uleb128 0xd
	.long	0xd4b
	.uleb128 0xd
	.long	0x15d
	.uleb128 0xd
	.long	0x152
	.byte	0
	.uleb128 0x42
	.byte	0x2
	.uleb128 0x43
	.byte	0x1
	.long	.LASF82
	.byte	0x7
	.byte	0x15
	.long	0x78
	.byte	0x1
	.uleb128 0x40
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x69
	.long	.LVL2
	.long	.LVL3
	.word	0x3
	.byte	0x89
	.sleb128 -1
	.byte	0x9f
	.long	.LVL3
	.long	.LFE12
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5-1
	.word	0x1
	.byte	0x68
	.long	.LVL5-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB16
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL9
	.word	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL11-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	.LVL14
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x66
	.long	.LVL13
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x6a
	.long	.LVL18
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL20
	.word	0x1
	.byte	0x66
	.long	.LVL20
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL21
	.long	.LVL22
	.word	0x1
	.byte	0x6e
	.long	.LVL22
	.long	.LVL23
	.word	0x4
	.byte	0x8e
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST12:
	.long	.LVL19
	.long	.LVL20
	.word	0xe
	.byte	0x86
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.long	masks.2148
	.byte	0x22
	.byte	0x9f
	.long	.LVL20
	.long	.LFE19
	.word	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x37
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.long	masks.2148
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LFB22
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI28
	.long	.LFE22
	.word	0x2
	.byte	0x8c
	.sleb128 16
	.long	0
	.long	0
.LLST15:
	.long	.LVL26
	.long	.LVL32
	.word	0x1
	.byte	0x68
	.long	.LVL32
	.long	.LVL42
	.word	0x1
	.byte	0x5c
	.long	0
	.long	0
.LLST16:
	.long	.LVL26
	.long	.LVL32
	.word	0x1
	.byte	0x66
	.long	.LVL32
	.long	.LVL41
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST17:
	.long	.LVL26
	.long	.LVL32
	.word	0x1
	.byte	0x64
	.long	.LVL32
	.long	.LVL43
	.word	0x1
	.byte	0x5b
	.long	.LVL43
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL26
	.long	.LVL32
	.word	0x1
	.byte	0x62
	.long	.LVL32
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL27
	.long	.LVL29
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST20:
	.long	.LVL28
	.long	.LVL32
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST21:
	.long	.LVL30
	.long	.LVL40
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST22:
	.long	.LVL31
	.long	.LVL32
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST23:
	.long	.LVL32
	.long	.LVL44
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL34
	.long	.LVL39
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LFB23
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI34
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST26:
	.long	.LVL45
	.long	.LVL46
	.word	0x1
	.byte	0x68
	.long	.LVL46
	.long	.LVL56
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST27:
	.long	.LVL45
	.long	.LVL47
	.word	0x1
	.byte	0x66
	.long	.LVL47
	.long	.LVL52
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST28:
	.long	.LVL45
	.long	.LVL46
	.word	0x1
	.byte	0x64
	.long	.LVL46
	.long	.LVL58
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST29:
	.long	.LVL45
	.long	.LVL47
	.word	0x1
	.byte	0x62
	.long	.LVL47
	.long	.LVL60
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST30:
	.long	.LVL45
	.long	.LVL59
	.word	0x1
	.byte	0x60
	.long	.LVL59
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL47
	.long	.LVL48
	.word	0x1
	.byte	0x6d
	.long	.LVL48
	.long	.LVL52
	.word	0x1
	.byte	0x5e
	.long	.LVL52
	.long	.LVL57
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST32:
	.long	.LFB24
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI43
	.long	.LFE24
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST33:
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x68
	.long	.LVL62
	.long	.LVL73
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST34:
	.long	.LVL61
	.long	.LVL63
	.word	0x1
	.byte	0x66
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST35:
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x64
	.long	.LVL62
	.long	.LVL70
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST36:
	.long	.LVL61
	.long	.LVL63
	.word	0x1
	.byte	0x62
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST37:
	.long	.LVL61
	.long	.LVL71
	.word	0x1
	.byte	0x60
	.long	.LVL71
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL63
	.long	.LVL72
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST39:
	.long	.LVL64
	.long	.LVL65
	.word	0x1
	.byte	0x5f
	.long	.LVL66
	.long	.LVL69
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST40:
	.long	.LFB26
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI53
	.long	.LFE26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST41:
	.long	.LVL75
	.long	.LVL77
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL79
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LVL81
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81
	.long	.LVL93
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LVL75
	.long	.LVL77
	.word	0x1
	.byte	0x66
	.long	.LVL77
	.long	.LVL98
	.word	0x1
	.byte	0x5a
	.long	.LVL98
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL75
	.long	.LVL77
	.word	0x1
	.byte	0x64
	.long	.LVL77
	.long	.LVL96
	.word	0x1
	.byte	0x5c
	.long	.LVL96
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL75
	.long	.LVL77
	.word	0x1
	.byte	0x62
	.long	.LVL77
	.long	.LVL97
	.word	0x1
	.byte	0x5b
	.long	.LVL97
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL94
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST46:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL95
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST47:
	.long	.LVL78
	.long	.LVL92
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST48:
	.long	.LVL79
	.long	.LVL81
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST49:
	.long	.LVL80
	.long	.LVL81
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST50:
	.long	.LVL82
	.long	.LVL87
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST51:
	.long	.LVL82
	.long	.LVL86
	.word	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.long	_cury
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.word	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.long	_cury
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x37
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL82
	.long	.LVL83
	.word	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL83
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LVL87
	.word	0xb
	.byte	0x7d
	.sleb128 0
	.byte	0x3
	.long	_curx
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL84
	.long	.LVL87
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST54:
	.long	.LVL99
	.long	.LVL104
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL104
	.long	.LVL105-1
	.word	0x3
	.byte	0x88
	.sleb128 -2
	.byte	0x9f
	.long	.LVL105-1
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL99
	.long	.LVL101
	.word	0x1
	.byte	0x66
	.long	.LVL101
	.long	.LVL105-1
	.word	0x1
	.byte	0x62
	.long	.LVL105-1
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL101
	.long	.LVL105-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST57:
	.long	.LVL103
	.long	.LVL105-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST58:
	.long	.LVL100
	.long	.LVL104
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL104
	.long	.LVL105-1
	.word	0x3
	.byte	0x88
	.sleb128 -2
	.byte	0x9f
	.long	.LVL105-1
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL101
	.long	.LVL102
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL102
	.long	.LVL105-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105-1
	.long	.LFE27
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LFB28
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI57
	.long	.LFE28
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST63:
	.long	.LVL106
	.long	.LVL108
	.word	0x1
	.byte	0x68
	.long	.LVL108
	.long	.LVL109
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL109
	.long	.LVL110-1
	.word	0x1
	.byte	0x68
	.long	.LVL110-1
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL107
	.long	.LVL109
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LFB29
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI59
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST66:
	.long	.LVL112
	.long	.LVL113
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL113
	.long	.LVL114
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL114
	.long	.LVL117
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST67:
	.long	.LVL114
	.long	.LVL115-1
	.word	0x1
	.byte	0x68
	.long	.LVL116
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST68:
	.long	.LFB30
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI61
	.long	.LFE30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST69:
	.long	.LVL118
	.long	.LVL119
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL119
	.long	.LVL121
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL121
	.long	.LVL123
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST70:
	.long	.LVL120
	.long	.LVL122-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST71:
	.long	.LVL119
	.long	.LVL122-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL122-1
	.long	.LVL123
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LFB34
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI63
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST74:
	.long	.LVL126
	.long	.LVL128
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST75:
	.long	.LFB32
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI67
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST76:
	.long	.LVL129
	.long	.LVL131-1
	.word	0x1
	.byte	0x68
	.long	.LVL131-1
	.long	.LVL135
	.word	0x1
	.byte	0x60
	.long	.LVL135
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST77:
	.long	.LVL130
	.long	.LVL134
	.word	0x1
	.byte	0x61
	.long	.LVL134
	.long	.LFE32
	.word	0x2
	.byte	0x8
	.byte	0x6e
	.long	0
	.long	0
.LLST78:
	.long	.LVL136
	.long	.LVL137
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL137
	.long	.LVL138
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL138
	.long	.LVL139-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST79:
	.long	.LFB36
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI71
	.long	.LFE36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST80:
	.long	.LVL146
	.long	.LVL148
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL148
	.long	.LVL153
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST81:
	.long	.LVL147
	.long	.LVL149-1
	.word	0x1
	.byte	0x68
	.long	.LVL150
	.long	.LVL151
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST82:
	.long	.LVL141
	.long	.LVL144
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST83:
	.long	.LVL144
	.long	.LVL154
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST84:
	.long	.LVL146
	.long	.LVL149-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL149-1
	.long	.LVL150
	.word	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.long	.LVL150
	.long	.LVL152-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL152-1
	.long	.LVL153
	.word	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xbc
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB22
	.long	.LBE22
	.long	.LBB30
	.long	.LBE30
	.long	0
	.long	0
	.long	.LBB23
	.long	.LBE23
	.long	.LBB29
	.long	.LBE29
	.long	0
	.long	0
	.long	.LBB25
	.long	.LBE25
	.long	.LBB28
	.long	.LBE28
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB32
	.long	.LFE32
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"lcdEnable"
.LASF23:
	.string	"size_t"
.LASF48:
	.string	"__addr16"
.LASF12:
	.string	"bit0"
.LASF13:
	.string	"bit1"
.LASF14:
	.string	"bit2"
.LASF15:
	.string	"bit3"
.LASF16:
	.string	"bit4"
.LASF17:
	.string	"bit5"
.LASF18:
	.string	"bit6"
.LASF19:
	.string	"bit7"
.LASF11:
	.string	"long long unsigned int"
.LASF44:
	.string	"lcdSetPixel"
.LASF77:
	.string	"../driver/lcd.c"
.LASF43:
	.string	"lcdXY"
.LASF50:
	.string	"lcdLine"
.LASF4:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF32:
	.string	"sendByte"
.LASF7:
	.string	"long int"
.LASF51:
	.string	"lcdRectangle"
.LASF69:
	.string	"_flags"
.LASF5:
	.string	"uint16_t"
.LASF74:
	.string	"_initSeq"
.LASF49:
	.string	"__result"
.LASF34:
	.string	"byte"
.LASF30:
	.string	"line"
.LASF37:
	.string	"sendData"
.LASF75:
	.string	"millis"
.LASF71:
	.string	"_curx"
.LASF59:
	.string	"lcdWriteString_P"
.LASF55:
	.string	"sprite"
.LASF6:
	.string	"unsigned int"
.LASF57:
	.string	"lcdWriteGlyph_P"
.LASF35:
	.string	"command"
.LASF41:
	.string	"lcdSetPos"
.LASF72:
	.string	"_cury"
.LASF40:
	.string	"lcdWriteChar"
.LASF9:
	.string	"long unsigned int"
.LASF28:
	.string	"glyph"
.LASF38:
	.string	"data"
.LASF81:
	.string	"memcpy_P"
.LASF20:
	.string	"_bitreg8"
.LASF66:
	.string	"lcdSelectFont"
.LASF21:
	.string	"sizetype"
.LASF61:
	.string	"reversed"
.LASF82:
	.string	"ticks"
.LASF73:
	.string	"_font"
.LASF33:
	.string	"sendCommand"
.LASF62:
	.string	"lcdClear"
.LASF70:
	.string	"_screen"
.LASF63:
	.string	"lcdDisable"
.LASF78:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF76:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF27:
	.string	"fontdescriptor_t"
.LASF58:
	.string	"lcdWriteString"
.LASF8:
	.string	"uint32_t"
.LASF29:
	.string	"glyph_t"
.LASF80:
	.string	"font6x8"
.LASF52:
	.string	"lcdFillRectangle"
.LASF45:
	.string	"color"
.LASF22:
	.string	"char"
.LASF56:
	.string	"mode"
.LASF53:
	.string	"lcdSetByte"
.LASF46:
	.string	"masks"
.LASF60:
	.string	"lcdReverse"
.LASF39:
	.string	"offset"
.LASF31:
	.string	"column"
.LASF3:
	.string	"unsigned char"
.LASF64:
	.string	"lcdSetContrast"
.LASF0:
	.string	"int8_t"
.LASF65:
	.string	"contrast"
.LASF47:
	.string	"mask"
.LASF67:
	.string	"font"
.LASF24:
	.string	"sizeX"
.LASF25:
	.string	"sizeY"
.LASF26:
	.string	"selector"
.LASF1:
	.string	"uint8_t"
.LASF68:
	.string	"lcdInit"
.LASF42:
	.string	"__vector_18"
.LASF54:
	.string	"lcdWriteSprite_P"
.LASF36:
	.string	"setPos"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
