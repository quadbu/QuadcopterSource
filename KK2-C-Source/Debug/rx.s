	.file	"rx.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.lowtext,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
.LFB8:
	.file 1 "../driver/rx.c"
	.loc 1 35 0
	.cfi_startproc
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
	push r30
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 37 0
	call ticks
.LVL0:
	.loc 1 38 0
/* #APP */
 ;  38 "../driver/rx.c" 1
	sei
 ;  0 "" 2
	.loc 1 40 0
/* #NOAPP */
	sbis 0x9,3
	rjmp .L2
	.loc 1 41 0
	sts _start.1912,r22
	sts _start.1912+1,r23
	sts _start.1912+2,r24
	sts _start.1912+3,r25
	rjmp .L1
.L2:
	.loc 1 44 0
	lds r18,_start.1912
	lds r19,_start.1912+1
	sub r22,r18
	sbc r23,r19
.LVL1:
	sts RX_isr+1,r23
	sts RX_isr,r22
	.loc 1 45 0
	lds r24,_RX_good
	ori r24,lo8(1)
	sts _RX_good,r24
.L1:
/* epilogue start */
	.loc 1 47 0
	pop r31
	pop r30
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
.LFE8:
	.size	__vector_2, .-__vector_2
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB9:
	.loc 1 52 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 54 0
	call ticks
.LVL2:
	.loc 1 55 0
/* #APP */
 ;  55 "../driver/rx.c" 1
	sei
 ;  0 "" 2
	.loc 1 57 0
/* #NOAPP */
	sbis 0x9,2
	rjmp .L6
	.loc 1 58 0
	sts _start.1919,r22
	sts _start.1919+1,r23
	sts _start.1919+2,r24
	sts _start.1919+3,r25
	rjmp .L5
.L6:
	.loc 1 61 0
	lds r18,_start.1919
	lds r19,_start.1919+1
	sub r22,r18
	sbc r23,r19
.LVL3:
	sts RX_isr+2+1,r23
	sts RX_isr+2,r22
	.loc 1 62 0
	lds r24,_RX_good
	ori r24,lo8(2)
	sts _RX_good,r24
.L5:
/* epilogue start */
	.loc 1 64 0
	pop r31
	pop r30
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
.LFE9:
	.size	__vector_1, .-__vector_1
.global	__vector_3
	.type	__vector_3, @function
__vector_3:
.LFB10:
	.loc 1 69 0
	.cfi_startproc
	push r1
.LCFI28:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r12
.LCFI30:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI31:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI32:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI34:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI35:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r18
.LCFI36:
	.cfi_def_cfa_offset 11
	.cfi_offset 18, -10
	push r19
.LCFI37:
	.cfi_def_cfa_offset 12
	.cfi_offset 19, -11
	push r20
.LCFI38:
	.cfi_def_cfa_offset 13
	.cfi_offset 20, -12
	push r21
.LCFI39:
	.cfi_def_cfa_offset 14
	.cfi_offset 21, -13
	push r22
.LCFI40:
	.cfi_def_cfa_offset 15
	.cfi_offset 22, -14
	push r23
.LCFI41:
	.cfi_def_cfa_offset 16
	.cfi_offset 23, -15
	push r24
.LCFI42:
	.cfi_def_cfa_offset 17
	.cfi_offset 24, -16
	push r25
.LCFI43:
	.cfi_def_cfa_offset 18
	.cfi_offset 25, -17
	push r26
.LCFI44:
	.cfi_def_cfa_offset 19
	.cfi_offset 26, -18
	push r27
.LCFI45:
	.cfi_def_cfa_offset 20
	.cfi_offset 27, -19
	push r30
.LCFI46:
	.cfi_def_cfa_offset 21
	.cfi_offset 30, -20
	push r31
.LCFI47:
	.cfi_def_cfa_offset 22
	.cfi_offset 31, -21
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 21 */
.L__stack_usage = 21
	.loc 1 74 0
	call ticks
.LVL4:
	.loc 1 75 0
/* #APP */
 ;  75 "../driver/rx.c" 1
	sei
 ;  0 "" 2
	.loc 1 77 0
/* #NOAPP */
	lds r18,_mode
	tst r18
	breq .L9
	.loc 1 79 0
	lds r16,_start.1926
	lds r17,_start.1926+1
	lds r18,_start.1926+2
	lds r19,_start.1926+3
	movw r12,r22
	movw r14,r24
	sub r12,r16
	sbc r13,r17
	sbc r14,r18
	sbc r15,r19
	ldi r20,97
	cp r12,r20
	ldi r20,-22
	cpc r13,r20
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brlo .L10
	.loc 1 81 0
	sts _index.1927,__zero_reg__
	.loc 1 82 0
	ldi r18,lo8(1)
	sts _mask.1928,r18
	rjmp .L14
.L10:
	.loc 1 84 0
	lds r20,_index.1927
	cpi r20,lo8(8)
	brsh .L14
	.loc 1 86 0
	mov r30,r20
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(RX_isr))
	sbci r31,hi8(-(RX_isr))
	movw r18,r22
	sub r18,r16
	sbc r19,r17
	std Z+1,r19
	st Z,r18
	.loc 1 87 0
	subi r20,lo8(-(1))
	sts _index.1927,r20
	.loc 1 88 0
	lds r19,_mask.1928
	lds r18,_RX_good
	or r18,r19
	sts _RX_good,r18
	.loc 1 89 0
	lsl r19
	sts _mask.1928,r19
	rjmp .L14
.L9:
	.loc 1 95 0
	sbis 0x3,2
	rjmp .L13
.L14:
	.loc 1 96 0
	sts _start.1926,r22
	sts _start.1926+1,r23
	sts _start.1926+2,r24
	sts _start.1926+3,r25
	rjmp .L8
.L13:
	.loc 1 99 0
	lds r18,_start.1926
	lds r19,_start.1926+1
	sub r22,r18
	sbc r23,r19
.LVL5:
	sts RX_isr+4+1,r23
	sts RX_isr+4,r22
	.loc 1 100 0
	lds r24,_RX_good
	ori r24,lo8(4)
	sts _RX_good,r24
.L8:
/* epilogue start */
	.loc 1 103 0
	pop r31
	pop r30
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
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE10:
	.size	__vector_3, .-__vector_3
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
.LFB11:
	.loc 1 108 0
	.cfi_startproc
	push r1
.LCFI48:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI49:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI50:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI51:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI52:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI53:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI54:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI55:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI56:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI57:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI58:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI59:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI60:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI61:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 110 0
	call ticks
.LVL6:
	.loc 1 111 0
/* #APP */
 ;  111 "../driver/rx.c" 1
	sei
 ;  0 "" 2
	.loc 1 113 0
/* #NOAPP */
	sbis 0x9,0
	rjmp .L16
	.loc 1 114 0
	sts _start.1935+1,r23
	sts _start.1935,r22
	rjmp .L15
.L16:
	.loc 1 117 0
	lds r18,_start.1935
	lds r19,_start.1935+1
	sub r22,r18
	sbc r23,r19
.LVL7:
	sts RX_isr+6+1,r23
	sts RX_isr+6,r22
	.loc 1 118 0
	lds r24,_RX_good
	ori r24,lo8(8)
	sts _RX_good,r24
.L15:
/* epilogue start */
	.loc 1 120 0
	pop r31
	pop r30
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
.LFE11:
	.size	__vector_7, .-__vector_7
.global	__vector_5
	.type	__vector_5, @function
__vector_5:
.LFB12:
	.loc 1 125 0
	.cfi_startproc
	push r1
.LCFI62:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI63:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI64:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI65:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI66:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI67:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI68:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI69:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI70:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI71:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI72:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI73:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI74:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI75:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 127 0
	call ticks
.LVL8:
	.loc 1 128 0
/* #APP */
 ;  128 "../driver/rx.c" 1
	sei
 ;  0 "" 2
	.loc 1 130 0
/* #NOAPP */
	sbis 0x3,0
	rjmp .L19
	.loc 1 131 0
	sts _start.1942+1,r23
	sts _start.1942,r22
	rjmp .L18
.L19:
	.loc 1 134 0
	lds r18,_start.1942
	lds r19,_start.1942+1
	sub r22,r18
	sbc r23,r19
.LVL9:
	sts RX_isr+8+1,r23
	sts RX_isr+8,r22
	.loc 1 135 0
	lds r24,_RX_good
	ori r24,lo8(16)
	sts _RX_good,r24
.L18:
/* epilogue start */
	.loc 1 137 0
	pop r31
	pop r30
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
.LFE12:
	.size	__vector_5, .-__vector_5
	.section	.text.rxInit,"ax",@progbits
.global	rxInit
	.type	rxInit, @function
rxInit:
.LFB13:
	.loc 1 140 0
	.cfi_startproc
.LVL10:
	push r28
.LCFI76:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI77:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
.LBB14:
	.loc 1 141 0
	in r29,__SREG__
.LVL11:
.LBB15:
.LBB16:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL12:
/* #NOAPP */
.LBE16:
.LBE15:
	.loc 1 143 0
	tst r24
	breq .L22
	.loc 1 145 0
	call serialInit
.LVL13:
	.loc 1 147 0
	cbi 0xa,3
	.loc 1 150 0
	ldi r24,lo8(32)
	sts 105,r24
	.loc 1 151 0
	ldi r24,lo8(7)
	out 0x1c,r24
	.loc 1 152 0
	ldi r24,lo8(4)
	out 0x1d,r24
	.loc 1 153 0
	sts 104,__zero_reg__
	.loc 1 154 0
	ldi r24,lo8(10)
	out 0x1b,r24
	rjmp .L23
.LVL14:
.L22:
	.loc 1 158 0
	call serialTerminate
.LVL15:
	.loc 1 160 0
	cbi 0xa,3
	.loc 1 161 0
	cbi 0xa,2
	.loc 1 162 0
	cbi 0xa,0
	.loc 1 163 0
	cbi 0x4,2
	.loc 1 164 0
	cbi 0x4,0
	.loc 1 167 0
	ldi r24,lo8(21)
	sts 105,r24
	.loc 1 168 0
	ldi r24,lo8(7)
	out 0x1c,r24
	.loc 1 169 0
	out 0x1d,r24
	.loc 1 170 0
	ldi r24,lo8(1)
	sts 108,r24
	.loc 1 171 0
	sts 115,r24
	.loc 1 172 0
	ldi r24,lo8(10)
	out 0x1b,r24
	.loc 1 173 0
	lds r25,104
	ori r25,lo8(10)
	sts 104,r25
.L23:
	.loc 1 175 0
	sts _mode,r28
	.loc 1 176 0
	sts RX_good,__zero_reg__
.LVL16:
.LBB17:
.LBB18:
	.loc 2 70 0
	out __SREG__,r29
	.loc 2 71 0
/* epilogue start */
.LBE18:
.LBE17:
.LBE14:
	.loc 1 178 0
	pop r29
.LVL17:
	pop r28
.LVL18:
	ret
	.cfi_endproc
.LFE13:
	.size	rxInit, .-rxInit
	.section	.text.rxRead,"ax",@progbits
.global	rxRead
	.type	rxRead, @function
rxRead:
.LFB14:
	.loc 1 181 0
	.cfi_startproc
	push r14
.LCFI78:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI79:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI80:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI81:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI82:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI83:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LBB19:
	.loc 1 185 0
	call millis
.LVL19:
	lds r22,_RX_good
	lds r23,RX_good
	lds r18,_t185.1956
	lds r19,_t185.1956+1
.L25:
	.loc 1 185 0 is_stmt 0 discriminator 1
	movw r20,r24
	sub r20,r18
	sbc r21,r19
	cpi r20,50
	cpc r21,__zero_reg__
	brlo .L34
	.loc 1 187 0 is_stmt 1 discriminator 2
	mov r23,r22
	.loc 1 185 0 discriminator 2
	movw r18,r24
	.loc 1 188 0 discriminator 2
	ldi r22,0
	rjmp .L25
.L34:
	sts _RX_good,r22
	sts RX_good,r23
	sts _t185.1956+1,r19
	sts _t185.1956,r18
	ldi r16,lo8(Config+17)
	ldi r17,hi8(Config+17)
	.loc 1 185 0
	movw r28,r16
	ldi r18,0
	ldi r19,0
.LBE19:
.LBB20:
	.loc 1 201 0
	ldi r22,lo8(20)
	mov r14,r22
	mov r15,__zero_reg__
.LVL20:
.L30:
	mov r30,r28
	sub r30,r16
.LVL21:
	.loc 1 193 0
	lds r24,_mode
	tst r24
	breq .L27
	.loc 1 196 0
	ld r30,Y
.LVL22:
	subi r30,lo8(-(-1))
.LVL23:
.L27:
.LBB21:
.LBB22:
.LBB23:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL24:
/* #NOAPP */
.LBE23:
.LBE22:
	.loc 1 199 0
	ldi r31,0
	lsl r30
	rol r31
.LVL25:
	subi r30,lo8(-(RX_isr))
	sbci r31,hi8(-(RX_isr))
	ld r24,Z
	ldd r25,Z+1
.LVL26:
.LBB24:
.LBB25:
	.loc 2 56 0
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	sei
 ;  0 "" 2
	.loc 2 57 0
/* #NOAPP */
.LBE25:
.LBE24:
.LBE21:
	.loc 1 201 0
	movw r22,r14
	call __udivmodhi4
.LVL27:
	.loc 1 207 0
	movw r20,r22
	subi r20,-124
	sbci r21,3
	cpi r20,-79
	sbci r21,4
	brsh .L28
	movw r30,r18
	subi r30,lo8(-(RX_raw))
	sbci r31,hi8(-(RX_raw))
	.loc 1 209 0
	std Z+1,r23
	st Z,r22
	movw r30,r18
	subi r30,lo8(-(Config))
	sbci r31,hi8(-(Config))
	.loc 1 210 0
	ldd r20,Z+1
	ldd r21,Z+2
	movw r24,r22
	sub r24,r20
	sbc r25,r21
	asr r25
	ror r24
	asr r25
	ror r24
	movw r30,r18
	subi r30,lo8(-(RX))
	sbci r31,hi8(-(RX))
	std Z+1,r25
	st Z,r24
.L28:
.LVL28:
	subi r18,-2
	sbci r19,-1
	adiw r28,1
.LVL29:
	.loc 1 191 0
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L30
.LBE20:
	.loc 1 215 0
	lds r24,RX+6
	lds r25,RX+6+1
	asr r25
	ror r24
	sts RX+6+1,r25
	sts RX+6,r24
/* epilogue start */
	.loc 1 216 0
	pop r29
	pop r28
.LVL30:
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE14:
	.size	rxRead, .-rxRead
	.section	.text.rxCalibrate,"ax",@progbits
.global	rxCalibrate
	.type	rxCalibrate, @function
rxCalibrate:
.LFB15:
	.loc 1 219 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 220 0
	call rxRead
.LVL31:
.LBB26:
	.loc 1 225 0
	lds r18,RX_raw+6
	lds r19,RX_raw+6+1
	subi r18,26
	sbci r19,4
	ldi r30,lo8(RX_raw)
	ldi r31,hi8(RX_raw)
	.loc 1 221 0
	ldi r20,0
.LVL32:
.L40:
	.loc 1 223 0
	cpi r20,lo8(3)
	brne .L36
	.loc 1 225 0
	cpi r18,101
	cpc r19,__zero_reg__
	brlo .L38
	rjmp .L42
.L36:
	.loc 1 228 0
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L38
	.loc 1 228 0 is_stmt 0 discriminator 1
	subi r24,-66
	sbci r25,5
	cpi r24,101
	cpc r25,__zero_reg__
	brsh .L42
.L38:
	.loc 1 221 0 is_stmt 1
	subi r20,lo8(-(1))
.LVL33:
	adiw r30,2
	cpi r20,lo8(8)
	brne .L40
.LBE26:
	.loc 1 231 0
	ldi r24,lo8(16)
	ldi r30,lo8(RX_raw)
	ldi r31,hi8(RX_raw)
	ldi r26,lo8(Config+1)
	ldi r27,hi8(Config+1)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 232 0
	ldi r24,lo8(1)
	ret
.L42:
.LBB27:
	.loc 1 226 0
	ldi r24,0
.LBE27:
	.loc 1 233 0
	ret
	.cfi_endproc
.LFE15:
	.size	rxCalibrate, .-rxCalibrate
	.section	.bss._t185.1956,"aw",@nobits
	.type	_t185.1956, @object
	.size	_t185.1956, 2
_t185.1956:
	.zero	2
	.section	.bss._start.1942,"aw",@nobits
	.type	_start.1942, @object
	.size	_start.1942, 2
_start.1942:
	.zero	2
	.section	.bss._start.1935,"aw",@nobits
	.type	_start.1935, @object
	.size	_start.1935, 2
_start.1935:
	.zero	2
	.section	.bss._mask.1928,"aw",@nobits
	.type	_mask.1928, @object
	.size	_mask.1928, 1
_mask.1928:
	.zero	1
	.section	.bss._index.1927,"aw",@nobits
	.type	_index.1927, @object
	.size	_index.1927, 1
_index.1927:
	.zero	1
	.section	.bss._start.1926,"aw",@nobits
	.type	_start.1926, @object
	.size	_start.1926, 4
_start.1926:
	.zero	4
	.section	.bss._start.1919,"aw",@nobits
	.type	_start.1919, @object
	.size	_start.1919, 4
_start.1919:
	.zero	4
	.section	.bss._start.1912,"aw",@nobits
	.type	_start.1912, @object
	.size	_start.1912, 4
_start.1912:
	.zero	4
	.section	.bss._RX_good,"aw",@nobits
	.type	_RX_good, @object
	.size	_RX_good, 1
_RX_good:
	.zero	1
	.section	.bss._mode,"aw",@nobits
	.type	_mode, @object
	.size	_mode, 1
_mode:
	.zero	1
	.section	.bss.RX_isr,"aw",@nobits
	.type	RX_isr, @object
	.size	RX_isr, 16
RX_isr:
	.zero	16
	.comm	RX_good,1,1
	.comm	RX_raw,16,1
	.comm	RX,16,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../include/hardware.h"
	.file 5 "../include/mixer.h"
	.file 6 "../include/pid.h"
	.file 7 "../include/config.h"
	.file 8 "../include/serial.h"
	.file 9 "../include/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d2
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1
	.long	.LASF93
	.long	.LASF94
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x10
	.long	0x129
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x1a
	.long	0x134
	.uleb128 0x7
	.long	0x98
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.long	0x175
	.uleb128 0x6
	.long	.LASF21
	.byte	0x5
	.byte	0x22
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x5
	.byte	0x23
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0x24
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x1d
	.long	0x18e
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x1f
	.long	0x3b
	.uleb128 0xa
	.long	0x139
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x5
	.byte	0x16
	.long	0x1e5
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.byte	0x1c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x8
	.byte	0x6
	.byte	0x5
	.byte	0x13
	.long	0x1fd
	.uleb128 0xd
	.string	"I8"
	.byte	0x5
	.byte	0x15
	.long	0x1fd
	.uleb128 0xa
	.long	0x18e
	.byte	0
	.uleb128 0xe
	.long	0x29
	.long	0x20d
	.uleb128 0xf
	.long	0x20d
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF30
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.byte	0x28
	.long	0x1e5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF32
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0x33
	.long	0x231
	.uleb128 0xe
	.long	0x214
	.long	0x241
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.long	0x282
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0xc
	.long	0x29b
	.uleb128 0xa
	.long	0x241
	.uleb128 0xd
	.string	"UI8"
	.byte	0x6
	.byte	0x15
	.long	0x29b
	.byte	0
	.uleb128 0xe
	.long	0x3b
	.long	0x2ab
	.uleb128 0xf
	.long	0x20d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x16
	.long	0x282
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x2f7
	.uleb128 0xb
	.long	.LASF39
	.byte	0x7
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x7
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF42
	.byte	0x7
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x7
	.byte	0x18
	.long	0x2b6
	.uleb128 0x5
	.byte	0x7c
	.byte	0x7
	.byte	0x1a
	.long	0x45b
	.uleb128 0xb
	.long	.LASF44
	.byte	0x7
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.byte	0x1d
	.long	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0x1e
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0x1f
	.long	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xb
	.long	.LASF48
	.byte	0x7
	.byte	0x20
	.long	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xb
	.long	.LASF49
	.byte	0x7
	.byte	0x21
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x10
	.string	"PID"
	.byte	0x7
	.byte	0x22
	.long	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xb
	.long	.LASF50
	.byte	0x7
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.long	.LASF51
	.byte	0x7
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xb
	.long	.LASF52
	.byte	0x7
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF53
	.byte	0x7
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xb
	.long	.LASF54
	.byte	0x7
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xb
	.long	.LASF55
	.byte	0x7
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xb
	.long	.LASF56
	.byte	0x7
	.byte	0x2e
	.long	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF57
	.byte	0x7
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF58
	.byte	0x7
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xb
	.long	.LASF59
	.byte	0x7
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xb
	.long	.LASF60
	.byte	0x7
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x10
	.string	"LVA"
	.byte	0x7
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF61
	.byte	0x7
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xb
	.long	.LASF62
	.byte	0x7
	.byte	0x35
	.long	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xb
	.long	.LASF63
	.byte	0x7
	.byte	0x36
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.long	.LASF64
	.byte	0x7
	.byte	0x37
	.long	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF65
	.byte	0x7
	.byte	0x38
	.long	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xe
	.long	0x5f
	.long	0x46b
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x3b
	.long	0x47b
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x5f
	.long	0x48b
	.uleb128 0xf
	.long	0x20d
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x2ab
	.long	0x49b
	.uleb128 0xf
	.long	0x20d
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x29
	.long	0x4ab
	.uleb128 0xf
	.long	0x20d
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x39
	.long	0x302
	.uleb128 0x11
	.long	.LASF67
	.byte	0x2
	.byte	0x36
	.byte	0x1
	.byte	0x3
	.long	0x4cf
	.uleb128 0x12
	.string	"__s"
	.byte	0x2
	.byte	0x36
	.long	0x4cf
	.byte	0
	.uleb128 0x13
	.byte	0x2
	.long	0x4d5
	.uleb128 0x14
	.long	0x3b
	.uleb128 0x11
	.long	.LASF68
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x4f3
	.uleb128 0x12
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x4cf
	.byte	0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x16
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x542
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x24
	.long	0x78
	.byte	0x5
	.byte	0x3
	.long	_start.1912
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0x25
	.long	0x78
	.long	.LLST1
	.uleb128 0x19
	.long	.LVL0
	.long	0x895
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST2
	.byte	0x1
	.long	0x584
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x35
	.long	0x78
	.byte	0x5
	.byte	0x3
	.long	_start.1919
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0x36
	.long	0x78
	.long	.LLST3
	.uleb128 0x19
	.long	.LVL2
	.long	0x895
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST4
	.byte	0x1
	.long	0x5e8
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x46
	.long	0x78
	.byte	0x5
	.byte	0x3
	.long	_start.1926
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_index.1927
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.byte	0x48
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_mask.1928
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0x4a
	.long	0x78
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL4
	.long	0x895
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.byte	0x1
	.long	0x62a
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x6d
	.long	0x5f
	.byte	0x5
	.byte	0x3
	.long	_start.1935
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0x6e
	.long	0x5f
	.long	.LLST7
	.uleb128 0x19
	.long	.LVL6
	.long	0x895
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST8
	.byte	0x1
	.long	0x66c
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x7e
	.long	0x5f
	.byte	0x5
	.byte	0x3
	.long	_start.1942
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0x7f
	.long	0x5f
	.long	.LLST9
	.uleb128 0x19
	.long	.LVL8
	.long	0x895
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST10
	.byte	0x1
	.long	0x6ff
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.byte	0x8b
	.long	0x3b
	.long	.LLST11
	.uleb128 0x1b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x1
	.byte	0x8d
	.long	0x3b
	.long	.LLST12
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x1
	.byte	0x8d
	.long	0x3b
	.long	.LLST13
	.uleb128 0x1d
	.long	0x4f3
	.long	.LBB15
	.long	.LBE15
	.byte	0x1
	.byte	0x8d
	.uleb128 0x1e
	.long	0x4da
	.long	.LBB17
	.long	.LBE17
	.byte	0x1
	.byte	0x8d
	.long	0x6eb
	.uleb128 0x1f
	.long	0x4e7
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1694
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL13
	.long	0x8a8
	.uleb128 0x19
	.long	.LVL15
	.long	0x8b7
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.byte	0xb4
	.long	.LFB14
	.long	.LFE14
	.long	.LLST14
	.byte	0x1
	.long	0x7d2
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0xb6
	.long	0x5f
	.long	.LLST15
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x1
	.byte	0xb7
	.long	0x3b
	.long	.LLST16
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0xb9
	.long	0x5f
	.byte	0x5
	.byte	0x3
	.long	_t185.1956
	.uleb128 0x21
	.long	.LBB19
	.long	.LBE19
	.long	0x76a
	.uleb128 0x18
	.string	"_m"
	.byte	0x1
	.byte	0xb9
	.long	0x5f
	.long	.LLST17
	.uleb128 0x19
	.long	.LVL19
	.long	0x8c6
	.byte	0
	.uleb128 0x1b
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST18
	.uleb128 0x1b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.byte	0xc6
	.long	0x3b
	.byte	0
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x1
	.byte	0xc6
	.long	0x3b
	.long	.LLST19
	.uleb128 0x1d
	.long	0x4f3
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0xc6
	.uleb128 0x23
	.long	0x4b6
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0xc6
	.uleb128 0x1f
	.long	0x4c3
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1929
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0xda
	.long	0x3b
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x810
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.long	0x806
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xdd
	.long	0x3b
	.long	.LLST20
	.byte	0
	.uleb128 0x19
	.long	.LVL31
	.long	0x6ff
	.byte	0
	.uleb128 0xe
	.long	0x4d
	.long	0x820
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.byte	0x1b
	.long	0x810
	.byte	0x5
	.byte	0x3
	.long	RX_isr
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.byte	0x1c
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_mode
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.byte	0x1d
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	_RX_good
	.uleb128 0x26
	.long	.LASF86
	.byte	0x7
	.byte	0x3b
	.long	0x4ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"RX"
	.byte	0x1
	.byte	0x18
	.long	0x810
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RX
	.uleb128 0x28
	.long	.LASF87
	.byte	0x1
	.byte	0x19
	.long	0x45b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RX_raw
	.uleb128 0x28
	.long	.LASF88
	.byte	0x1
	.byte	0x1a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RX_good
	.uleb128 0x29
	.byte	0x1
	.long	.LASF98
	.byte	0x9
	.byte	0x15
	.long	0x78
	.byte	0x1
	.long	0x8a8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF89
	.byte	0x8
	.byte	0xe
	.byte	0x1
	.long	0x8b7
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF90
	.byte	0x8
	.byte	0xf
	.byte	0x1
	.long	0x8c6
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF91
	.byte	0x9
	.byte	0x17
	.long	0x5f
	.byte	0x1
	.uleb128 0x2a
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
	.uleb128 0x17
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.long	.LFB8
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
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LFB9
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI27
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LFB10
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 21
	.long	.LCFI47
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 22
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL5
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LFB11
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI61
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST7:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LFB12
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
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI72
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI73
	.long	.LCFI74
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI74
	.long	.LCFI75
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI75
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST9:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LFB13
	.long	.LCFI76
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI76
	.long	.LCFI77
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI77
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST11:
	.long	.LVL10
	.long	.LVL13-1
	.word	0x1
	.byte	0x68
	.long	.LVL13-1
	.long	.LVL14
	.word	0x1
	.byte	0x6c
	.long	.LVL14
	.long	.LVL15-1
	.word	0x1
	.byte	0x68
	.long	.LVL15-1
	.long	.LVL18
	.word	0x1
	.byte	0x6c
	.long	.LVL18
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL11
	.long	.LVL17
	.word	0x1
	.byte	0x6d
	.long	.LVL17
	.long	.LFE13
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST13:
	.long	.LVL12
	.long	.LVL16
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL16
	.long	.LFE13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LFB14
	.long	.LCFI78
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI78
	.long	.LCFI79
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI79
	.long	.LCFI80
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI80
	.long	.LCFI81
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI81
	.long	.LCFI82
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI82
	.long	.LCFI83
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI83
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST15:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LFE14
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL23
	.long	.LVL25
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST17:
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL21
	.long	.LVL22
	.word	0x1
	.byte	0x6e
	.long	.LVL22
	.long	.LVL28
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL26
	.long	.LFE14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LFE15
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB26
	.long	.LBE26
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"ticks"
.LASF51:
	.string	"ArmingMode"
.LASF27:
	.string	"Rudder"
.LASF48:
	.string	"ACC_zero"
.LASF37:
	.string	"ILimit"
.LASF0:
	.string	"int8_t"
.LASF12:
	.string	"bit0"
.LASF13:
	.string	"bit1"
.LASF14:
	.string	"bit2"
.LASF15:
	.string	"bit3"
.LASF93:
	.string	"../driver/rx.c"
.LASF17:
	.string	"bit5"
.LASF18:
	.string	"bit6"
.LASF19:
	.string	"bit7"
.LASF30:
	.string	"sizetype"
.LASF74:
	.string	"_mask"
.LASF40:
	.string	"RollOffset"
.LASF50:
	.string	"SelfLevelMode"
.LASF96:
	.string	"mode"
.LASF38:
	.string	"pid_param_t"
.LASF90:
	.string	"serialTerminate"
.LASF1:
	.string	"uint8_t"
.LASF21:
	.string	"IsMotor"
.LASF42:
	.string	"PitchOffset"
.LASF36:
	.string	"IGain"
.LASF70:
	.string	"__vector_2"
.LASF72:
	.string	"__vector_3"
.LASF58:
	.string	"LCDContrast"
.LASF29:
	.string	"Flags"
.LASF75:
	.string	"__vector_7"
.LASF47:
	.string	"GYRO_zero"
.LASF67:
	.string	"__iSeiParam"
.LASF10:
	.string	"long long int"
.LASF54:
	.string	"ReceiverMode"
.LASF46:
	.string	"RX_chmap"
.LASF7:
	.string	"long int"
.LASF91:
	.string	"millis"
.LASF65:
	.string	"Camera"
.LASF85:
	.string	"_RX_good"
.LASF94:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF86:
	.string	"Config"
.LASF52:
	.string	"AutoDisarm"
.LASF41:
	.string	"PitchGain"
.LASF71:
	.string	"__vector_1"
.LASF60:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF25:
	.string	"Aileron"
.LASF82:
	.string	"rxCalibrate"
.LASF53:
	.string	"LinkRollPitch"
.LASF79:
	.string	"__ToDo"
.LASF35:
	.string	"PLimit"
.LASF45:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"_bitreg8"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF66:
	.string	"config_t"
.LASF5:
	.string	"uint16_t"
.LASF68:
	.string	"__iRestore"
.LASF89:
	.string	"serialInit"
.LASF88:
	.string	"RX_good"
.LASF28:
	.string	"Offset"
.LASF57:
	.string	"MinThrottle"
.LASF32:
	.string	"char"
.LASF31:
	.string	"mixer_channel_t"
.LASF92:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF55:
	.string	"MixerIndex"
.LASF76:
	.string	"__vector_5"
.LASF4:
	.string	"int16_t"
.LASF59:
	.string	"HeightDampening"
.LASF69:
	.string	"_start"
.LASF62:
	.string	"PID_SelfLevel"
.LASF34:
	.string	"PGain"
.LASF9:
	.string	"long unsigned int"
.LASF64:
	.string	"Mixer"
.LASF77:
	.string	"rxInit"
.LASF78:
	.string	"sreg_save"
.LASF43:
	.string	"camera_t"
.LASF16:
	.string	"bit4"
.LASF84:
	.string	"_mode"
.LASF33:
	.string	"mixer_t"
.LASF44:
	.string	"signature"
.LASF39:
	.string	"RollGain"
.LASF73:
	.string	"_index"
.LASF22:
	.string	"IsServo"
.LASF23:
	.string	"IsHiRate"
.LASF49:
	.string	"CalibrateFlags"
.LASF61:
	.string	"ServoFilter"
.LASF81:
	.string	"_t185"
.LASF56:
	.string	"StickScaling"
.LASF87:
	.string	"RX_raw"
.LASF95:
	.string	"__iCliRetVal"
.LASF80:
	.string	"index"
.LASF83:
	.string	"RX_isr"
.LASF26:
	.string	"Elevator"
.LASF97:
	.string	"rxRead"
.LASF24:
	.string	"Throttle"
.LASF63:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
