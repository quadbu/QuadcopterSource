	.file	"mpu6050.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mpu6050_readBytes.part.0,"ax",@progbits
	.type	mpu6050_readBytes.part.0, @function
mpu6050_readBytes.part.0:
.LFB25:
	.file 1 "../mpu6050/mpu6050.c"
	.loc 1 33 0
	.cfi_startproc
.LVL0:
	push r10
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
	rcall .
.LCFI9:
	.cfi_def_cfa_offset 13
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI10:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 11 */
.L__stack_usage = 11
	mov r17,r24
	mov r13,r22
	.loc 1 38 0
	ldi r24,lo8(-48)
.LVL1:
	std Y+1,r20
	std Y+2,r21
	call i2c_start
.LVL2:
	.loc 1 39 0
	mov r24,r17
	call i2c_write
.LVL3:
.LBB14:
.LBB15:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 245 0
	ldi r24,lo8(66)
	1: dec r24
	brne 1b
	rjmp .
.LBE15:
.LBE14:
	.loc 1 42 0
	ldi r24,lo8(-47)
	call i2c_start
.LVL4:
	ldd r20,Y+1
	mov r10,r20
	ldd r21,Y+2
	mov r11,r21
	ldi r16,0
	ldi r17,0
	.loc 1 45 0
	mov r14,r13
	mov r15,__zero_reg__
	ldi r30,1
	sub r14,r30
	sbc r15,__zero_reg__
.LVL5:
.L2:
	.loc 1 43 0
	cp r16,r13
	brsh .L8
.LVL6:
	.loc 1 45 0
	cp r16,r14
	cpc r17,r15
	brne .L3
	.loc 1 46 0
	call i2c_readNak
.LVL7:
	rjmp .L6
.L3:
	.loc 1 48 0
	call i2c_readAck
.LVL8:
.L6:
	movw r30,r10
	st Z,r24
.LVL9:
	subi r16,-1
	sbci r17,-1
.LVL10:
	ldi r31,-1
	sub r10,r31
	sbc r11,r31
	rjmp .L2
.L8:
	.loc 1 50 0
	call i2c_stop
.LVL11:
	.loc 1 53 0
	mov r24,r13
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL12:
	pop r16
.LVL13:
	pop r15
	pop r14
	pop r13
.LVL14:
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE25:
	.size	mpu6050_readBytes.part.0, .-mpu6050_readBytes.part.0
	.section	.text.mpu6050_readBytes,"ax",@progbits
.global	mpu6050_readBytes
	.type	mpu6050_readBytes, @function
mpu6050_readBytes:
.LFB11:
	.loc 1 33 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 36 0
	cpse r22,__zero_reg__
	jmp mpu6050_readBytes.part.0
.LVL16:
.L10:
	.loc 1 53 0
	ldi r24,0
.LVL17:
	ret
	.cfi_endproc
.LFE11:
	.size	mpu6050_readBytes, .-mpu6050_readBytes
	.section	.text.mpu6050_readByte,"ax",@progbits
.global	mpu6050_readByte
	.type	mpu6050_readByte, @function
mpu6050_readByte:
.LFB12:
	.loc 1 58 0
	.cfi_startproc
.LVL18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r22
.LVL19:
.LBB22:
.LBB23:
	ldi r22,lo8(1)
.LVL20:
	jmp mpu6050_readBytes.part.0
.LVL21:
.LBE23:
.LBE22:
	.cfi_endproc
.LFE12:
	.size	mpu6050_readByte, .-mpu6050_readByte
	.section	.text.mpu6050_writeBytes,"ax",@progbits
.global	mpu6050_writeBytes
	.type	mpu6050_writeBytes, @function
mpu6050_writeBytes:
.LFB13:
	.loc 1 65 0
	.cfi_startproc
.LVL22:
	.loc 1 65 0
	push r14
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI15:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	rcall .
.LCFI17:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI18:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r16,r24
	mov r17,r22
	.loc 1 66 0
	tst r22
	breq .L12
	.loc 1 68 0
	ldi r24,lo8(-48)
.LVL23:
	std Y+1,r20
	std Y+2,r21
	call i2c_start
.LVL24:
	.loc 1 69 0
	mov r24,r16
	call i2c_write
.LVL25:
	ldd r20,Y+1
	mov r16,r20
.LVL26:
.LBB24:
	.loc 1 70 0
	mov r14,r20
	ldd r21,Y+2
	mov r15,r21
.LVL27:
.L14:
	mov r24,r14
	sub r24,r16
	.loc 1 70 0 is_stmt 0 discriminator 1
	cp r24,r17
	brsh .L16
	.loc 1 71 0 is_stmt 1 discriminator 2
	movw r30,r14
	ld r24,Z+
	movw r14,r30
.LVL28:
	call i2c_write
.LVL29:
	rjmp .L14
.L16:
/* epilogue start */
.LBE24:
	.loc 1 75 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL30:
	pop r16
	pop r15
	pop r14
.LVL31:
	.loc 1 73 0
	jmp i2c_stop
.LVL32:
.L12:
/* epilogue start */
	.loc 1 75 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL33:
	pop r16
.LVL34:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE13:
	.size	mpu6050_writeBytes, .-mpu6050_writeBytes
	.section	.text.mpu6050_writeByte,"ax",@progbits
.global	mpu6050_writeByte
	.type	mpu6050_writeByte, @function
mpu6050_writeByte:
.LFB14:
	.loc 1 80 0
	.cfi_startproc
.LVL35:
	push r28
.LCFI19:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	push __zero_reg__
.LCFI21:
	.cfi_def_cfa_offset 5
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI22:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r22
	.loc 1 81 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	ldi r22,lo8(1)
.LVL36:
	call mpu6050_writeBytes
.LVL37:
/* epilogue start */
	.loc 1 82 0
	pop __tmp_reg__
	pop r29
	pop r28
.LVL38:
	ret
	.cfi_endproc
.LFE14:
	.size	mpu6050_writeByte, .-mpu6050_writeByte
	.section	.text.mpu6050_writeBits.part.1,"ax",@progbits
	.type	mpu6050_writeBits.part.1, @function
mpu6050_writeBits.part.1:
.LFB26:
	.loc 1 119 0
	.cfi_startproc
.LVL39:
	push r16
.LCFI23:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI24:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI25:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI26:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
	push __zero_reg__
.LCFI27:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI28:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 3 */
/* stack size = 7 */
.L__stack_usage = 7
	mov r17,r24
	mov r16,r22
.LBB25:
	.loc 1 128 0
	std Y+1,__zero_reg__
	.loc 1 129 0
	movw r22,r28
.LVL40:
	subi r22,-1
	sbci r23,-1
	std Y+3,r18
	std Y+2,r20
	call mpu6050_readByte
.LVL41:
	ldd r18,Y+3
	ldd r20,Y+2
	tst r24
	breq .L18
.LBB26:
	.loc 1 130 0
	mov r22,r16
	ldi r23,0
	sub r22,r20
	sbc r23,__zero_reg__
	subi r22,-1
	sbci r23,-1
	ldi r30,lo8(1)
	ldi r31,0
	rjmp 2f
	1:
	lsl r30
	rol r31
	2:
	dec r20
	brpl 1b
	sbiw r30,1
	mov r0,r22
	rjmp 2f
	1:
	lsl r30
	2:
	dec r0
	brpl 1b
.LVL42:
	.loc 1 131 0
	rjmp 2f
	1:
	lsl r18
	2:
	dec r22
	brpl 1b
.LVL43:
	.loc 1 133 0
	mov r22,r30
	com r22
	ldd r24,Y+1
	and r22,r24
	.loc 1 132 0
	and r30,r18
.LVL44:
	.loc 1 134 0
	or r22,r30
	std Y+1,r22
	.loc 1 135 0
	mov r24,r17
	call mpu6050_writeByte
.LVL45:
.L18:
/* epilogue start */
.LBE26:
.LBE25:
	.loc 1 138 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL46:
	pop r16
.LVL47:
	ret
	.cfi_endproc
.LFE26:
	.size	mpu6050_writeBits.part.1, .-mpu6050_writeBits.part.1
	.section	.text.mpu6050_readBits,"ax",@progbits
.global	mpu6050_readBits
	.type	mpu6050_readBits, @function
mpu6050_readBits:
.LFB15:
	.loc 1 87 0
	.cfi_startproc
.LVL48:
	push r15
.LCFI29:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI32:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI33:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
	rcall .
.LCFI34:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI35:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 7 */
.L__stack_usage = 7
	mov r15,r22
	movw r16,r18
.LVL49:
	.loc 1 94 0
	tst r20
	breq .L26
.LBB27:
	.loc 1 96 0
	movw r22,r28
.LVL50:
	subi r22,-1
	sbci r23,-1
	std Y+2,r20
	call mpu6050_readByte
.LVL51:
	ldd r20,Y+2
	tst r24
	breq .L24
.LBB28:
	.loc 1 97 0
	mov r22,r15
	ldi r23,0
	sub r22,r20
	sbc r23,__zero_reg__
	subi r22,-1
	sbci r23,-1
	ldi r30,lo8(1)
	ldi r31,0
	rjmp 2f
	1:
	lsl r30
	rol r31
	2:
	dec r20
	brpl 1b
	sbiw r30,1
	mov r0,r22
	rjmp 2f
	1:
	lsl r30
	2:
	dec r0
	brpl 1b
	.loc 1 98 0
	ldd r20,Y+1
	and r20,r30
	.loc 1 99 0
	ldi r21,0
	rjmp 2f
	1:
	asr r21
	ror r20
	2:
	dec r22
	brpl 1b
	movw r30,r16
	st Z,r20
	rjmp .L24
.LVL52:
.L26:
.LBE28:
.LBE27:
	.loc 1 93 0
	ldi r24,0
.LVL53:
.L24:
/* epilogue start */
	.loc 1 104 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL54:
	pop r15
.LVL55:
	ret
	.cfi_endproc
.LFE15:
	.size	mpu6050_readBits, .-mpu6050_readBits
	.section	.text.mpu6050_readBit,"ax",@progbits
.global	mpu6050_readBit
	.type	mpu6050_readBit, @function
mpu6050_readBit:
.LFB16:
	.loc 1 109 0
	.cfi_startproc
.LVL56:
	push r15
.LCFI36:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI37:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI38:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI39:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI40:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
	push __zero_reg__
.LCFI41:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI42:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r15,r22
	movw r16,r20
	.loc 1 111 0
	movw r22,r28
.LVL57:
	subi r22,-1
	sbci r23,-1
	call mpu6050_readByte
.LVL58:
	.loc 1 112 0
	ldi r18,lo8(1)
	ldi r19,0
	rjmp 2f
	1:
	lsl r18
	2:
	dec r15
	brpl 1b
	ldd r25,Y+1
	and r25,r18
	movw r30,r16
	st Z,r25
/* epilogue start */
	.loc 1 114 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL59:
	pop r15
.LVL60:
	ret
	.cfi_endproc
.LFE16:
	.size	mpu6050_readBit, .-mpu6050_readBit
	.section	.text.mpu6050_writeBits,"ax",@progbits
.global	mpu6050_writeBits
	.type	mpu6050_writeBits, @function
mpu6050_writeBits:
.LFB17:
	.loc 1 119 0
	.cfi_startproc
.LVL61:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 127 0
	cpse r20,__zero_reg__
	jmp mpu6050_writeBits.part.1
.LVL62:
.L31:
	ret
	.cfi_endproc
.LFE17:
	.size	mpu6050_writeBits, .-mpu6050_writeBits
	.section	.text.mpu6050_writeBit,"ax",@progbits
.global	mpu6050_writeBit
	.type	mpu6050_writeBit, @function
mpu6050_writeBit:
.LFB18:
	.loc 1 143 0
	.cfi_startproc
.LVL63:
	push r16
.LCFI43:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI44:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI45:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI46:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
.LCFI47:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI48:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r17,r24
	mov r16,r22
	.loc 1 145 0
	movw r22,r28
.LVL64:
	subi r22,-1
	sbci r23,-1
	std Y+2,r20
	call mpu6050_readByte
.LVL65:
	ldd r24,Y+1
	.loc 1 146 0
	ldd r20,Y+2
	ldi r18,lo8(1)
	ldi r19,0
	mov r0,r16
	rjmp 2f
	1:
	lsl r18
	2:
	dec r0
	brpl 1b
	tst r20
	breq .L34
	.loc 1 146 0 is_stmt 0 discriminator 1
	mov r22,r24
	or r22,r18
	rjmp .L35
.L34:
	.loc 1 146 0 discriminator 2
	mov r22,r18
	com r22
	and r22,r24
.L35:
	.loc 1 146 0 discriminator 3
	std Y+1,r22
	.loc 1 147 0 is_stmt 1 discriminator 3
	mov r24,r17
	call mpu6050_writeByte
.LVL66:
/* epilogue start */
	.loc 1 148 0 discriminator 3
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL67:
	pop r16
.LVL68:
	ret
	.cfi_endproc
.LFE18:
	.size	mpu6050_writeBit, .-mpu6050_writeBit
	.section	.text.mpu6050_setSleepDisabled,"ax",@progbits
.global	mpu6050_setSleepDisabled
	.type	mpu6050_setSleepDisabled, @function
mpu6050_setSleepDisabled:
.LFB19:
	.loc 1 433 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 434 0
	ldi r20,0
	ldi r22,lo8(6)
	ldi r24,lo8(107)
	jmp mpu6050_writeBit
.LVL69:
	.cfi_endproc
.LFE19:
	.size	mpu6050_setSleepDisabled, .-mpu6050_setSleepDisabled
	.section	.text.mpu6050_setSleepEnabled,"ax",@progbits
.global	mpu6050_setSleepEnabled
	.type	mpu6050_setSleepEnabled, @function
mpu6050_setSleepEnabled:
.LFB20:
	.loc 1 440 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 441 0
	ldi r20,lo8(1)
	ldi r22,lo8(6)
	ldi r24,lo8(107)
	jmp mpu6050_writeBit
.LVL70:
	.cfi_endproc
.LFE20:
	.size	mpu6050_setSleepEnabled, .-mpu6050_setSleepEnabled
	.section	.text.mpu6050_testConnection,"ax",@progbits
.global	mpu6050_testConnection
	.type	mpu6050_testConnection, @function
mpu6050_testConnection:
.LFB21:
	.loc 1 448 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 449 0
	ldi r18,lo8(buffer)
	ldi r19,hi8(buffer)
	ldi r20,lo8(6)
	ldi r22,lo8(6)
	ldi r24,lo8(117)
	call mpu6050_readBits
.LVL71:
	.loc 1 450 0
	lds r25,buffer
	ldi r24,lo8(1)
	cpi r25,lo8(52)
	breq .L39
	ldi r24,0
.L39:
	.loc 1 454 0
	ret
	.cfi_endproc
.LFE21:
	.size	mpu6050_testConnection, .-mpu6050_testConnection
	.section	.text.mpu6050_init,"ax",@progbits
.global	mpu6050_init
	.type	mpu6050_init, @function
mpu6050_init:
.LFB22:
	.loc 1 459 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 462 0
	call i2c_init
.LVL72:
.LBB43:
.LBB44:
	.loc 2 245 0
	ldi r18,lo8(66)
	1: dec r18
	brne 1b
	rjmp .
.LVL73:
.LBE44:
.LBE43:
.LBB45:
.LBB46:
	.loc 2 163 0
	ldi r24,lo8(399999)
	ldi r25,hi8(399999)
	ldi r18,hlo8(399999)
	1: subi r24,1
	sbci r25,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
.LBE46:
.LBE45:
	.loc 1 470 0
	call mpu6050_setSleepDisabled
.LVL74:
.LBB47:
.LBB48:
	.loc 2 163 0
	ldi r24,lo8(-15537)
	ldi r25,hi8(-15537)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL75:
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	ldi r18,lo8(1)
	ldi r20,lo8(3)
	ldi r22,lo8(2)
	ldi r24,lo8(107)
	call mpu6050_writeBits.part.1
.LVL76:
.LBE50:
.LBE49:
.LBB51:
.LBB52:
	ldi r18,lo8(3)
	ldi r20,lo8(3)
	ldi r22,lo8(2)
	ldi r24,lo8(26)
	call mpu6050_writeBits.part.1
.LVL77:
.LBE52:
.LBE51:
	.loc 1 481 0
	ldi r22,lo8(4)
	ldi r24,lo8(25)
	call mpu6050_writeByte
.LVL78:
.LBB53:
.LBB54:
	ldi r18,lo8(3)
	ldi r20,lo8(2)
	ldi r22,lo8(4)
	ldi r24,lo8(27)
	call mpu6050_writeBits.part.1
.LVL79:
.LBE54:
.LBE53:
.LBB55:
.LBB56:
	ldi r18,0
	ldi r20,lo8(2)
	ldi r22,lo8(4)
	ldi r24,lo8(28)
	jmp mpu6050_writeBits.part.1
.LVL80:
.LBE56:
.LBE55:
	.cfi_endproc
.LFE22:
	.size	mpu6050_init, .-mpu6050_init
	.section	.text.mpu6050_getRawData,"ax",@progbits
.global	mpu6050_getRawData
	.type	mpu6050_getRawData, @function
mpu6050_getRawData:
.LFB23:
	.loc 1 496 0
	.cfi_startproc
.LVL81:
	push r8
.LCFI49:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI50:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI51:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI52:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI53:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI54:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI55:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI56:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
.LCFI57:
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
.LCFI58:
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
.LCFI59:
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
.LCFI60:
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r28,r24
	movw r10,r22
	movw r12,r20
	movw r8,r18
	.loc 1 497 0
	ldi r20,lo8(buffer)
	ldi r21,hi8(buffer)
.LVL82:
	ldi r22,lo8(14)
.LVL83:
	ldi r24,lo8(59)
.LVL84:
	call mpu6050_readBytes
.LVL85:
	.loc 1 499 0
	lds r18,buffer
	lds r24,buffer+1
	ldi r25,0
	or r25,r18
	std Y+1,r25
	st Y,r24
	.loc 1 500 0
	lds r18,buffer+2
	lds r24,buffer+3
	ldi r25,0
	or r25,r18
	movw r30,r10
	std Z+1,r25
	st Z,r24
	.loc 1 501 0
	lds r18,buffer+4
	lds r24,buffer+5
	ldi r25,0
	or r25,r18
	movw r30,r12
	std Z+1,r25
	st Z,r24
	.loc 1 502 0
	lds r18,buffer+8
	lds r24,buffer+9
	ldi r25,0
	or r25,r18
	movw r30,r8
	std Z+1,r25
	st Z,r24
	.loc 1 503 0
	lds r18,buffer+10
	lds r24,buffer+11
	ldi r25,0
	or r25,r18
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 1 504 0
	lds r18,buffer+12
	lds r24,buffer+13
	ldi r25,0
	or r25,r18
	movw r30,r14
	std Z+1,r25
	st Z,r24
/* epilogue start */
	.loc 1 505 0
	pop r29
	pop r28
.LVL86:
	pop r17
	pop r16
.LVL87:
	pop r15
	pop r14
.LVL88:
	pop r13
	pop r12
.LVL89:
	pop r11
	pop r10
.LVL90:
	pop r9
	pop r8
.LVL91:
	ret
	.cfi_endproc
.LFE23:
	.size	mpu6050_getRawData, .-mpu6050_getRawData
.global	__floatsisf
.global	__mulsf3
	.section	.text.mpu6050_getConvData,"ax",@progbits
.global	mpu6050_getConvData
	.type	mpu6050_getConvData, @function
mpu6050_getConvData:
.LFB24:
	.loc 1 510 0
	.cfi_startproc
.LVL92:
	push r2
.LCFI61:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI62:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI63:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI64:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI65:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI67:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI68:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI69:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI70:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI71:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI72:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI73:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI74:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI75:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI76:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI77:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI78:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI79:
	.cfi_def_cfa_register 28
	sbiw r28,12
.LCFI80:
	.cfi_def_cfa_offset 32
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 30 */
.L__stack_usage = 30
	movw r6,r24
	movw r8,r22
	movw r10,r20
	movw r12,r18
	movw r4,r16
	movw r2,r14
	.loc 1 511 0
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	.loc 1 512 0
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	.loc 1 513 0
	std Y+8,__zero_reg__
	std Y+7,__zero_reg__
	.loc 1 514 0
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	.loc 1 515 0
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	.loc 1 516 0
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	.loc 1 517 0
	movw r24,r28
.LVL93:
	adiw r24,1
	movw r14,r24
.LVL94:
	movw r16,r28
.LVL95:
	subi r16,-3
	sbci r17,-1
	movw r18,r28
.LVL96:
	subi r18,-5
	sbci r19,-1
	movw r20,r28
.LVL97:
	subi r20,-7
	sbci r21,-1
	movw r22,r28
.LVL98:
	subi r22,-9
	sbci r23,-1
	adiw r24,10
	call mpu6050_getRawData
.LVL99:
	.loc 1 520 0
	ldd r22,Y+11
	ldd r23,Y+12
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	call __floatsisf
.LVL100:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(56)
	call __mulsf3
.LVL101:
	movw r30,r6
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
	.loc 1 521 0
	ldd r22,Y+9
	ldd r23,Y+10
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	call __floatsisf
.LVL102:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(56)
	call __mulsf3
.LVL103:
	movw r30,r8
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
	.loc 1 522 0
	ldd r22,Y+7
	ldd r23,Y+8
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	call __floatsisf
.LVL104:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(56)
	call __mulsf3
.LVL105:
	movw r30,r10
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
	.loc 1 523 0
	ldd r22,Y+5
	ldd r23,Y+6
	subi r22,-42
	sbci r23,-1
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	call __floatsisf
.LVL106:
	ldi r18,lo8(-112)
	ldi r19,lo8(-63)
	ldi r20,lo8(121)
	ldi r21,lo8(61)
	call __mulsf3
.LVL107:
	movw r30,r12
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
	.loc 1 524 0
	ldd r22,Y+3
	ldd r23,Y+4
	subi r22,9
	sbc r23,__zero_reg__
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	call __floatsisf
.LVL108:
	ldi r18,lo8(-112)
	ldi r19,lo8(-63)
	ldi r20,lo8(121)
	ldi r21,lo8(61)
	call __mulsf3
.LVL109:
	movw r30,r4
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
	.loc 1 525 0
	ldd r22,Y+1
	ldd r23,Y+2
	subi r22,-29
	sbci r23,-1
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	call __floatsisf
.LVL110:
	ldi r18,lo8(-112)
	ldi r19,lo8(-63)
	ldi r20,lo8(121)
	ldi r21,lo8(61)
	call __mulsf3
.LVL111:
	movw r30,r2
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
/* epilogue start */
	.loc 1 534 0
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL112:
	pop r11
	pop r10
.LVL113:
	pop r9
	pop r8
.LVL114:
	pop r7
	pop r6
.LVL115:
	pop r5
	pop r4
.LVL116:
	pop r3
	pop r2
.LVL117:
	ret
	.cfi_endproc
.LFE24:
	.size	mpu6050_getConvData, .-mpu6050_getConvData
	.comm	buffer,14,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../mpu6050/../i2chw/i2cmaster.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc43
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF2398
	.byte	0x1
	.long	.LASF2399
	.long	.LASF2400
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2349
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF2350
	.uleb128 0x4
	.long	.LASF2352
	.byte	0x3
	.byte	0x79
	.long	0x4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2351
	.uleb128 0x4
	.long	.LASF2353
	.byte	0x3
	.byte	0x7a
	.long	0x5f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2354
	.uleb128 0x4
	.long	.LASF2355
	.byte	0x3
	.byte	0x7b
	.long	0x34
	.uleb128 0x4
	.long	.LASF2356
	.byte	0x3
	.byte	0x7e
	.long	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2357
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2358
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2359
	.uleb128 0x5
	.long	.LASF2370
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.long	0xca
	.uleb128 0x6
	.long	.LASF2363
	.byte	0x2
	.byte	0xe0
	.long	0xca
	.uleb128 0x7
	.long	.LASF2360
	.byte	0x2
	.byte	0xe2
	.long	0xca
	.uleb128 0x7
	.long	.LASF2361
	.byte	0x2
	.byte	0xe6
	.long	0x71
	.uleb128 0x8
	.byte	0x1
	.long	.LASF2373
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF2362
	.uleb128 0x9
	.byte	0x1
	.long	.LASF2391
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x42
	.byte	0x1
	.long	0x119
	.uleb128 0x6
	.long	.LASF2364
	.byte	0x1
	.byte	0x21
	.long	0x54
	.uleb128 0x6
	.long	.LASF2365
	.byte	0x1
	.byte	0x21
	.long	0x54
	.uleb128 0x6
	.long	.LASF2366
	.byte	0x1
	.byte	0x21
	.long	0x119
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x54
	.uleb128 0x7
	.long	.LASF2367
	.byte	0x1
	.byte	0x23
	.long	0x42
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x54
	.uleb128 0xc
	.byte	0x1
	.long	.LASF2401
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.long	0x172
	.uleb128 0x6
	.long	.LASF2364
	.byte	0x1
	.byte	0x77
	.long	0x54
	.uleb128 0x6
	.long	.LASF2368
	.byte	0x1
	.byte	0x77
	.long	0x54
	.uleb128 0x6
	.long	.LASF2365
	.byte	0x1
	.byte	0x77
	.long	0x54
	.uleb128 0x6
	.long	.LASF2366
	.byte	0x1
	.byte	0x77
	.long	0x54
	.uleb128 0xd
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x80
	.long	0x54
	.uleb128 0xd
	.uleb128 0x7
	.long	.LASF2369
	.byte	0x1
	.byte	0x82
	.long	0x54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF2371
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x1ab
	.uleb128 0x6
	.long	.LASF2372
	.byte	0x2
	.byte	0x8e
	.long	0xca
	.uleb128 0x7
	.long	.LASF2360
	.byte	0x2
	.byte	0x90
	.long	0xca
	.uleb128 0x7
	.long	.LASF2361
	.byte	0x2
	.byte	0x94
	.long	0x71
	.uleb128 0x8
	.byte	0x1
	.long	.LASF2373
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xd1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST0
	.byte	0x1
	.long	0x27e
	.uleb128 0xf
	.long	0xe3
	.long	.LLST1
	.uleb128 0xf
	.long	0xee
	.long	.LLST2
	.uleb128 0xf
	.long	0xf9
	.long	.LLST3
	.uleb128 0x10
	.long	0x104
	.long	.LLST4
	.uleb128 0x10
	.long	0x10d
	.long	.LLST5
	.uleb128 0x11
	.long	0x91
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x28
	.long	0x226
	.uleb128 0x12
	.long	0x9e
	.byte	0x4
	.long	0x41200000
	.uleb128 0x13
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x14
	.long	0xa9
	.byte	0x4
	.long	0x43480000
	.uleb128 0x15
	.long	0xb4
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LVL2
	.long	0xbe6
	.long	0x23a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd0
	.byte	0
	.uleb128 0x16
	.long	.LVL3
	.long	0xbfe
	.long	0x24e
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL4
	.long	0xbe6
	.long	0x262
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd1
	.byte	0
	.uleb128 0x18
	.long	.LVL7
	.long	0xc16
	.uleb128 0x18
	.long	.LVL8
	.long	0xc24
	.uleb128 0x18
	.long	.LVL11
	.long	0xc32
	.byte	0
	.uleb128 0x19
	.long	0xd1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2e4
	.uleb128 0xf
	.long	0xe3
	.long	.LLST6
	.uleb128 0xf
	.long	0xee
	.long	.LLST7
	.uleb128 0xf
	.long	0xf9
	.long	.LLST8
	.uleb128 0x15
	.long	0x104
	.byte	0
	.uleb128 0x10
	.long	0x10d
	.long	.LLST9
	.uleb128 0x1a
	.long	.LVL16
	.byte	0x1
	.long	0x1ab
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x17
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF2376
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x42
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x382
	.uleb128 0x1c
	.long	.LASF2364
	.byte	0x1
	.byte	0x3a
	.long	0x54
	.long	.LLST10
	.uleb128 0x1c
	.long	.LASF2366
	.byte	0x1
	.byte	0x3a
	.long	0x119
	.long	.LLST11
	.uleb128 0x1d
	.long	0xd1
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x3b
	.uleb128 0xf
	.long	0xf9
	.long	.LLST12
	.uleb128 0x1e
	.long	0xee
	.byte	0x1
	.uleb128 0xf
	.long	0xe3
	.long	.LLST13
	.uleb128 0x13
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x15
	.long	0x104
	.byte	0
	.uleb128 0x15
	.long	0x10d
	.byte	0
	.uleb128 0x1a
	.long	.LVL21
	.byte	0x1
	.long	0x1ab
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF2374
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST14
	.byte	0x1
	.long	0x420
	.uleb128 0x1c
	.long	.LASF2364
	.byte	0x1
	.byte	0x41
	.long	0x54
	.long	.LLST15
	.uleb128 0x1c
	.long	.LASF2365
	.byte	0x1
	.byte	0x41
	.long	0x54
	.long	.LLST16
	.uleb128 0x1c
	.long	.LASF2366
	.byte	0x1
	.byte	0x41
	.long	0x119
	.long	.LLST17
	.uleb128 0x20
	.long	.LBB24
	.long	.LBE24
	.long	0x3ed
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x54
	.long	.LLST18
	.uleb128 0x18
	.long	.LVL29
	.long	0xbfe
	.byte	0
	.uleb128 0x16
	.long	.LVL24
	.long	0xbe6
	.long	0x401
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd0
	.byte	0
	.uleb128 0x16
	.long	.LVL25
	.long	0xbfe
	.long	0x415
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL32
	.byte	0x1
	.long	0xc32
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF2375
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST19
	.byte	0x1
	.long	0x47a
	.uleb128 0x1c
	.long	.LASF2364
	.byte	0x1
	.byte	0x50
	.long	0x54
	.long	.LLST20
	.uleb128 0x1c
	.long	.LASF2366
	.byte	0x1
	.byte	0x50
	.long	0x54
	.long	.LLST21
	.uleb128 0x23
	.long	.LVL37
	.long	0x382
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x11f
	.long	.LFB26
	.long	.LFE26
	.long	.LLST22
	.byte	0x1
	.long	0x509
	.uleb128 0xf
	.long	0x12d
	.long	.LLST23
	.uleb128 0xf
	.long	0x138
	.long	.LLST24
	.uleb128 0xf
	.long	0x143
	.long	.LLST25
	.uleb128 0xf
	.long	0x14e
	.long	.LLST26
	.uleb128 0x13
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x24
	.long	0x15a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x20
	.long	.LBB26
	.long	.LBE26
	.long	0x4ec
	.uleb128 0x10
	.long	0x164
	.long	.LLST27
	.uleb128 0x23
	.long	.LVL45
	.long	0x420
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL41
	.long	0x2e4
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF2377
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0x42
	.long	.LFB15
	.long	.LFE15
	.long	.LLST28
	.byte	0x1
	.long	0x5be
	.uleb128 0x1c
	.long	.LASF2364
	.byte	0x1
	.byte	0x57
	.long	0x54
	.long	.LLST29
	.uleb128 0x1c
	.long	.LASF2368
	.byte	0x1
	.byte	0x57
	.long	0x54
	.long	.LLST30
	.uleb128 0x1c
	.long	.LASF2365
	.byte	0x1
	.byte	0x57
	.long	0x54
	.long	.LLST31
	.uleb128 0x1c
	.long	.LASF2366
	.byte	0x1
	.byte	0x57
	.long	0x119
	.long	.LLST32
	.uleb128 0x26
	.long	.LASF2367
	.byte	0x1
	.byte	0x5d
	.long	0x42
	.long	.LLST33
	.uleb128 0x13
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x5f
	.long	0x54
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x20
	.long	.LBB28
	.long	.LBE28
	.long	0x5a0
	.uleb128 0x7
	.long	.LASF2369
	.byte	0x1
	.byte	0x61
	.long	0x54
	.byte	0
	.uleb128 0x23
	.long	.LVL51
	.long	0x2e4
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF2378
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x42
	.long	.LFB16
	.long	.LFE16
	.long	.LLST34
	.byte	0x1
	.long	0x63f
	.uleb128 0x1c
	.long	.LASF2364
	.byte	0x1
	.byte	0x6d
	.long	0x54
	.long	.LLST35
	.uleb128 0x1c
	.long	.LASF2379
	.byte	0x1
	.byte	0x6d
	.long	0x54
	.long	.LLST36
	.uleb128 0x1c
	.long	.LASF2366
	.byte	0x1
	.byte	0x6d
	.long	0x119
	.long	.LLST37
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x6e
	.long	0x54
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x28
	.long	.LASF2367
	.byte	0x1
	.byte	0x6f
	.long	0x54
	.byte	0x1
	.byte	0x68
	.uleb128 0x23
	.long	.LVL58
	.long	0x2e4
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x11f
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6a1
	.uleb128 0xf
	.long	0x12d
	.long	.LLST38
	.uleb128 0xf
	.long	0x138
	.long	.LLST39
	.uleb128 0xf
	.long	0x143
	.long	.LLST40
	.uleb128 0xf
	.long	0x14e
	.long	.LLST41
	.uleb128 0x1a
	.long	.LVL62
	.byte	0x1
	.long	0x47a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x17
	.byte	0x1
	.byte	0x62
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF2380
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST42
	.byte	0x1
	.long	0x724
	.uleb128 0x1c
	.long	.LASF2364
	.byte	0x1
	.byte	0x8f
	.long	0x54
	.long	.LLST43
	.uleb128 0x1c
	.long	.LASF2379
	.byte	0x1
	.byte	0x8f
	.long	0x54
	.long	.LLST44
	.uleb128 0x1c
	.long	.LASF2366
	.byte	0x1
	.byte	0x8f
	.long	0x54
	.long	.LLST45
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x90
	.long	0x54
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.long	.LVL65
	.long	0x2e4
	.long	0x713
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x23
	.long	.LVL66
	.long	0x420
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF2381
	.byte	0x1
	.word	0x1b1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x75a
	.uleb128 0x1a
	.long	.LVL69
	.byte	0x1
	.long	0x6a1
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF2382
	.byte	0x1
	.word	0x1b8
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x790
	.uleb128 0x1a
	.long	.LVL70
	.byte	0x1
	.long	0x6a1
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF2383
	.byte	0x1
	.word	0x1c0
	.long	0x54
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7d7
	.uleb128 0x23
	.long	.LVL71
	.long	0x509
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x36
	.uleb128 0x17
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	buffer
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF2384
	.byte	0x1
	.word	0x1cb
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x9f7
	.uleb128 0x2b
	.long	0x91
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x1cf
	.long	0x82a
	.uleb128 0x12
	.long	0x9e
	.byte	0x4
	.long	0x41200000
	.uleb128 0x13
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x14
	.long	0xa9
	.byte	0x4
	.long	0x43480000
	.uleb128 0x15
	.long	0xb4
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x172
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x1d3
	.long	0x866
	.uleb128 0x12
	.long	0x17f
	.byte	0x4
	.long	0x42c80000
	.uleb128 0x13
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x14
	.long	0x18a
	.byte	0x4
	.long	0x49f42400
	.uleb128 0x2c
	.long	0x195
	.long	0x1e8480
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x172
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x1d8
	.long	0x8a2
	.uleb128 0x12
	.long	0x17f
	.byte	0x4
	.long	0x41200000
	.uleb128 0x13
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x14
	.long	0x18a
	.byte	0x4
	.long	0x48435000
	.uleb128 0x2c
	.long	0x195
	.long	0x30d40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x11f
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x1dd
	.long	0x8ee
	.uleb128 0x1e
	.long	0x14e
	.byte	0x1
	.uleb128 0x1e
	.long	0x143
	.byte	0x3
	.uleb128 0x1e
	.long	0x138
	.byte	0x2
	.uleb128 0x1e
	.long	0x12d
	.byte	0x6b
	.uleb128 0x23
	.long	.LVL76
	.long	0x47a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x11f
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x1df
	.long	0x939
	.uleb128 0x1e
	.long	0x14e
	.byte	0x3
	.uleb128 0x1e
	.long	0x143
	.byte	0x3
	.uleb128 0x1e
	.long	0x138
	.byte	0x2
	.uleb128 0x1e
	.long	0x12d
	.byte	0x1a
	.uleb128 0x23
	.long	.LVL77
	.long	0x47a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4a
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x11f
	.long	.LBB53
	.long	.LBE53
	.byte	0x1
	.word	0x1e3
	.long	0x984
	.uleb128 0x1e
	.long	0x14e
	.byte	0x3
	.uleb128 0x1e
	.long	0x143
	.byte	0x2
	.uleb128 0x1e
	.long	0x138
	.byte	0x4
	.uleb128 0x1e
	.long	0x12d
	.byte	0x1b
	.uleb128 0x23
	.long	.LVL79
	.long	0x47a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4b
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x11f
	.long	.LBB55
	.long	.LBE55
	.byte	0x1
	.word	0x1e5
	.long	0x9d0
	.uleb128 0x1e
	.long	0x14e
	.byte	0
	.uleb128 0x1e
	.long	0x143
	.byte	0x2
	.uleb128 0x1e
	.long	0x138
	.byte	0x4
	.uleb128 0x1e
	.long	0x12d
	.byte	0x1c
	.uleb128 0x1a
	.long	.LVL80
	.byte	0x1
	.long	0x47a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4c
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LVL72
	.long	0xc3c
	.uleb128 0x18
	.long	.LVL74
	.long	0x724
	.uleb128 0x23
	.long	.LVL78
	.long	0x420
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x49
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF2385
	.byte	0x1
	.word	0x1f0
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST46
	.byte	0x1
	.long	0xa90
	.uleb128 0x2e
	.string	"ax"
	.byte	0x1
	.word	0x1f0
	.long	0xa90
	.long	.LLST47
	.uleb128 0x2e
	.string	"ay"
	.byte	0x1
	.word	0x1f0
	.long	0xa90
	.long	.LLST48
	.uleb128 0x2e
	.string	"az"
	.byte	0x1
	.word	0x1f0
	.long	0xa90
	.long	.LLST49
	.uleb128 0x2e
	.string	"gx"
	.byte	0x1
	.word	0x1f0
	.long	0xa90
	.long	.LLST50
	.uleb128 0x2e
	.string	"gy"
	.byte	0x1
	.word	0x1f0
	.long	0xa90
	.long	.LLST51
	.uleb128 0x2e
	.string	"gz"
	.byte	0x1
	.word	0x1f0
	.long	0xa90
	.long	.LLST52
	.uleb128 0x23
	.long	.LVL85
	.long	0xd1
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x3e
	.uleb128 0x17
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	buffer
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x66
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF2386
	.byte	0x1
	.word	0x1fe
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST53
	.byte	0x1
	.long	0xbb2
	.uleb128 0x2e
	.string	"axg"
	.byte	0x1
	.word	0x1fe
	.long	0xbb2
	.long	.LLST54
	.uleb128 0x2e
	.string	"ayg"
	.byte	0x1
	.word	0x1fe
	.long	0xbb2
	.long	.LLST55
	.uleb128 0x2e
	.string	"azg"
	.byte	0x1
	.word	0x1fe
	.long	0xbb2
	.long	.LLST56
	.uleb128 0x30
	.long	.LASF2387
	.byte	0x1
	.word	0x1fe
	.long	0xbb2
	.long	.LLST57
	.uleb128 0x30
	.long	.LASF2388
	.byte	0x1
	.word	0x1fe
	.long	0xbb2
	.long	.LLST58
	.uleb128 0x30
	.long	.LASF2389
	.byte	0x1
	.word	0x1fe
	.long	0xbb2
	.long	.LLST59
	.uleb128 0x31
	.string	"ax"
	.byte	0x1
	.word	0x1ff
	.long	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 11
	.uleb128 0x31
	.string	"ay"
	.byte	0x1
	.word	0x200
	.long	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 9
	.uleb128 0x31
	.string	"az"
	.byte	0x1
	.word	0x201
	.long	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 7
	.uleb128 0x31
	.string	"gx"
	.byte	0x1
	.word	0x202
	.long	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x31
	.string	"gy"
	.byte	0x1
	.word	0x203
	.long	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x31
	.string	"gz"
	.byte	0x1
	.word	0x204
	.long	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x23
	.long	.LVL99
	.long	0x9f7
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 6
	.uleb128 0x17
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 4
	.uleb128 0x17
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 2
	.uleb128 0x17
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x17
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xca
	.uleb128 0x32
	.long	0x54
	.long	0xbc8
	.uleb128 0x33
	.long	0xbc8
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2390
	.uleb128 0x34
	.long	.LASF2402
	.byte	0x1
	.byte	0x1c
	.long	0xbe1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	buffer
	.uleb128 0x35
	.long	0xbb8
	.uleb128 0x36
	.byte	0x1
	.long	.LASF2392
	.byte	0x4
	.byte	0x78
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.long	0xbfe
	.uleb128 0x37
	.long	0x5f
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF2393
	.byte	0x4
	.byte	0x95
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.long	0xc16
	.uleb128 0x37
	.long	0x5f
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF2394
	.byte	0x4
	.byte	0xa2
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.long	.LASF2395
	.byte	0x4
	.byte	0x9c
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF2396
	.byte	0x4
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF2397
	.byte	0x4
	.byte	0x66
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x2119
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB25
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
	.sleb128 13
	.long	.LCFI10
	.long	.LFE25
	.word	0x2
	.byte	0x8c
	.sleb128 13
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL12
	.word	0x1
	.byte	0x61
	.long	.LVL12
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x1
	.byte	0x66
	.long	.LVL2-1
	.long	.LVL14
	.word	0x1
	.byte	0x5d
	.long	.LVL14
	.long	.LFE25
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL9
	.word	0x1
	.byte	0x60
	.long	.LVL9
	.long	.LVL10
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL10
	.long	.LVL13
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x60
	.long	.LVL6
	.long	.LVL10
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x60
	.long	.LVL11
	.long	.LVL14
	.word	0x1
	.byte	0x5d
	.long	.LVL14
	.long	.LFE25
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL16-1
	.word	0x1
	.byte	0x68
	.long	.LVL16-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16-1
	.word	0x1
	.byte	0x66
	.long	.LVL16-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL16
	.long	.LFE11
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL16-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16-1
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL16
	.long	.LFE11
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL18
	.long	.LVL21-1
	.word	0x1
	.byte	0x68
	.long	.LVL21-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL18
	.long	.LVL20
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL19
	.long	.LVL21-1
	.word	0x1
	.byte	0x68
	.long	.LVL21-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LFB13
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI18
	.long	.LFE13
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST15:
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LVL26
	.word	0x1
	.byte	0x60
	.long	.LVL26
	.long	.LVL32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL32
	.long	.LVL34
	.word	0x1
	.byte	0x60
	.long	.LVL34
	.long	.LFE13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST16:
	.long	.LVL22
	.long	.LVL24-1
	.word	0x1
	.byte	0x66
	.long	.LVL24-1
	.long	.LVL30
	.word	0x1
	.byte	0x61
	.long	.LVL30
	.long	.LVL32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x61
	.long	.LVL33
	.long	.LFE13
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST17:
	.long	.LVL22
	.long	.LVL24-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL32
	.long	.LFE13
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.word	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.word	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LFB14
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI22
	.long	.LFE14
	.word	0x2
	.byte	0x8c
	.sleb128 5
	.long	0
	.long	0
.LLST20:
	.long	.LVL35
	.long	.LVL37-1
	.word	0x1
	.byte	0x68
	.long	.LVL37-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x66
	.long	.LVL36
	.long	.LVL38
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	.LVL38
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 -2
	.long	0
	.long	0
.LLST22:
	.long	.LFB26
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI28
	.long	.LFE26
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
.LLST23:
	.long	.LVL39
	.long	.LVL41-1
	.word	0x1
	.byte	0x68
	.long	.LVL41-1
	.long	.LVL46
	.word	0x1
	.byte	0x61
	.long	.LVL46
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL39
	.long	.LVL40
	.word	0x1
	.byte	0x66
	.long	.LVL40
	.long	.LVL47
	.word	0x1
	.byte	0x60
	.long	.LVL47
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL39
	.long	.LVL41-1
	.word	0x1
	.byte	0x64
	.long	.LVL41-1
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL39
	.long	.LVL41-1
	.word	0x1
	.byte	0x62
	.long	.LVL41-1
	.long	.LVL43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL42
	.long	.LVL44
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST28:
	.long	.LFB15
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
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI35
	.long	.LFE15
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
.LLST29:
	.long	.LVL48
	.long	.LVL51-1
	.word	0x1
	.byte	0x68
	.long	.LVL51-1
	.long	.LVL52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x68
	.long	.LVL53
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL48
	.long	.LVL50
	.word	0x1
	.byte	0x66
	.long	.LVL50
	.long	.LVL55
	.word	0x1
	.byte	0x5f
	.long	.LVL55
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL48
	.long	.LVL51-1
	.word	0x1
	.byte	0x64
	.long	.LVL51-1
	.long	.LVL52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x64
	.long	.LVL53
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL48
	.long	.LVL51-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51-1
	.long	.LVL54
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL49
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL52
	.long	.LVL53
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL53
	.long	.LFE15
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LFB16
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI42
	.long	.LFE16
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST35:
	.long	.LVL56
	.long	.LVL58-1
	.word	0x1
	.byte	0x68
	.long	.LVL58-1
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x66
	.long	.LVL57
	.long	.LVL60
	.word	0x1
	.byte	0x5f
	.long	.LVL60
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL56
	.long	.LVL58-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58-1
	.long	.LVL59
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LFE16
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST38:
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x68
	.long	.LVL62-1
	.long	.LVL62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL62
	.long	.LFE17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST39:
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x66
	.long	.LVL62-1
	.long	.LVL62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL62
	.long	.LFE17
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST40:
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x64
	.long	.LVL62-1
	.long	.LVL62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL62
	.long	.LFE17
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST41:
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x62
	.long	.LVL62-1
	.long	.LVL62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL62
	.long	.LFE17
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST42:
	.long	.LFB18
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI48
	.long	.LFE18
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST43:
	.long	.LVL63
	.long	.LVL65-1
	.word	0x1
	.byte	0x68
	.long	.LVL65-1
	.long	.LVL67
	.word	0x1
	.byte	0x61
	.long	.LVL67
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x66
	.long	.LVL64
	.long	.LVL68
	.word	0x1
	.byte	0x60
	.long	.LVL68
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL63
	.long	.LVL65-1
	.word	0x1
	.byte	0x64
	.long	.LVL65-1
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LFB23
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI60
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	0
	.long	0
.LLST47:
	.long	.LVL81
	.long	.LVL84
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84
	.long	.LVL86
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL86
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL81
	.long	.LVL83
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL90
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL81
	.long	.LVL82
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82
	.long	.LVL89
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL81
	.long	.LVL85-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL85-1
	.long	.LVL91
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL91
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL81
	.long	.LVL87
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL81
	.long	.LVL88
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LFE23
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST53:
	.long	.LFB24
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI72
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI73
	.long	.LCFI74
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI74
	.long	.LCFI75
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI75
	.long	.LCFI76
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI76
	.long	.LCFI77
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI77
	.long	.LCFI78
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI78
	.long	.LCFI79
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI79
	.long	.LCFI80
	.word	0x2
	.byte	0x8c
	.sleb128 20
	.long	.LCFI80
	.long	.LFE24
	.word	0x2
	.byte	0x8c
	.sleb128 32
	.long	0
	.long	0
.LLST54:
	.long	.LVL92
	.long	.LVL93
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL115
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL115
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL92
	.long	.LVL98
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL98
	.long	.LVL114
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL114
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL92
	.long	.LVL97
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97
	.long	.LVL113
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL113
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL92
	.long	.LVL96
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LVL112
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL112
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL92
	.long	.LVL95
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL95
	.long	.LVL116
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL116
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL92
	.long	.LVL94
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94
	.long	.LVL117
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL117
	.long	.LFE24
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x94
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB25
	.long	.LFE25
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB26
	.long	.LFE26
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x2
	.long	.LASF0
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF2
	.byte	0x5
	.uleb128 0x1
	.long	.LASF3
	.byte	0x5
	.uleb128 0x1
	.long	.LASF4
	.byte	0x5
	.uleb128 0x1
	.long	.LASF5
	.byte	0x5
	.uleb128 0x1
	.long	.LASF6
	.byte	0x5
	.uleb128 0x1
	.long	.LASF7
	.byte	0x5
	.uleb128 0x1
	.long	.LASF8
	.byte	0x5
	.uleb128 0x1
	.long	.LASF9
	.byte	0x5
	.uleb128 0x1
	.long	.LASF10
	.byte	0x5
	.uleb128 0x1
	.long	.LASF11
	.byte	0x5
	.uleb128 0x1
	.long	.LASF12
	.byte	0x5
	.uleb128 0x1
	.long	.LASF13
	.byte	0x5
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.uleb128 0x1
	.long	.LASF52
	.byte	0x5
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.uleb128 0x1
	.long	.LASF54
	.byte	0x5
	.uleb128 0x1
	.long	.LASF55
	.byte	0x5
	.uleb128 0x1
	.long	.LASF56
	.byte	0x5
	.uleb128 0x1
	.long	.LASF57
	.byte	0x5
	.uleb128 0x1
	.long	.LASF58
	.byte	0x5
	.uleb128 0x1
	.long	.LASF59
	.byte	0x5
	.uleb128 0x1
	.long	.LASF60
	.byte	0x5
	.uleb128 0x1
	.long	.LASF61
	.byte	0x5
	.uleb128 0x1
	.long	.LASF62
	.byte	0x5
	.uleb128 0x1
	.long	.LASF63
	.byte	0x5
	.uleb128 0x1
	.long	.LASF64
	.byte	0x5
	.uleb128 0x1
	.long	.LASF65
	.byte	0x5
	.uleb128 0x1
	.long	.LASF66
	.byte	0x5
	.uleb128 0x1
	.long	.LASF67
	.byte	0x5
	.uleb128 0x1
	.long	.LASF68
	.byte	0x5
	.uleb128 0x1
	.long	.LASF69
	.byte	0x5
	.uleb128 0x1
	.long	.LASF70
	.byte	0x5
	.uleb128 0x1
	.long	.LASF71
	.byte	0x5
	.uleb128 0x1
	.long	.LASF72
	.byte	0x5
	.uleb128 0x1
	.long	.LASF73
	.byte	0x5
	.uleb128 0x1
	.long	.LASF74
	.byte	0x5
	.uleb128 0x1
	.long	.LASF75
	.byte	0x5
	.uleb128 0x1
	.long	.LASF76
	.byte	0x5
	.uleb128 0x1
	.long	.LASF77
	.byte	0x5
	.uleb128 0x1
	.long	.LASF78
	.byte	0x5
	.uleb128 0x1
	.long	.LASF79
	.byte	0x5
	.uleb128 0x1
	.long	.LASF80
	.byte	0x5
	.uleb128 0x1
	.long	.LASF81
	.byte	0x5
	.uleb128 0x1
	.long	.LASF82
	.byte	0x5
	.uleb128 0x1
	.long	.LASF83
	.byte	0x5
	.uleb128 0x1
	.long	.LASF84
	.byte	0x5
	.uleb128 0x1
	.long	.LASF85
	.byte	0x5
	.uleb128 0x1
	.long	.LASF86
	.byte	0x5
	.uleb128 0x1
	.long	.LASF87
	.byte	0x5
	.uleb128 0x1
	.long	.LASF88
	.byte	0x5
	.uleb128 0x1
	.long	.LASF89
	.byte	0x5
	.uleb128 0x1
	.long	.LASF90
	.byte	0x5
	.uleb128 0x1
	.long	.LASF91
	.byte	0x5
	.uleb128 0x1
	.long	.LASF92
	.byte	0x5
	.uleb128 0x1
	.long	.LASF93
	.byte	0x5
	.uleb128 0x1
	.long	.LASF94
	.byte	0x5
	.uleb128 0x1
	.long	.LASF95
	.byte	0x5
	.uleb128 0x1
	.long	.LASF96
	.byte	0x5
	.uleb128 0x1
	.long	.LASF97
	.byte	0x5
	.uleb128 0x1
	.long	.LASF98
	.byte	0x5
	.uleb128 0x1
	.long	.LASF99
	.byte	0x5
	.uleb128 0x1
	.long	.LASF100
	.byte	0x5
	.uleb128 0x1
	.long	.LASF101
	.byte	0x5
	.uleb128 0x1
	.long	.LASF102
	.byte	0x5
	.uleb128 0x1
	.long	.LASF103
	.byte	0x5
	.uleb128 0x1
	.long	.LASF104
	.byte	0x5
	.uleb128 0x1
	.long	.LASF105
	.byte	0x5
	.uleb128 0x1
	.long	.LASF106
	.byte	0x5
	.uleb128 0x1
	.long	.LASF107
	.byte	0x5
	.uleb128 0x1
	.long	.LASF108
	.byte	0x5
	.uleb128 0x1
	.long	.LASF109
	.byte	0x5
	.uleb128 0x1
	.long	.LASF110
	.byte	0x5
	.uleb128 0x1
	.long	.LASF111
	.byte	0x5
	.uleb128 0x1
	.long	.LASF112
	.byte	0x5
	.uleb128 0x1
	.long	.LASF113
	.byte	0x5
	.uleb128 0x1
	.long	.LASF114
	.byte	0x5
	.uleb128 0x1
	.long	.LASF115
	.byte	0x5
	.uleb128 0x1
	.long	.LASF116
	.byte	0x5
	.uleb128 0x1
	.long	.LASF117
	.byte	0x5
	.uleb128 0x1
	.long	.LASF118
	.byte	0x5
	.uleb128 0x1
	.long	.LASF119
	.byte	0x5
	.uleb128 0x1
	.long	.LASF120
	.byte	0x5
	.uleb128 0x1
	.long	.LASF121
	.byte	0x5
	.uleb128 0x1
	.long	.LASF122
	.byte	0x5
	.uleb128 0x1
	.long	.LASF123
	.byte	0x5
	.uleb128 0x1
	.long	.LASF124
	.byte	0x5
	.uleb128 0x1
	.long	.LASF125
	.byte	0x5
	.uleb128 0x1
	.long	.LASF126
	.byte	0x5
	.uleb128 0x1
	.long	.LASF127
	.byte	0x5
	.uleb128 0x1
	.long	.LASF128
	.byte	0x5
	.uleb128 0x1
	.long	.LASF129
	.byte	0x5
	.uleb128 0x1
	.long	.LASF130
	.byte	0x5
	.uleb128 0x1
	.long	.LASF131
	.byte	0x5
	.uleb128 0x1
	.long	.LASF132
	.byte	0x5
	.uleb128 0x1
	.long	.LASF133
	.byte	0x5
	.uleb128 0x1
	.long	.LASF134
	.byte	0x5
	.uleb128 0x1
	.long	.LASF135
	.byte	0x5
	.uleb128 0x1
	.long	.LASF136
	.byte	0x5
	.uleb128 0x1
	.long	.LASF137
	.byte	0x5
	.uleb128 0x1
	.long	.LASF138
	.byte	0x5
	.uleb128 0x1
	.long	.LASF139
	.byte	0x5
	.uleb128 0x1
	.long	.LASF140
	.byte	0x5
	.uleb128 0x1
	.long	.LASF141
	.byte	0x5
	.uleb128 0x1
	.long	.LASF142
	.byte	0x5
	.uleb128 0x1
	.long	.LASF143
	.byte	0x5
	.uleb128 0x1
	.long	.LASF144
	.byte	0x5
	.uleb128 0x1
	.long	.LASF145
	.byte	0x5
	.uleb128 0x1
	.long	.LASF146
	.byte	0x5
	.uleb128 0x1
	.long	.LASF147
	.byte	0x5
	.uleb128 0x1
	.long	.LASF148
	.byte	0x5
	.uleb128 0x1
	.long	.LASF149
	.byte	0x5
	.uleb128 0x1
	.long	.LASF150
	.byte	0x5
	.uleb128 0x1
	.long	.LASF151
	.byte	0x5
	.uleb128 0x1
	.long	.LASF152
	.byte	0x5
	.uleb128 0x1
	.long	.LASF153
	.byte	0x5
	.uleb128 0x1
	.long	.LASF154
	.byte	0x5
	.uleb128 0x1
	.long	.LASF155
	.byte	0x5
	.uleb128 0x1
	.long	.LASF156
	.byte	0x5
	.uleb128 0x1
	.long	.LASF157
	.byte	0x5
	.uleb128 0x1
	.long	.LASF158
	.byte	0x5
	.uleb128 0x1
	.long	.LASF159
	.byte	0x5
	.uleb128 0x1
	.long	.LASF160
	.byte	0x5
	.uleb128 0x1
	.long	.LASF161
	.byte	0x5
	.uleb128 0x1
	.long	.LASF162
	.byte	0x5
	.uleb128 0x1
	.long	.LASF163
	.byte	0x5
	.uleb128 0x1
	.long	.LASF164
	.byte	0x5
	.uleb128 0x1
	.long	.LASF165
	.byte	0x5
	.uleb128 0x1
	.long	.LASF166
	.byte	0x5
	.uleb128 0x1
	.long	.LASF167
	.byte	0x5
	.uleb128 0x1
	.long	.LASF168
	.byte	0x5
	.uleb128 0x1
	.long	.LASF169
	.byte	0x5
	.uleb128 0x1
	.long	.LASF170
	.byte	0x5
	.uleb128 0x1
	.long	.LASF171
	.byte	0x5
	.uleb128 0x1
	.long	.LASF172
	.byte	0x5
	.uleb128 0x1
	.long	.LASF173
	.byte	0x5
	.uleb128 0x1
	.long	.LASF174
	.byte	0x5
	.uleb128 0x1
	.long	.LASF175
	.byte	0x5
	.uleb128 0x1
	.long	.LASF176
	.byte	0x5
	.uleb128 0x1
	.long	.LASF177
	.byte	0x5
	.uleb128 0x1
	.long	.LASF178
	.byte	0x5
	.uleb128 0x1
	.long	.LASF179
	.byte	0x5
	.uleb128 0x1
	.long	.LASF180
	.byte	0x5
	.uleb128 0x1
	.long	.LASF181
	.byte	0x5
	.uleb128 0x1
	.long	.LASF182
	.byte	0x5
	.uleb128 0x1
	.long	.LASF183
	.byte	0x5
	.uleb128 0x1
	.long	.LASF184
	.byte	0x5
	.uleb128 0x1
	.long	.LASF185
	.byte	0x5
	.uleb128 0x1
	.long	.LASF186
	.byte	0x5
	.uleb128 0x1
	.long	.LASF187
	.byte	0x5
	.uleb128 0x1
	.long	.LASF188
	.byte	0x5
	.uleb128 0x1
	.long	.LASF189
	.byte	0x5
	.uleb128 0x1
	.long	.LASF190
	.byte	0x5
	.uleb128 0x1
	.long	.LASF191
	.byte	0x5
	.uleb128 0x1
	.long	.LASF192
	.byte	0x5
	.uleb128 0x1
	.long	.LASF193
	.byte	0x5
	.uleb128 0x1
	.long	.LASF194
	.byte	0x5
	.uleb128 0x1
	.long	.LASF195
	.byte	0x5
	.uleb128 0x1
	.long	.LASF196
	.byte	0x5
	.uleb128 0x1
	.long	.LASF197
	.byte	0x5
	.uleb128 0x1
	.long	.LASF198
	.byte	0x5
	.uleb128 0x1
	.long	.LASF199
	.byte	0x5
	.uleb128 0x1
	.long	.LASF200
	.byte	0x5
	.uleb128 0x1
	.long	.LASF201
	.byte	0x5
	.uleb128 0x1
	.long	.LASF202
	.byte	0x5
	.uleb128 0x1
	.long	.LASF203
	.byte	0x5
	.uleb128 0x1
	.long	.LASF204
	.byte	0x5
	.uleb128 0x1
	.long	.LASF205
	.byte	0x5
	.uleb128 0x1
	.long	.LASF206
	.byte	0x5
	.uleb128 0x1
	.long	.LASF207
	.byte	0x5
	.uleb128 0x1
	.long	.LASF208
	.byte	0x5
	.uleb128 0x1
	.long	.LASF209
	.byte	0x5
	.uleb128 0x1
	.long	.LASF210
	.byte	0x5
	.uleb128 0x1
	.long	.LASF211
	.byte	0x5
	.uleb128 0x1
	.long	.LASF212
	.byte	0x5
	.uleb128 0x1
	.long	.LASF213
	.byte	0x5
	.uleb128 0x1
	.long	.LASF214
	.byte	0x5
	.uleb128 0x1
	.long	.LASF215
	.byte	0x5
	.uleb128 0x1
	.long	.LASF216
	.byte	0x5
	.uleb128 0x1
	.long	.LASF217
	.byte	0x5
	.uleb128 0x1
	.long	.LASF218
	.byte	0x5
	.uleb128 0x1
	.long	.LASF219
	.byte	0x5
	.uleb128 0x1
	.long	.LASF220
	.byte	0x5
	.uleb128 0x1
	.long	.LASF221
	.byte	0x5
	.uleb128 0x1
	.long	.LASF222
	.byte	0x5
	.uleb128 0x1
	.long	.LASF223
	.byte	0x5
	.uleb128 0x1
	.long	.LASF224
	.byte	0x5
	.uleb128 0x1
	.long	.LASF225
	.byte	0x5
	.uleb128 0x1
	.long	.LASF226
	.byte	0x5
	.uleb128 0x1
	.long	.LASF227
	.byte	0x5
	.uleb128 0x1
	.long	.LASF228
	.byte	0x5
	.uleb128 0x1
	.long	.LASF229
	.byte	0x5
	.uleb128 0x1
	.long	.LASF230
	.byte	0x5
	.uleb128 0x1
	.long	.LASF231
	.byte	0x5
	.uleb128 0x1
	.long	.LASF232
	.byte	0x5
	.uleb128 0x1
	.long	.LASF233
	.byte	0x5
	.uleb128 0x1
	.long	.LASF234
	.byte	0x5
	.uleb128 0x1
	.long	.LASF235
	.byte	0x5
	.uleb128 0x1
	.long	.LASF236
	.byte	0x5
	.uleb128 0x1
	.long	.LASF237
	.byte	0x5
	.uleb128 0x1
	.long	.LASF238
	.byte	0x5
	.uleb128 0x1
	.long	.LASF239
	.byte	0x5
	.uleb128 0x1
	.long	.LASF240
	.byte	0x5
	.uleb128 0x1
	.long	.LASF241
	.byte	0x5
	.uleb128 0x1
	.long	.LASF242
	.byte	0x5
	.uleb128 0x1
	.long	.LASF243
	.byte	0x5
	.uleb128 0x1
	.long	.LASF244
	.byte	0x5
	.uleb128 0x1
	.long	.LASF245
	.byte	0x5
	.uleb128 0x1
	.long	.LASF246
	.byte	0x5
	.uleb128 0x1
	.long	.LASF247
	.byte	0x5
	.uleb128 0x1
	.long	.LASF248
	.byte	0x5
	.uleb128 0x1
	.long	.LASF249
	.byte	0x5
	.uleb128 0x1
	.long	.LASF250
	.byte	0x5
	.uleb128 0x1
	.long	.LASF251
	.byte	0x5
	.uleb128 0x1
	.long	.LASF252
	.byte	0x5
	.uleb128 0x1
	.long	.LASF253
	.byte	0x5
	.uleb128 0x1
	.long	.LASF254
	.byte	0x5
	.uleb128 0x1
	.long	.LASF255
	.byte	0x5
	.uleb128 0x1
	.long	.LASF256
	.byte	0x5
	.uleb128 0x1
	.long	.LASF257
	.byte	0x5
	.uleb128 0x1
	.long	.LASF258
	.byte	0x5
	.uleb128 0x1
	.long	.LASF259
	.byte	0x5
	.uleb128 0x1
	.long	.LASF260
	.byte	0x5
	.uleb128 0x1
	.long	.LASF261
	.byte	0x5
	.uleb128 0x1
	.long	.LASF262
	.byte	0x5
	.uleb128 0x1
	.long	.LASF263
	.byte	0x5
	.uleb128 0x1
	.long	.LASF264
	.byte	0x5
	.uleb128 0x1
	.long	.LASF265
	.byte	0x5
	.uleb128 0x1
	.long	.LASF266
	.byte	0x5
	.uleb128 0x1
	.long	.LASF267
	.byte	0x5
	.uleb128 0x1
	.long	.LASF268
	.byte	0x5
	.uleb128 0x1
	.long	.LASF269
	.byte	0x5
	.uleb128 0x1
	.long	.LASF270
	.byte	0x5
	.uleb128 0x1
	.long	.LASF271
	.byte	0x5
	.uleb128 0x1
	.long	.LASF272
	.byte	0x5
	.uleb128 0x1
	.long	.LASF273
	.byte	0x5
	.uleb128 0x1
	.long	.LASF274
	.byte	0x5
	.uleb128 0x1
	.long	.LASF275
	.byte	0x5
	.uleb128 0x1
	.long	.LASF276
	.byte	0x5
	.uleb128 0x1
	.long	.LASF277
	.byte	0x5
	.uleb128 0x1
	.long	.LASF278
	.byte	0x5
	.uleb128 0x1
	.long	.LASF279
	.byte	0x5
	.uleb128 0x1
	.long	.LASF280
	.byte	0x5
	.uleb128 0x1
	.long	.LASF281
	.byte	0x5
	.uleb128 0x1
	.long	.LASF282
	.byte	0x5
	.uleb128 0x1
	.long	.LASF283
	.byte	0x5
	.uleb128 0x1
	.long	.LASF284
	.byte	0x5
	.uleb128 0x1
	.long	.LASF285
	.byte	0x5
	.uleb128 0x1
	.long	.LASF286
	.byte	0x5
	.uleb128 0x1
	.long	.LASF287
	.byte	0x5
	.uleb128 0x1
	.long	.LASF288
	.byte	0x5
	.uleb128 0x1
	.long	.LASF289
	.byte	0x5
	.uleb128 0x1
	.long	.LASF290
	.byte	0x5
	.uleb128 0x1
	.long	.LASF291
	.byte	0x5
	.uleb128 0x1
	.long	.LASF292
	.byte	0x5
	.uleb128 0x1
	.long	.LASF293
	.byte	0x5
	.uleb128 0x1
	.long	.LASF294
	.byte	0x5
	.uleb128 0x1
	.long	.LASF295
	.byte	0x5
	.uleb128 0x1
	.long	.LASF296
	.byte	0x5
	.uleb128 0x1
	.long	.LASF297
	.byte	0x5
	.uleb128 0x1
	.long	.LASF298
	.byte	0x5
	.uleb128 0x1
	.long	.LASF299
	.byte	0x5
	.uleb128 0x1
	.long	.LASF300
	.byte	0x5
	.uleb128 0x1
	.long	.LASF301
	.byte	0x5
	.uleb128 0x1
	.long	.LASF302
	.byte	0x5
	.uleb128 0x1
	.long	.LASF303
	.byte	0x5
	.uleb128 0x1
	.long	.LASF304
	.byte	0x5
	.uleb128 0x1
	.long	.LASF305
	.byte	0x5
	.uleb128 0x1
	.long	.LASF306
	.byte	0x5
	.uleb128 0x1
	.long	.LASF307
	.byte	0x5
	.uleb128 0x1
	.long	.LASF308
	.byte	0x5
	.uleb128 0x1
	.long	.LASF309
	.byte	0x5
	.uleb128 0x1
	.long	.LASF310
	.byte	0x5
	.uleb128 0x1
	.long	.LASF311
	.byte	0x5
	.uleb128 0x1
	.long	.LASF312
	.byte	0x5
	.uleb128 0x1
	.long	.LASF313
	.byte	0x5
	.uleb128 0x1
	.long	.LASF314
	.byte	0x5
	.uleb128 0x1
	.long	.LASF315
	.byte	0x5
	.uleb128 0x1
	.long	.LASF316
	.byte	0x5
	.uleb128 0x1
	.long	.LASF317
	.byte	0x5
	.uleb128 0x1
	.long	.LASF318
	.byte	0x5
	.uleb128 0x1
	.long	.LASF319
	.byte	0x5
	.uleb128 0x1
	.long	.LASF320
	.byte	0x5
	.uleb128 0x1
	.long	.LASF321
	.byte	0x5
	.uleb128 0x1
	.long	.LASF322
	.byte	0x5
	.uleb128 0x1
	.long	.LASF323
	.byte	0x5
	.uleb128 0x1
	.long	.LASF324
	.byte	0x5
	.uleb128 0x1
	.long	.LASF325
	.byte	0x5
	.uleb128 0x1
	.long	.LASF326
	.byte	0x5
	.uleb128 0x1
	.long	.LASF327
	.byte	0x5
	.uleb128 0x1
	.long	.LASF328
	.byte	0x5
	.uleb128 0x1
	.long	.LASF329
	.byte	0x5
	.uleb128 0x1
	.long	.LASF330
	.byte	0x5
	.uleb128 0x1
	.long	.LASF331
	.byte	0x5
	.uleb128 0x1
	.long	.LASF332
	.byte	0x5
	.uleb128 0x1
	.long	.LASF333
	.byte	0x5
	.uleb128 0x1
	.long	.LASF334
	.byte	0x5
	.uleb128 0x1
	.long	.LASF335
	.byte	0x5
	.uleb128 0x1
	.long	.LASF336
	.byte	0x5
	.uleb128 0x1
	.long	.LASF337
	.byte	0x5
	.uleb128 0x1
	.long	.LASF338
	.byte	0x5
	.uleb128 0x1
	.long	.LASF339
	.byte	0x5
	.uleb128 0x1
	.long	.LASF340
	.byte	0x5
	.uleb128 0x1
	.long	.LASF341
	.byte	0x5
	.uleb128 0x1
	.long	.LASF342
	.byte	0x5
	.uleb128 0x1
	.long	.LASF343
	.byte	0x5
	.uleb128 0x1
	.long	.LASF344
	.byte	0x5
	.uleb128 0x1
	.long	.LASF345
	.byte	0x5
	.uleb128 0x1
	.long	.LASF346
	.byte	0x5
	.uleb128 0x1
	.long	.LASF347
	.byte	0x5
	.uleb128 0x1
	.long	.LASF348
	.byte	0x5
	.uleb128 0x1
	.long	.LASF349
	.byte	0x5
	.uleb128 0x1
	.long	.LASF350
	.byte	0x5
	.uleb128 0x1
	.long	.LASF351
	.byte	0x5
	.uleb128 0x1
	.long	.LASF352
	.byte	0x5
	.uleb128 0x1
	.long	.LASF353
	.byte	0x5
	.uleb128 0x1
	.long	.LASF354
	.byte	0x5
	.uleb128 0x1
	.long	.LASF355
	.byte	0x5
	.uleb128 0x1
	.long	.LASF356
	.byte	0x5
	.uleb128 0x1
	.long	.LASF357
	.byte	0x5
	.uleb128 0x1
	.long	.LASF358
	.byte	0x5
	.uleb128 0x1
	.long	.LASF359
	.byte	0x5
	.uleb128 0x1
	.long	.LASF360
	.byte	0x5
	.uleb128 0x1
	.long	.LASF361
	.byte	0x5
	.uleb128 0x1
	.long	.LASF362
	.byte	0x5
	.uleb128 0x1
	.long	.LASF363
	.byte	0x5
	.uleb128 0x1
	.long	.LASF364
	.byte	0x5
	.uleb128 0x1
	.long	.LASF365
	.byte	0x5
	.uleb128 0x1
	.long	.LASF366
	.byte	0x5
	.uleb128 0x1
	.long	.LASF367
	.byte	0x5
	.uleb128 0x1
	.long	.LASF368
	.byte	0x5
	.uleb128 0x1
	.long	.LASF369
	.byte	0x5
	.uleb128 0x1
	.long	.LASF370
	.byte	0x5
	.uleb128 0x1
	.long	.LASF371
	.byte	0x5
	.uleb128 0x1
	.long	.LASF372
	.byte	0x5
	.uleb128 0x1
	.long	.LASF373
	.byte	0x5
	.uleb128 0x1
	.long	.LASF374
	.byte	0x5
	.uleb128 0x1
	.long	.LASF375
	.byte	0x5
	.uleb128 0x1
	.long	.LASF376
	.byte	0x5
	.uleb128 0x1
	.long	.LASF377
	.byte	0x5
	.uleb128 0x1
	.long	.LASF378
	.byte	0x5
	.uleb128 0x1
	.long	.LASF379
	.byte	0x5
	.uleb128 0x1
	.long	.LASF380
	.byte	0x5
	.uleb128 0x1
	.long	.LASF381
	.byte	0x5
	.uleb128 0x1
	.long	.LASF382
	.byte	0x5
	.uleb128 0x1
	.long	.LASF383
	.byte	0x5
	.uleb128 0x1
	.long	.LASF384
	.byte	0x5
	.uleb128 0x1
	.long	.LASF385
	.byte	0x5
	.uleb128 0x1
	.long	.LASF386
	.byte	0x5
	.uleb128 0x1
	.long	.LASF387
	.byte	0x5
	.uleb128 0x1
	.long	.LASF388
	.byte	0x5
	.uleb128 0x1
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1
	.long	.LASF391
	.byte	0x5
	.uleb128 0x1
	.long	.LASF392
	.byte	0x5
	.uleb128 0x1
	.long	.LASF393
	.byte	0x5
	.uleb128 0x1
	.long	.LASF394
	.byte	0x5
	.uleb128 0x1
	.long	.LASF395
	.byte	0x5
	.uleb128 0x1
	.long	.LASF396
	.byte	0x5
	.uleb128 0x1
	.long	.LASF397
	.byte	0x5
	.uleb128 0x1
	.long	.LASF398
	.byte	0x5
	.uleb128 0x1
	.long	.LASF399
	.byte	0x5
	.uleb128 0x1
	.long	.LASF400
	.byte	0x5
	.uleb128 0x1
	.long	.LASF401
	.byte	0x5
	.uleb128 0x1
	.long	.LASF402
	.byte	0x5
	.uleb128 0x1
	.long	.LASF403
	.byte	0x5
	.uleb128 0x1
	.long	.LASF404
	.byte	0x5
	.uleb128 0x1
	.long	.LASF405
	.byte	0x5
	.uleb128 0x1
	.long	.LASF406
	.byte	0x5
	.uleb128 0x1
	.long	.LASF407
	.byte	0x5
	.uleb128 0x1
	.long	.LASF408
	.byte	0x5
	.uleb128 0x1
	.long	.LASF409
	.byte	0x5
	.uleb128 0x1
	.long	.LASF410
	.byte	0x5
	.uleb128 0x1
	.long	.LASF411
	.byte	0x5
	.uleb128 0x1
	.long	.LASF412
	.byte	0x5
	.uleb128 0x1
	.long	.LASF413
	.byte	0x5
	.uleb128 0x1
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1
	.long	.LASF415
	.byte	0x5
	.uleb128 0x1
	.long	.LASF416
	.byte	0x5
	.uleb128 0x1
	.long	.LASF417
	.byte	0x5
	.uleb128 0x1
	.long	.LASF418
	.byte	0x5
	.uleb128 0x1
	.long	.LASF419
	.byte	0x5
	.uleb128 0x1
	.long	.LASF420
	.byte	0x5
	.uleb128 0x1
	.long	.LASF421
	.byte	0x5
	.uleb128 0x1
	.long	.LASF422
	.byte	0x5
	.uleb128 0x1
	.long	.LASF423
	.byte	0x5
	.uleb128 0x1
	.long	.LASF424
	.byte	0x5
	.uleb128 0x1
	.long	.LASF425
	.byte	0x5
	.uleb128 0x1
	.long	.LASF426
	.byte	0x5
	.uleb128 0x1
	.long	.LASF427
	.byte	0x5
	.uleb128 0x1
	.long	.LASF428
	.byte	0x5
	.uleb128 0x1
	.long	.LASF429
	.byte	0x5
	.uleb128 0x1
	.long	.LASF430
	.byte	0x5
	.uleb128 0x1
	.long	.LASF431
	.byte	0x5
	.uleb128 0x1
	.long	.LASF432
	.byte	0x5
	.uleb128 0x1
	.long	.LASF433
	.byte	0x5
	.uleb128 0x1
	.long	.LASF434
	.byte	0x5
	.uleb128 0x1
	.long	.LASF435
	.byte	0x5
	.uleb128 0x2
	.long	.LASF436
	.file 5 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro1
	.file 6 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 7 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\string.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF495
	.byte	0x4
	.file 8 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x61
	.long	.LASF496
	.file 9 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro6
	.file 10 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x23
	.long	.LASF499
	.file 11 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF561
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 12 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\iom324pa.h"
	.byte	0x3
	.uleb128 0xfe
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.file 13 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h"
	.byte	0x3
	.uleb128 0x268
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 14 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h"
	.byte	0x3
	.uleb128 0x26a
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.file 15 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h"
	.byte	0x3
	.uleb128 0x26c
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.file 16 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h"
	.byte	0x3
	.uleb128 0x273
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.file 17 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h"
	.byte	0x3
	.uleb128 0x276
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x4
	.file 18 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.file 19 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF1946
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro20
	.file 20 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1949
	.byte	0x4
	.file 21 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.file 22 "../mpu6050/mpu6050.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x12
	.long	.LASF2003
	.file 23 "../mpu6050/mpu6050registers.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.40.a599458c03c10d19520d6559051c73c8,comdat
.Ldebug_macro1:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF437
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF439
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF440
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.184.aa65fb7281d578229bbad41b91862635,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF441
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF442
	.byte	0x5
	.uleb128 0xba
	.long	.LASF443
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF444
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF445
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF446
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF447
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF448
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF449
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF450
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF451
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF452
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF453
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF454
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF455
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF456
	.byte	0x5
	.uleb128 0xce
	.long	.LASF457
	.byte	0x6
	.uleb128 0xea
	.long	.LASF458
	.byte	0x5
	.uleb128 0x107
	.long	.LASF459
	.byte	0x5
	.uleb128 0x108
	.long	.LASF460
	.byte	0x5
	.uleb128 0x109
	.long	.LASF461
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF462
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF463
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF464
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF465
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF466
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF467
	.byte	0x5
	.uleb128 0x110
	.long	.LASF468
	.byte	0x5
	.uleb128 0x111
	.long	.LASF469
	.byte	0x5
	.uleb128 0x112
	.long	.LASF470
	.byte	0x5
	.uleb128 0x113
	.long	.LASF471
	.byte	0x5
	.uleb128 0x114
	.long	.LASF472
	.byte	0x5
	.uleb128 0x115
	.long	.LASF473
	.byte	0x6
	.uleb128 0x122
	.long	.LASF474
	.byte	0x6
	.uleb128 0x157
	.long	.LASF475
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF476
	.byte	0x5
	.uleb128 0x192
	.long	.LASF477
	.byte	0x6
	.uleb128 0x198
	.long	.LASF478
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.50.938a4de9d518461555081fe502682bad,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.long	.LASF479
	.byte	0x5
	.uleb128 0x55
	.long	.LASF480
	.byte	0x5
	.uleb128 0x59
	.long	.LASF481
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF482
	.byte	0x5
	.uleb128 0x61
	.long	.LASF483
	.byte	0x5
	.uleb128 0x66
	.long	.LASF484
	.byte	0x5
	.uleb128 0x79
	.long	.LASF485
	.byte	0x5
	.uleb128 0x82
	.long	.LASF486
	.byte	0x5
	.uleb128 0x161
	.long	.LASF487
	.byte	0x5
	.uleb128 0x235
	.long	.LASF488
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF489
	.byte	0x5
	.uleb128 0x261
	.long	.LASF490
	.byte	0x5
	.uleb128 0x264
	.long	.LASF491
	.byte	0x5
	.uleb128 0x296
	.long	.LASF492
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF493
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.41.adab7e6dcc4d6376af4646fccbf62a81,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF494
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF439
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.234.5fa44232df77937e0d1fcac1468785aa,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xea
	.long	.LASF458
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF476
	.byte	0x5
	.uleb128 0x192
	.long	.LASF477
	.byte	0x6
	.uleb128 0x198
	.long	.LASF478
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.36.473802ecbcb5d4d38de6c7efbfcd3c60,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF497
	.byte	0x5
	.uleb128 0x79
	.long	.LASF498
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.40.0b15bfb741d41c43341e80778c1245bf,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF500
	.byte	0x5
	.uleb128 0x39
	.long	.LASF501
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF502
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF503
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF504
	.byte	0x5
	.uleb128 0x131
	.long	.LASF505
	.byte	0x5
	.uleb128 0x136
	.long	.LASF506
	.byte	0x5
	.uleb128 0x147
	.long	.LASF507
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF508
	.byte	0x5
	.uleb128 0x151
	.long	.LASF509
	.byte	0x5
	.uleb128 0x156
	.long	.LASF510
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF511
	.byte	0x5
	.uleb128 0x160
	.long	.LASF512
	.byte	0x5
	.uleb128 0x167
	.long	.LASF513
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF514
	.byte	0x5
	.uleb128 0x171
	.long	.LASF515
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF516
	.byte	0x5
	.uleb128 0x180
	.long	.LASF517
	.byte	0x5
	.uleb128 0x185
	.long	.LASF518
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF519
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF520
	.byte	0x5
	.uleb128 0x194
	.long	.LASF521
	.byte	0x5
	.uleb128 0x199
	.long	.LASF522
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF523
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF524
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF525
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF526
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF527
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF528
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF529
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF530
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF531
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF532
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF533
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF534
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF535
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF536
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF537
	.byte	0x5
	.uleb128 0x1ef
	.long	.LASF538
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF539
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF540
	.byte	0x5
	.uleb128 0x204
	.long	.LASF541
	.byte	0x5
	.uleb128 0x209
	.long	.LASF542
	.byte	0x5
	.uleb128 0x214
	.long	.LASF543
	.byte	0x5
	.uleb128 0x219
	.long	.LASF544
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF545
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF546
	.byte	0x5
	.uleb128 0x230
	.long	.LASF547
	.byte	0x5
	.uleb128 0x239
	.long	.LASF548
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF549
	.byte	0x5
	.uleb128 0x244
	.long	.LASF550
	.byte	0x5
	.uleb128 0x261
	.long	.LASF551
	.byte	0x5
	.uleb128 0x266
	.long	.LASF552
	.byte	0x5
	.uleb128 0x275
	.long	.LASF553
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF554
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF555
	.byte	0x5
	.uleb128 0x284
	.long	.LASF556
	.byte	0x5
	.uleb128 0x28b
	.long	.LASF557
	.byte	0x5
	.uleb128 0x290
	.long	.LASF558
	.byte	0x5
	.uleb128 0x295
	.long	.LASF559
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF560
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.96.a775e17cb21df85f196ddf841848aeb7,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x60
	.long	.LASF562
	.byte	0x5
	.uleb128 0x63
	.long	.LASF563
	.byte	0x5
	.uleb128 0x66
	.long	.LASF564
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF565
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF566
	.byte	0x5
	.uleb128 0x70
	.long	.LASF567
	.byte	0x5
	.uleb128 0x75
	.long	.LASF568
	.byte	0x5
	.uleb128 0x78
	.long	.LASF569
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF570
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF571
	.byte	0x5
	.uleb128 0x82
	.long	.LASF572
	.byte	0x5
	.uleb128 0x85
	.long	.LASF573
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF574
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF575
	.byte	0x5
	.uleb128 0x90
	.long	.LASF576
	.byte	0x5
	.uleb128 0x94
	.long	.LASF577
	.byte	0x5
	.uleb128 0x97
	.long	.LASF578
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF579
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF580
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF581
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF582
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF583
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF584
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF585
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF586
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF587
	.byte	0x5
	.uleb128 0xca
	.long	.LASF588
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF589
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF590
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF591
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF592
	.byte	0x5
	.uleb128 0xda
	.long	.LASF593
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF594
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF595
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF596
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF597
	.byte	0x5
	.uleb128 0xec
	.long	.LASF598
	.byte	0x5
	.uleb128 0xef
	.long	.LASF599
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF600
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF601
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF602
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF603
	.byte	0x5
	.uleb128 0x100
	.long	.LASF604
	.byte	0x5
	.uleb128 0x103
	.long	.LASF605
	.byte	0x5
	.uleb128 0x108
	.long	.LASF606
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF607
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF608
	.byte	0x5
	.uleb128 0x112
	.long	.LASF609
	.byte	0x5
	.uleb128 0x115
	.long	.LASF610
	.byte	0x5
	.uleb128 0x118
	.long	.LASF611
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF612
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF613
	.byte	0x5
	.uleb128 0x122
	.long	.LASF614
	.byte	0x5
	.uleb128 0x126
	.long	.LASF615
	.byte	0x5
	.uleb128 0x129
	.long	.LASF616
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF617
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF618
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF619
	.byte	0x5
	.uleb128 0x150
	.long	.LASF620
	.byte	0x5
	.uleb128 0x153
	.long	.LASF621
	.byte	0x5
	.uleb128 0x165
	.long	.LASF622
	.byte	0x5
	.uleb128 0x168
	.long	.LASF623
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF624
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF625
	.byte	0x5
	.uleb128 0x172
	.long	.LASF626
	.byte	0x5
	.uleb128 0x175
	.long	.LASF627
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF628
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF629
	.byte	0x5
	.uleb128 0x180
	.long	.LASF630
	.byte	0x5
	.uleb128 0x184
	.long	.LASF631
	.byte	0x5
	.uleb128 0x187
	.long	.LASF632
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF633
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF634
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF635
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF636
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF637
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF638
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF639
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF640
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF641
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF642
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF643
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF644
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF645
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF646
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF647
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF648
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF649
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF650
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF651
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF652
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF653
	.byte	0x5
	.uleb128 0x207
	.long	.LASF654
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF655
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF656
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.128.38ceebe2fb099c106e85a566519e0f1a,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x80
	.long	.LASF657
	.byte	0x5
	.uleb128 0x81
	.long	.LASF658
	.byte	0x5
	.uleb128 0x82
	.long	.LASF659
	.byte	0x5
	.uleb128 0xac
	.long	.LASF660
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF661
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF662
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF663
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF664
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF665
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF666
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF667
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF668
	.byte	0x5
	.uleb128 0xba
	.long	.LASF669
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF670
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF671
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF672
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF673
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF674
	.byte	0x5
	.uleb128 0xea
	.long	.LASF675
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF676
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF677
	.byte	0x5
	.uleb128 0x107
	.long	.LASF678
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.iom324pa.h.42.6bceee53c81bc755f0f88481d7a79307,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF679
	.byte	0x5
	.uleb128 0x31
	.long	.LASF680
	.byte	0x5
	.uleb128 0x36
	.long	.LASF681
	.byte	0x5
	.uleb128 0x37
	.long	.LASF682
	.byte	0x5
	.uleb128 0x38
	.long	.LASF683
	.byte	0x5
	.uleb128 0x39
	.long	.LASF684
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF685
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF686
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF687
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF688
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF689
	.byte	0x5
	.uleb128 0x40
	.long	.LASF690
	.byte	0x5
	.uleb128 0x41
	.long	.LASF691
	.byte	0x5
	.uleb128 0x42
	.long	.LASF692
	.byte	0x5
	.uleb128 0x43
	.long	.LASF693
	.byte	0x5
	.uleb128 0x44
	.long	.LASF694
	.byte	0x5
	.uleb128 0x45
	.long	.LASF695
	.byte	0x5
	.uleb128 0x46
	.long	.LASF696
	.byte	0x5
	.uleb128 0x47
	.long	.LASF697
	.byte	0x5
	.uleb128 0x48
	.long	.LASF698
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF699
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF700
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF701
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF702
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF703
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF704
	.byte	0x5
	.uleb128 0x50
	.long	.LASF705
	.byte	0x5
	.uleb128 0x51
	.long	.LASF706
	.byte	0x5
	.uleb128 0x52
	.long	.LASF707
	.byte	0x5
	.uleb128 0x54
	.long	.LASF708
	.byte	0x5
	.uleb128 0x55
	.long	.LASF709
	.byte	0x5
	.uleb128 0x56
	.long	.LASF710
	.byte	0x5
	.uleb128 0x57
	.long	.LASF711
	.byte	0x5
	.uleb128 0x58
	.long	.LASF712
	.byte	0x5
	.uleb128 0x59
	.long	.LASF713
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF714
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF715
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF716
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF717
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF718
	.byte	0x5
	.uleb128 0x60
	.long	.LASF719
	.byte	0x5
	.uleb128 0x61
	.long	.LASF720
	.byte	0x5
	.uleb128 0x62
	.long	.LASF721
	.byte	0x5
	.uleb128 0x63
	.long	.LASF722
	.byte	0x5
	.uleb128 0x64
	.long	.LASF723
	.byte	0x5
	.uleb128 0x65
	.long	.LASF724
	.byte	0x5
	.uleb128 0x66
	.long	.LASF725
	.byte	0x5
	.uleb128 0x68
	.long	.LASF726
	.byte	0x5
	.uleb128 0x69
	.long	.LASF727
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF728
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF729
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF730
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF731
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF732
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF733
	.byte	0x5
	.uleb128 0x70
	.long	.LASF734
	.byte	0x5
	.uleb128 0x72
	.long	.LASF735
	.byte	0x5
	.uleb128 0x73
	.long	.LASF736
	.byte	0x5
	.uleb128 0x74
	.long	.LASF737
	.byte	0x5
	.uleb128 0x75
	.long	.LASF738
	.byte	0x5
	.uleb128 0x76
	.long	.LASF739
	.byte	0x5
	.uleb128 0x77
	.long	.LASF740
	.byte	0x5
	.uleb128 0x78
	.long	.LASF741
	.byte	0x5
	.uleb128 0x79
	.long	.LASF742
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF743
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF744
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF745
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF746
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF747
	.byte	0x5
	.uleb128 0x80
	.long	.LASF748
	.byte	0x5
	.uleb128 0x81
	.long	.LASF749
	.byte	0x5
	.uleb128 0x82
	.long	.LASF750
	.byte	0x5
	.uleb128 0x83
	.long	.LASF751
	.byte	0x5
	.uleb128 0x84
	.long	.LASF752
	.byte	0x5
	.uleb128 0x86
	.long	.LASF753
	.byte	0x5
	.uleb128 0x87
	.long	.LASF754
	.byte	0x5
	.uleb128 0x88
	.long	.LASF755
	.byte	0x5
	.uleb128 0x89
	.long	.LASF756
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF757
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF758
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF759
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF760
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF761
	.byte	0x5
	.uleb128 0x90
	.long	.LASF762
	.byte	0x5
	.uleb128 0x91
	.long	.LASF763
	.byte	0x5
	.uleb128 0x92
	.long	.LASF764
	.byte	0x5
	.uleb128 0x93
	.long	.LASF765
	.byte	0x5
	.uleb128 0x94
	.long	.LASF766
	.byte	0x5
	.uleb128 0x95
	.long	.LASF767
	.byte	0x5
	.uleb128 0x96
	.long	.LASF768
	.byte	0x5
	.uleb128 0x97
	.long	.LASF769
	.byte	0x5
	.uleb128 0x98
	.long	.LASF770
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF771
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF772
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF773
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF774
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF775
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF776
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF777
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF778
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF779
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF780
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF781
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF782
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF783
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF784
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF785
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF786
	.byte	0x5
	.uleb128 0xab
	.long	.LASF787
	.byte	0x5
	.uleb128 0xac
	.long	.LASF788
	.byte	0x5
	.uleb128 0xae
	.long	.LASF789
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF790
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF791
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF792
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF793
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF794
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF795
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF796
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF797
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF798
	.byte	0x5
	.uleb128 0xba
	.long	.LASF799
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF800
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF801
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF802
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF803
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF804
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF805
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF806
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF807
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF808
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF809
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF810
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF811
	.byte	0x5
	.uleb128 0xca
	.long	.LASF812
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF813
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF814
	.byte	0x5
	.uleb128 0xce
	.long	.LASF815
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF816
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF817
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF818
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF819
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF820
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF821
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF822
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF823
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF824
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF825
	.byte	0x5
	.uleb128 0xda
	.long	.LASF826
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF827
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF828
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF829
	.byte	0x5
	.uleb128 0xde
	.long	.LASF830
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF831
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF832
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF833
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF834
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF835
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF836
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF837
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF838
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF839
	.byte	0x5
	.uleb128 0xea
	.long	.LASF840
	.byte	0x5
	.uleb128 0xec
	.long	.LASF841
	.byte	0x5
	.uleb128 0xed
	.long	.LASF842
	.byte	0x5
	.uleb128 0xee
	.long	.LASF843
	.byte	0x5
	.uleb128 0xef
	.long	.LASF844
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF845
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF846
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF847
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF848
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF849
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF850
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF851
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF852
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF853
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF854
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF855
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF856
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF857
	.byte	0x5
	.uleb128 0xff
	.long	.LASF858
	.byte	0x5
	.uleb128 0x101
	.long	.LASF859
	.byte	0x5
	.uleb128 0x102
	.long	.LASF860
	.byte	0x5
	.uleb128 0x103
	.long	.LASF861
	.byte	0x5
	.uleb128 0x104
	.long	.LASF862
	.byte	0x5
	.uleb128 0x105
	.long	.LASF863
	.byte	0x5
	.uleb128 0x106
	.long	.LASF864
	.byte	0x5
	.uleb128 0x107
	.long	.LASF865
	.byte	0x5
	.uleb128 0x109
	.long	.LASF866
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF867
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF868
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF869
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF870
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF871
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF872
	.byte	0x5
	.uleb128 0x111
	.long	.LASF873
	.byte	0x5
	.uleb128 0x112
	.long	.LASF874
	.byte	0x5
	.uleb128 0x113
	.long	.LASF875
	.byte	0x5
	.uleb128 0x114
	.long	.LASF876
	.byte	0x5
	.uleb128 0x115
	.long	.LASF877
	.byte	0x5
	.uleb128 0x116
	.long	.LASF878
	.byte	0x5
	.uleb128 0x117
	.long	.LASF879
	.byte	0x5
	.uleb128 0x118
	.long	.LASF880
	.byte	0x5
	.uleb128 0x119
	.long	.LASF881
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF882
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF883
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF884
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF885
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF886
	.byte	0x5
	.uleb128 0x120
	.long	.LASF887
	.byte	0x5
	.uleb128 0x121
	.long	.LASF888
	.byte	0x5
	.uleb128 0x122
	.long	.LASF889
	.byte	0x5
	.uleb128 0x123
	.long	.LASF890
	.byte	0x5
	.uleb128 0x125
	.long	.LASF891
	.byte	0x5
	.uleb128 0x126
	.long	.LASF892
	.byte	0x5
	.uleb128 0x127
	.long	.LASF893
	.byte	0x5
	.uleb128 0x128
	.long	.LASF894
	.byte	0x5
	.uleb128 0x129
	.long	.LASF895
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF896
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF897
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF898
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF899
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF900
	.byte	0x5
	.uleb128 0x130
	.long	.LASF901
	.byte	0x5
	.uleb128 0x131
	.long	.LASF902
	.byte	0x5
	.uleb128 0x132
	.long	.LASF903
	.byte	0x5
	.uleb128 0x133
	.long	.LASF904
	.byte	0x5
	.uleb128 0x134
	.long	.LASF905
	.byte	0x5
	.uleb128 0x135
	.long	.LASF906
	.byte	0x5
	.uleb128 0x136
	.long	.LASF907
	.byte	0x5
	.uleb128 0x137
	.long	.LASF908
	.byte	0x5
	.uleb128 0x139
	.long	.LASF909
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF910
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF911
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF912
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF913
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF914
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF915
	.byte	0x5
	.uleb128 0x140
	.long	.LASF916
	.byte	0x5
	.uleb128 0x141
	.long	.LASF917
	.byte	0x5
	.uleb128 0x143
	.long	.LASF918
	.byte	0x5
	.uleb128 0x144
	.long	.LASF919
	.byte	0x5
	.uleb128 0x145
	.long	.LASF920
	.byte	0x5
	.uleb128 0x146
	.long	.LASF921
	.byte	0x5
	.uleb128 0x147
	.long	.LASF922
	.byte	0x5
	.uleb128 0x148
	.long	.LASF923
	.byte	0x5
	.uleb128 0x149
	.long	.LASF924
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF925
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF926
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF927
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF928
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF929
	.byte	0x5
	.uleb128 0x150
	.long	.LASF930
	.byte	0x5
	.uleb128 0x152
	.long	.LASF931
	.byte	0x5
	.uleb128 0x153
	.long	.LASF932
	.byte	0x5
	.uleb128 0x154
	.long	.LASF933
	.byte	0x5
	.uleb128 0x155
	.long	.LASF934
	.byte	0x5
	.uleb128 0x156
	.long	.LASF935
	.byte	0x5
	.uleb128 0x157
	.long	.LASF936
	.byte	0x5
	.uleb128 0x158
	.long	.LASF937
	.byte	0x5
	.uleb128 0x159
	.long	.LASF938
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF939
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF940
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF941
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF942
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF943
	.byte	0x5
	.uleb128 0x160
	.long	.LASF944
	.byte	0x5
	.uleb128 0x161
	.long	.LASF945
	.byte	0x5
	.uleb128 0x162
	.long	.LASF946
	.byte	0x5
	.uleb128 0x163
	.long	.LASF947
	.byte	0x5
	.uleb128 0x164
	.long	.LASF948
	.byte	0x5
	.uleb128 0x166
	.long	.LASF949
	.byte	0x5
	.uleb128 0x167
	.long	.LASF950
	.byte	0x5
	.uleb128 0x168
	.long	.LASF951
	.byte	0x5
	.uleb128 0x169
	.long	.LASF952
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF953
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF954
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF955
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF956
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF957
	.byte	0x5
	.uleb128 0x170
	.long	.LASF958
	.byte	0x5
	.uleb128 0x171
	.long	.LASF959
	.byte	0x5
	.uleb128 0x172
	.long	.LASF960
	.byte	0x5
	.uleb128 0x173
	.long	.LASF961
	.byte	0x5
	.uleb128 0x174
	.long	.LASF962
	.byte	0x5
	.uleb128 0x176
	.long	.LASF963
	.byte	0x5
	.uleb128 0x177
	.long	.LASF964
	.byte	0x5
	.uleb128 0x178
	.long	.LASF965
	.byte	0x5
	.uleb128 0x179
	.long	.LASF966
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF967
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF968
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF969
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF970
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF971
	.byte	0x5
	.uleb128 0x180
	.long	.LASF972
	.byte	0x5
	.uleb128 0x181
	.long	.LASF973
	.byte	0x5
	.uleb128 0x182
	.long	.LASF974
	.byte	0x5
	.uleb128 0x183
	.long	.LASF975
	.byte	0x5
	.uleb128 0x185
	.long	.LASF976
	.byte	0x5
	.uleb128 0x186
	.long	.LASF977
	.byte	0x5
	.uleb128 0x187
	.long	.LASF978
	.byte	0x5
	.uleb128 0x188
	.long	.LASF979
	.byte	0x5
	.uleb128 0x189
	.long	.LASF980
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF981
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF982
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF983
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF984
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF985
	.byte	0x5
	.uleb128 0x190
	.long	.LASF986
	.byte	0x5
	.uleb128 0x191
	.long	.LASF987
	.byte	0x5
	.uleb128 0x192
	.long	.LASF988
	.byte	0x5
	.uleb128 0x193
	.long	.LASF989
	.byte	0x5
	.uleb128 0x194
	.long	.LASF990
	.byte	0x5
	.uleb128 0x195
	.long	.LASF991
	.byte	0x5
	.uleb128 0x196
	.long	.LASF992
	.byte	0x5
	.uleb128 0x197
	.long	.LASF993
	.byte	0x5
	.uleb128 0x199
	.long	.LASF994
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF995
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF996
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF997
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF998
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF999
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF1000
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1001
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF1002
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF1003
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF1004
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF1005
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF1006
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF1007
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF1008
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF1009
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF1010
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF1011
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF1012
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF1013
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF1014
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF1015
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF1016
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF1017
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x1bc
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x1be
	.long	.LASF1027
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF1032
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF1041
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF1042
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF1043
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF1044
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1045
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF1058
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF1059
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF1060
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF1062
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1063
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF1064
	.byte	0x5
	.uleb128 0x1e9
	.long	.LASF1065
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF1066
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x1f2
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1073
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1074
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF1075
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x1f8
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x1fb
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF1081
	.byte	0x5
	.uleb128 0x200
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x201
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x202
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x203
	.long	.LASF1085
	.byte	0x5
	.uleb128 0x204
	.long	.LASF1086
	.byte	0x5
	.uleb128 0x205
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x206
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x209
	.long	.LASF1090
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1092
	.byte	0x5
	.uleb128 0x20c
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF1094
	.byte	0x5
	.uleb128 0x20e
	.long	.LASF1095
	.byte	0x5
	.uleb128 0x20f
	.long	.LASF1096
	.byte	0x5
	.uleb128 0x210
	.long	.LASF1097
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1098
	.byte	0x5
	.uleb128 0x213
	.long	.LASF1099
	.byte	0x5
	.uleb128 0x214
	.long	.LASF1100
	.byte	0x5
	.uleb128 0x215
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x216
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x217
	.long	.LASF1103
	.byte	0x5
	.uleb128 0x218
	.long	.LASF1104
	.byte	0x5
	.uleb128 0x219
	.long	.LASF1105
	.byte	0x5
	.uleb128 0x21a
	.long	.LASF1106
	.byte	0x5
	.uleb128 0x21b
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x220
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x221
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x223
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x224
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x225
	.long	.LASF1115
	.byte	0x5
	.uleb128 0x226
	.long	.LASF1116
	.byte	0x5
	.uleb128 0x227
	.long	.LASF1117
	.byte	0x5
	.uleb128 0x228
	.long	.LASF1118
	.byte	0x5
	.uleb128 0x229
	.long	.LASF1119
	.byte	0x5
	.uleb128 0x22a
	.long	.LASF1120
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1121
	.byte	0x5
	.uleb128 0x22d
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x22e
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x22f
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x230
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x231
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x232
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x233
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x234
	.long	.LASF1129
	.byte	0x5
	.uleb128 0x235
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x237
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x238
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x239
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x23b
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x23c
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x23d
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x23f
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1139
	.byte	0x5
	.uleb128 0x241
	.long	.LASF1140
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1141
	.byte	0x5
	.uleb128 0x244
	.long	.LASF1142
	.byte	0x5
	.uleb128 0x245
	.long	.LASF1143
	.byte	0x5
	.uleb128 0x246
	.long	.LASF1144
	.byte	0x5
	.uleb128 0x247
	.long	.LASF1145
	.byte	0x5
	.uleb128 0x248
	.long	.LASF1146
	.byte	0x5
	.uleb128 0x249
	.long	.LASF1147
	.byte	0x5
	.uleb128 0x24a
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x24c
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF1150
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF1151
	.byte	0x5
	.uleb128 0x250
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x252
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x254
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x255
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x256
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x257
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x258
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x259
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x25c
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x25d
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x260
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x262
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x263
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x268
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x26b
	.long	.LASF1175
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1176
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF1177
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x273
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x274
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x275
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x278
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x279
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x280
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x281
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x282
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x283
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x284
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x286
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x288
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x28a
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x28b
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x28c
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x290
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x292
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x294
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x295
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x296
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x298
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x299
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF1216
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF1217
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF1218
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1219
	.byte	0x5
	.uleb128 0x29f
	.long	.LASF1220
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF1221
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1222
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF1223
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF1224
	.byte	0x5
	.uleb128 0x2a4
	.long	.LASF1225
	.byte	0x5
	.uleb128 0x2a5
	.long	.LASF1226
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF1227
	.byte	0x5
	.uleb128 0x2a8
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x2a9
	.long	.LASF1229
	.byte	0x5
	.uleb128 0x2aa
	.long	.LASF1230
	.byte	0x5
	.uleb128 0x2ab
	.long	.LASF1231
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF1232
	.byte	0x5
	.uleb128 0x2ad
	.long	.LASF1233
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF1234
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF1235
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1236
	.byte	0x5
	.uleb128 0x2b2
	.long	.LASF1237
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF1238
	.byte	0x5
	.uleb128 0x2b4
	.long	.LASF1239
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF1240
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF1241
	.byte	0x5
	.uleb128 0x2b8
	.long	.LASF1242
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF1243
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF1244
	.byte	0x5
	.uleb128 0x2bb
	.long	.LASF1245
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF1246
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF1247
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF1248
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF1249
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF1250
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1252
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF1253
	.byte	0x5
	.uleb128 0x2c5
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF1255
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF1256
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF1257
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF1258
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF1259
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF1260
	.byte	0x5
	.uleb128 0x2cd
	.long	.LASF1261
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF1262
	.byte	0x5
	.uleb128 0x2cf
	.long	.LASF1263
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF1264
	.byte	0x5
	.uleb128 0x2d1
	.long	.LASF1265
	.byte	0x5
	.uleb128 0x2d2
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x2d4
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x2d6
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x2d7
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x2d8
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x2d9
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x2da
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x2db
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x2dc
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x2dd
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x2df
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x2e0
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x2e1
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x2e3
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x2e4
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x2e6
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x2e7
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x2ea
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x2eb
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x2ec
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x2ed
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x2ee
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x2ef
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x2f0
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x2f3
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x2f4
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x2f5
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF1298
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF1301
	.byte	0x5
	.uleb128 0x2fa
	.long	.LASF1302
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1303
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF1304
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF1305
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF1306
	.byte	0x5
	.uleb128 0x300
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x301
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x302
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x303
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x304
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x306
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x307
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x308
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x309
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x30a
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x30c
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x30d
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x30f
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x310
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x311
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x312
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x313
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x314
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x315
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x316
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x318
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x319
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x31a
	.long	.LASF1330
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF1331
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF1332
	.byte	0x5
	.uleb128 0x31d
	.long	.LASF1333
	.byte	0x5
	.uleb128 0x31e
	.long	.LASF1334
	.byte	0x5
	.uleb128 0x31f
	.long	.LASF1335
	.byte	0x5
	.uleb128 0x320
	.long	.LASF1336
	.byte	0x5
	.uleb128 0x322
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x323
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x324
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x325
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x326
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x327
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x328
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x329
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x32e
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x330
	.long	.LASF1350
	.byte	0x5
	.uleb128 0x331
	.long	.LASF1351
	.byte	0x5
	.uleb128 0x332
	.long	.LASF1352
	.byte	0x5
	.uleb128 0x333
	.long	.LASF1353
	.byte	0x5
	.uleb128 0x334
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x336
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x338
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x339
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x33a
	.long	.LASF1358
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF1359
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x33d
	.long	.LASF1361
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF1362
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF1363
	.byte	0x5
	.uleb128 0x340
	.long	.LASF1364
	.byte	0x5
	.uleb128 0x342
	.long	.LASF1365
	.byte	0x5
	.uleb128 0x343
	.long	.LASF1366
	.byte	0x5
	.uleb128 0x344
	.long	.LASF1367
	.byte	0x5
	.uleb128 0x345
	.long	.LASF1368
	.byte	0x5
	.uleb128 0x346
	.long	.LASF1369
	.byte	0x5
	.uleb128 0x348
	.long	.LASF1370
	.byte	0x5
	.uleb128 0x349
	.long	.LASF1371
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF1372
	.byte	0x5
	.uleb128 0x34b
	.long	.LASF1373
	.byte	0x5
	.uleb128 0x34c
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF1375
	.byte	0x5
	.uleb128 0x34e
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x34f
	.long	.LASF1377
	.byte	0x5
	.uleb128 0x350
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x352
	.long	.LASF1379
	.byte	0x5
	.uleb128 0x353
	.long	.LASF1380
	.byte	0x5
	.uleb128 0x354
	.long	.LASF1381
	.byte	0x5
	.uleb128 0x355
	.long	.LASF1382
	.byte	0x5
	.uleb128 0x356
	.long	.LASF1383
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1384
	.byte	0x5
	.uleb128 0x358
	.long	.LASF1385
	.byte	0x5
	.uleb128 0x359
	.long	.LASF1386
	.byte	0x5
	.uleb128 0x35a
	.long	.LASF1387
	.byte	0x5
	.uleb128 0x35c
	.long	.LASF1388
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF1389
	.byte	0x5
	.uleb128 0x35e
	.long	.LASF1390
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF1391
	.byte	0x5
	.uleb128 0x360
	.long	.LASF1392
	.byte	0x5
	.uleb128 0x361
	.long	.LASF1393
	.byte	0x5
	.uleb128 0x362
	.long	.LASF1394
	.byte	0x5
	.uleb128 0x363
	.long	.LASF1395
	.byte	0x5
	.uleb128 0x364
	.long	.LASF1396
	.byte	0x5
	.uleb128 0x366
	.long	.LASF1397
	.byte	0x5
	.uleb128 0x367
	.long	.LASF1398
	.byte	0x5
	.uleb128 0x368
	.long	.LASF1399
	.byte	0x5
	.uleb128 0x369
	.long	.LASF1400
	.byte	0x5
	.uleb128 0x36a
	.long	.LASF1401
	.byte	0x5
	.uleb128 0x36b
	.long	.LASF1402
	.byte	0x5
	.uleb128 0x36c
	.long	.LASF1403
	.byte	0x5
	.uleb128 0x36d
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x36e
	.long	.LASF1405
	.byte	0x5
	.uleb128 0x370
	.long	.LASF1406
	.byte	0x5
	.uleb128 0x372
	.long	.LASF1407
	.byte	0x5
	.uleb128 0x373
	.long	.LASF1408
	.byte	0x5
	.uleb128 0x374
	.long	.LASF1409
	.byte	0x5
	.uleb128 0x375
	.long	.LASF1410
	.byte	0x5
	.uleb128 0x376
	.long	.LASF1411
	.byte	0x5
	.uleb128 0x377
	.long	.LASF1412
	.byte	0x5
	.uleb128 0x378
	.long	.LASF1413
	.byte	0x5
	.uleb128 0x379
	.long	.LASF1414
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF1415
	.byte	0x5
	.uleb128 0x37c
	.long	.LASF1416
	.byte	0x5
	.uleb128 0x37d
	.long	.LASF1417
	.byte	0x5
	.uleb128 0x37e
	.long	.LASF1418
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF1419
	.byte	0x5
	.uleb128 0x380
	.long	.LASF1420
	.byte	0x5
	.uleb128 0x382
	.long	.LASF1421
	.byte	0x5
	.uleb128 0x383
	.long	.LASF1422
	.byte	0x5
	.uleb128 0x384
	.long	.LASF1423
	.byte	0x5
	.uleb128 0x385
	.long	.LASF1424
	.byte	0x5
	.uleb128 0x386
	.long	.LASF1425
	.byte	0x5
	.uleb128 0x387
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x388
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x390
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x391
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x392
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x393
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x394
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x395
	.long	.LASF1436
	.byte	0x5
	.uleb128 0x396
	.long	.LASF1437
	.byte	0x5
	.uleb128 0x397
	.long	.LASF1438
	.byte	0x5
	.uleb128 0x398
	.long	.LASF1439
	.byte	0x5
	.uleb128 0x399
	.long	.LASF1440
	.byte	0x5
	.uleb128 0x39a
	.long	.LASF1441
	.byte	0x5
	.uleb128 0x39b
	.long	.LASF1442
	.byte	0x5
	.uleb128 0x39c
	.long	.LASF1443
	.byte	0x5
	.uleb128 0x39d
	.long	.LASF1444
	.byte	0x5
	.uleb128 0x39e
	.long	.LASF1445
	.byte	0x5
	.uleb128 0x39f
	.long	.LASF1446
	.byte	0x5
	.uleb128 0x3a0
	.long	.LASF1447
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF1448
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF1449
	.byte	0x5
	.uleb128 0x3a3
	.long	.LASF1450
	.byte	0x5
	.uleb128 0x3a4
	.long	.LASF1451
	.byte	0x5
	.uleb128 0x3a5
	.long	.LASF1452
	.byte	0x5
	.uleb128 0x3a6
	.long	.LASF1453
	.byte	0x5
	.uleb128 0x3a7
	.long	.LASF1454
	.byte	0x5
	.uleb128 0x3a8
	.long	.LASF1455
	.byte	0x5
	.uleb128 0x3a9
	.long	.LASF1456
	.byte	0x5
	.uleb128 0x3aa
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x3ab
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x3ac
	.long	.LASF1459
	.byte	0x5
	.uleb128 0x3ad
	.long	.LASF1460
	.byte	0x5
	.uleb128 0x3ae
	.long	.LASF1461
	.byte	0x5
	.uleb128 0x3af
	.long	.LASF1462
	.byte	0x5
	.uleb128 0x3b0
	.long	.LASF1463
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF1464
	.byte	0x5
	.uleb128 0x3b2
	.long	.LASF1465
	.byte	0x5
	.uleb128 0x3b3
	.long	.LASF1466
	.byte	0x5
	.uleb128 0x3b4
	.long	.LASF1467
	.byte	0x5
	.uleb128 0x3b5
	.long	.LASF1468
	.byte	0x5
	.uleb128 0x3b6
	.long	.LASF1469
	.byte	0x5
	.uleb128 0x3b7
	.long	.LASF1470
	.byte	0x5
	.uleb128 0x3b8
	.long	.LASF1471
	.byte	0x5
	.uleb128 0x3b9
	.long	.LASF1472
	.byte	0x5
	.uleb128 0x3ba
	.long	.LASF1473
	.byte	0x5
	.uleb128 0x3bb
	.long	.LASF1474
	.byte	0x5
	.uleb128 0x3bc
	.long	.LASF1475
	.byte	0x5
	.uleb128 0x3bd
	.long	.LASF1476
	.byte	0x5
	.uleb128 0x3be
	.long	.LASF1477
	.byte	0x5
	.uleb128 0x3bf
	.long	.LASF1478
	.byte	0x5
	.uleb128 0x3c0
	.long	.LASF1479
	.byte	0x5
	.uleb128 0x3c1
	.long	.LASF1480
	.byte	0x5
	.uleb128 0x3c2
	.long	.LASF1481
	.byte	0x5
	.uleb128 0x3c3
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x3c4
	.long	.LASF1483
	.byte	0x5
	.uleb128 0x3c5
	.long	.LASF1484
	.byte	0x5
	.uleb128 0x3c6
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x3c7
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x3c8
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x3c9
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x3ca
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x3cc
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x3cd
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x3d1
	.long	.LASF1492
	.byte	0x5
	.uleb128 0x3d2
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x3d3
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x3d4
	.long	.LASF1495
	.byte	0x5
	.uleb128 0x3d5
	.long	.LASF1496
	.byte	0x5
	.uleb128 0x3d6
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x3d7
	.long	.LASF1498
	.byte	0x5
	.uleb128 0x3d8
	.long	.LASF1499
	.byte	0x5
	.uleb128 0x3d9
	.long	.LASF1500
	.byte	0x5
	.uleb128 0x3da
	.long	.LASF1501
	.byte	0x5
	.uleb128 0x3de
	.long	.LASF1502
	.byte	0x5
	.uleb128 0x3e1
	.long	.LASF1503
	.byte	0x5
	.uleb128 0x3e2
	.long	.LASF1504
	.byte	0x5
	.uleb128 0x3e3
	.long	.LASF1505
	.byte	0x5
	.uleb128 0x3e4
	.long	.LASF1506
	.byte	0x5
	.uleb128 0x3e5
	.long	.LASF1507
	.byte	0x5
	.uleb128 0x3e6
	.long	.LASF1508
	.byte	0x5
	.uleb128 0x3e7
	.long	.LASF1509
	.byte	0x5
	.uleb128 0x3e8
	.long	.LASF1510
	.byte	0x5
	.uleb128 0x3e9
	.long	.LASF1511
	.byte	0x5
	.uleb128 0x3ec
	.long	.LASF1512
	.byte	0x5
	.uleb128 0x3ed
	.long	.LASF1513
	.byte	0x5
	.uleb128 0x3ee
	.long	.LASF1514
	.byte	0x5
	.uleb128 0x3ef
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x3f0
	.long	.LASF1516
	.byte	0x5
	.uleb128 0x3f1
	.long	.LASF1517
	.byte	0x5
	.uleb128 0x3f2
	.long	.LASF1518
	.byte	0x5
	.uleb128 0x3f3
	.long	.LASF1519
	.byte	0x5
	.uleb128 0x3f4
	.long	.LASF1520
	.byte	0x5
	.uleb128 0x3f7
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x3f8
	.long	.LASF1522
	.byte	0x5
	.uleb128 0x3f9
	.long	.LASF1523
	.byte	0x5
	.uleb128 0x3fa
	.long	.LASF1524
	.byte	0x5
	.uleb128 0x3fe
	.long	.LASF1525
	.byte	0x5
	.uleb128 0x3ff
	.long	.LASF1526
	.byte	0x5
	.uleb128 0x400
	.long	.LASF1527
	.byte	0x5
	.uleb128 0x404
	.long	.LASF1528
	.byte	0x5
	.uleb128 0x405
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x406
	.long	.LASF1530
	.byte	0x5
	.uleb128 0x40a
	.long	.LASF1531
	.byte	0x5
	.uleb128 0x40b
	.long	.LASF1532
	.byte	0x5
	.uleb128 0x40c
	.long	.LASF1533
	.byte	0x5
	.uleb128 0x40d
	.long	.LASF1534
	.byte	0x5
	.uleb128 0x40f
	.long	.LASF1535
	.byte	0x5
	.uleb128 0x410
	.long	.LASF1536
	.byte	0x5
	.uleb128 0x411
	.long	.LASF1537
	.byte	0x5
	.uleb128 0x412
	.long	.LASF1538
	.byte	0x5
	.uleb128 0x414
	.long	.LASF1539
	.byte	0x5
	.uleb128 0x415
	.long	.LASF1540
	.byte	0x5
	.uleb128 0x416
	.long	.LASF1541
	.byte	0x5
	.uleb128 0x417
	.long	.LASF1542
	.byte	0x5
	.uleb128 0x419
	.long	.LASF1543
	.byte	0x5
	.uleb128 0x41a
	.long	.LASF1544
	.byte	0x5
	.uleb128 0x41b
	.long	.LASF1545
	.byte	0x5
	.uleb128 0x41c
	.long	.LASF1546
	.byte	0x5
	.uleb128 0x41e
	.long	.LASF1547
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF1548
	.byte	0x5
	.uleb128 0x420
	.long	.LASF1549
	.byte	0x5
	.uleb128 0x421
	.long	.LASF1550
	.byte	0x5
	.uleb128 0x423
	.long	.LASF1551
	.byte	0x5
	.uleb128 0x424
	.long	.LASF1552
	.byte	0x5
	.uleb128 0x425
	.long	.LASF1553
	.byte	0x5
	.uleb128 0x426
	.long	.LASF1554
	.byte	0x5
	.uleb128 0x428
	.long	.LASF1555
	.byte	0x5
	.uleb128 0x429
	.long	.LASF1556
	.byte	0x5
	.uleb128 0x42a
	.long	.LASF1557
	.byte	0x5
	.uleb128 0x42b
	.long	.LASF1558
	.byte	0x5
	.uleb128 0x42d
	.long	.LASF1559
	.byte	0x5
	.uleb128 0x42e
	.long	.LASF1560
	.byte	0x5
	.uleb128 0x42f
	.long	.LASF1561
	.byte	0x5
	.uleb128 0x430
	.long	.LASF1562
	.byte	0x5
	.uleb128 0x432
	.long	.LASF1563
	.byte	0x5
	.uleb128 0x433
	.long	.LASF1564
	.byte	0x5
	.uleb128 0x434
	.long	.LASF1565
	.byte	0x5
	.uleb128 0x435
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x437
	.long	.LASF1567
	.byte	0x5
	.uleb128 0x438
	.long	.LASF1568
	.byte	0x5
	.uleb128 0x439
	.long	.LASF1569
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF1570
	.byte	0x5
	.uleb128 0x43c
	.long	.LASF1571
	.byte	0x5
	.uleb128 0x43d
	.long	.LASF1572
	.byte	0x5
	.uleb128 0x43e
	.long	.LASF1573
	.byte	0x5
	.uleb128 0x43f
	.long	.LASF1574
	.byte	0x5
	.uleb128 0x441
	.long	.LASF1575
	.byte	0x5
	.uleb128 0x442
	.long	.LASF1576
	.byte	0x5
	.uleb128 0x443
	.long	.LASF1577
	.byte	0x5
	.uleb128 0x444
	.long	.LASF1578
	.byte	0x5
	.uleb128 0x446
	.long	.LASF1579
	.byte	0x5
	.uleb128 0x447
	.long	.LASF1580
	.byte	0x5
	.uleb128 0x448
	.long	.LASF1581
	.byte	0x5
	.uleb128 0x449
	.long	.LASF1582
	.byte	0x5
	.uleb128 0x44b
	.long	.LASF1583
	.byte	0x5
	.uleb128 0x44c
	.long	.LASF1584
	.byte	0x5
	.uleb128 0x44d
	.long	.LASF1585
	.byte	0x5
	.uleb128 0x44e
	.long	.LASF1586
	.byte	0x5
	.uleb128 0x450
	.long	.LASF1587
	.byte	0x5
	.uleb128 0x451
	.long	.LASF1588
	.byte	0x5
	.uleb128 0x452
	.long	.LASF1589
	.byte	0x5
	.uleb128 0x453
	.long	.LASF1590
	.byte	0x5
	.uleb128 0x455
	.long	.LASF1591
	.byte	0x5
	.uleb128 0x456
	.long	.LASF1592
	.byte	0x5
	.uleb128 0x457
	.long	.LASF1593
	.byte	0x5
	.uleb128 0x458
	.long	.LASF1594
	.byte	0x5
	.uleb128 0x45a
	.long	.LASF1595
	.byte	0x5
	.uleb128 0x45b
	.long	.LASF1596
	.byte	0x5
	.uleb128 0x45c
	.long	.LASF1597
	.byte	0x5
	.uleb128 0x45d
	.long	.LASF1598
	.byte	0x5
	.uleb128 0x45f
	.long	.LASF1599
	.byte	0x5
	.uleb128 0x460
	.long	.LASF1600
	.byte	0x5
	.uleb128 0x461
	.long	.LASF1601
	.byte	0x5
	.uleb128 0x462
	.long	.LASF1602
	.byte	0x5
	.uleb128 0x464
	.long	.LASF1603
	.byte	0x5
	.uleb128 0x465
	.long	.LASF1604
	.byte	0x5
	.uleb128 0x466
	.long	.LASF1605
	.byte	0x5
	.uleb128 0x467
	.long	.LASF1606
	.byte	0x5
	.uleb128 0x469
	.long	.LASF1607
	.byte	0x5
	.uleb128 0x46a
	.long	.LASF1608
	.byte	0x5
	.uleb128 0x46b
	.long	.LASF1609
	.byte	0x5
	.uleb128 0x46c
	.long	.LASF1610
	.byte	0x5
	.uleb128 0x46e
	.long	.LASF1611
	.byte	0x5
	.uleb128 0x46f
	.long	.LASF1612
	.byte	0x5
	.uleb128 0x470
	.long	.LASF1613
	.byte	0x5
	.uleb128 0x471
	.long	.LASF1614
	.byte	0x5
	.uleb128 0x473
	.long	.LASF1615
	.byte	0x5
	.uleb128 0x474
	.long	.LASF1616
	.byte	0x5
	.uleb128 0x475
	.long	.LASF1617
	.byte	0x5
	.uleb128 0x476
	.long	.LASF1618
	.byte	0x5
	.uleb128 0x478
	.long	.LASF1619
	.byte	0x5
	.uleb128 0x479
	.long	.LASF1620
	.byte	0x5
	.uleb128 0x47a
	.long	.LASF1621
	.byte	0x5
	.uleb128 0x47b
	.long	.LASF1622
	.byte	0x5
	.uleb128 0x47d
	.long	.LASF1623
	.byte	0x5
	.uleb128 0x47e
	.long	.LASF1624
	.byte	0x5
	.uleb128 0x47f
	.long	.LASF1625
	.byte	0x5
	.uleb128 0x480
	.long	.LASF1626
	.byte	0x5
	.uleb128 0x482
	.long	.LASF1627
	.byte	0x5
	.uleb128 0x483
	.long	.LASF1628
	.byte	0x5
	.uleb128 0x484
	.long	.LASF1629
	.byte	0x5
	.uleb128 0x485
	.long	.LASF1630
	.byte	0x5
	.uleb128 0x487
	.long	.LASF1631
	.byte	0x5
	.uleb128 0x488
	.long	.LASF1632
	.byte	0x5
	.uleb128 0x489
	.long	.LASF1633
	.byte	0x5
	.uleb128 0x48a
	.long	.LASF1634
	.byte	0x5
	.uleb128 0x48c
	.long	.LASF1635
	.byte	0x5
	.uleb128 0x48d
	.long	.LASF1636
	.byte	0x5
	.uleb128 0x48e
	.long	.LASF1637
	.byte	0x5
	.uleb128 0x48f
	.long	.LASF1638
	.byte	0x5
	.uleb128 0x491
	.long	.LASF1639
	.byte	0x5
	.uleb128 0x492
	.long	.LASF1640
	.byte	0x5
	.uleb128 0x493
	.long	.LASF1641
	.byte	0x5
	.uleb128 0x494
	.long	.LASF1642
	.byte	0x5
	.uleb128 0x496
	.long	.LASF1643
	.byte	0x5
	.uleb128 0x497
	.long	.LASF1644
	.byte	0x5
	.uleb128 0x498
	.long	.LASF1645
	.byte	0x5
	.uleb128 0x499
	.long	.LASF1646
	.byte	0x5
	.uleb128 0x49b
	.long	.LASF1647
	.byte	0x5
	.uleb128 0x49c
	.long	.LASF1648
	.byte	0x5
	.uleb128 0x49d
	.long	.LASF1649
	.byte	0x5
	.uleb128 0x49e
	.long	.LASF1650
	.byte	0x5
	.uleb128 0x4a0
	.long	.LASF1651
	.byte	0x5
	.uleb128 0x4a1
	.long	.LASF1652
	.byte	0x5
	.uleb128 0x4a2
	.long	.LASF1653
	.byte	0x5
	.uleb128 0x4a3
	.long	.LASF1654
	.byte	0x5
	.uleb128 0x4a5
	.long	.LASF1655
	.byte	0x5
	.uleb128 0x4a6
	.long	.LASF1656
	.byte	0x5
	.uleb128 0x4a7
	.long	.LASF1657
	.byte	0x5
	.uleb128 0x4a8
	.long	.LASF1658
	.byte	0x5
	.uleb128 0x4aa
	.long	.LASF1659
	.byte	0x5
	.uleb128 0x4ab
	.long	.LASF1660
	.byte	0x5
	.uleb128 0x4ac
	.long	.LASF1661
	.byte	0x5
	.uleb128 0x4ad
	.long	.LASF1662
	.byte	0x5
	.uleb128 0x4af
	.long	.LASF1663
	.byte	0x5
	.uleb128 0x4b0
	.long	.LASF1664
	.byte	0x5
	.uleb128 0x4b1
	.long	.LASF1665
	.byte	0x5
	.uleb128 0x4b2
	.long	.LASF1666
	.byte	0x5
	.uleb128 0x4b4
	.long	.LASF1667
	.byte	0x5
	.uleb128 0x4b5
	.long	.LASF1668
	.byte	0x5
	.uleb128 0x4b6
	.long	.LASF1669
	.byte	0x5
	.uleb128 0x4b7
	.long	.LASF1670
	.byte	0x5
	.uleb128 0x4b9
	.long	.LASF1671
	.byte	0x5
	.uleb128 0x4ba
	.long	.LASF1672
	.byte	0x5
	.uleb128 0x4bb
	.long	.LASF1673
	.byte	0x5
	.uleb128 0x4bc
	.long	.LASF1674
	.byte	0x5
	.uleb128 0x4be
	.long	.LASF1675
	.byte	0x5
	.uleb128 0x4bf
	.long	.LASF1676
	.byte	0x5
	.uleb128 0x4c0
	.long	.LASF1677
	.byte	0x5
	.uleb128 0x4c1
	.long	.LASF1678
	.byte	0x5
	.uleb128 0x4c3
	.long	.LASF1679
	.byte	0x5
	.uleb128 0x4c4
	.long	.LASF1680
	.byte	0x5
	.uleb128 0x4c5
	.long	.LASF1681
	.byte	0x5
	.uleb128 0x4c6
	.long	.LASF1682
	.byte	0x5
	.uleb128 0x4c8
	.long	.LASF1683
	.byte	0x5
	.uleb128 0x4c9
	.long	.LASF1684
	.byte	0x5
	.uleb128 0x4ca
	.long	.LASF1685
	.byte	0x5
	.uleb128 0x4cb
	.long	.LASF1686
	.byte	0x5
	.uleb128 0x4cd
	.long	.LASF1687
	.byte	0x5
	.uleb128 0x4ce
	.long	.LASF1688
	.byte	0x5
	.uleb128 0x4cf
	.long	.LASF1689
	.byte	0x5
	.uleb128 0x4d0
	.long	.LASF1690
	.byte	0x5
	.uleb128 0x4d2
	.long	.LASF1691
	.byte	0x5
	.uleb128 0x4d3
	.long	.LASF1692
	.byte	0x5
	.uleb128 0x4d4
	.long	.LASF1693
	.byte	0x5
	.uleb128 0x4d5
	.long	.LASF1694
	.byte	0x5
	.uleb128 0x4d7
	.long	.LASF1695
	.byte	0x5
	.uleb128 0x4d8
	.long	.LASF1696
	.byte	0x5
	.uleb128 0x4d9
	.long	.LASF1697
	.byte	0x5
	.uleb128 0x4da
	.long	.LASF1698
	.byte	0x5
	.uleb128 0x4dc
	.long	.LASF1699
	.byte	0x5
	.uleb128 0x4dd
	.long	.LASF1700
	.byte	0x5
	.uleb128 0x4de
	.long	.LASF1701
	.byte	0x5
	.uleb128 0x4df
	.long	.LASF1702
	.byte	0x5
	.uleb128 0x4e1
	.long	.LASF1703
	.byte	0x5
	.uleb128 0x4e2
	.long	.LASF1704
	.byte	0x5
	.uleb128 0x4e3
	.long	.LASF1705
	.byte	0x5
	.uleb128 0x4e4
	.long	.LASF1706
	.byte	0x5
	.uleb128 0x4e6
	.long	.LASF1707
	.byte	0x5
	.uleb128 0x4e7
	.long	.LASF1708
	.byte	0x5
	.uleb128 0x4e8
	.long	.LASF1709
	.byte	0x5
	.uleb128 0x4e9
	.long	.LASF1710
	.byte	0x5
	.uleb128 0x4eb
	.long	.LASF1711
	.byte	0x5
	.uleb128 0x4ec
	.long	.LASF1712
	.byte	0x5
	.uleb128 0x4ed
	.long	.LASF1713
	.byte	0x5
	.uleb128 0x4ee
	.long	.LASF1714
	.byte	0x5
	.uleb128 0x4f0
	.long	.LASF1715
	.byte	0x5
	.uleb128 0x4f1
	.long	.LASF1716
	.byte	0x5
	.uleb128 0x4f2
	.long	.LASF1717
	.byte	0x5
	.uleb128 0x4f3
	.long	.LASF1718
	.byte	0x5
	.uleb128 0x4f5
	.long	.LASF1719
	.byte	0x5
	.uleb128 0x4f6
	.long	.LASF1720
	.byte	0x5
	.uleb128 0x4f7
	.long	.LASF1721
	.byte	0x5
	.uleb128 0x4f8
	.long	.LASF1722
	.byte	0x5
	.uleb128 0x4fa
	.long	.LASF1723
	.byte	0x5
	.uleb128 0x4fb
	.long	.LASF1724
	.byte	0x5
	.uleb128 0x4fc
	.long	.LASF1725
	.byte	0x5
	.uleb128 0x4fd
	.long	.LASF1726
	.byte	0x5
	.uleb128 0x4ff
	.long	.LASF1727
	.byte	0x5
	.uleb128 0x500
	.long	.LASF1728
	.byte	0x5
	.uleb128 0x501
	.long	.LASF1729
	.byte	0x5
	.uleb128 0x502
	.long	.LASF1730
	.byte	0x5
	.uleb128 0x504
	.long	.LASF1731
	.byte	0x5
	.uleb128 0x505
	.long	.LASF1732
	.byte	0x5
	.uleb128 0x506
	.long	.LASF1733
	.byte	0x5
	.uleb128 0x507
	.long	.LASF1734
	.byte	0x5
	.uleb128 0x509
	.long	.LASF1735
	.byte	0x5
	.uleb128 0x50a
	.long	.LASF1736
	.byte	0x5
	.uleb128 0x50b
	.long	.LASF1737
	.byte	0x5
	.uleb128 0x50c
	.long	.LASF1738
	.byte	0x5
	.uleb128 0x50e
	.long	.LASF1739
	.byte	0x5
	.uleb128 0x50f
	.long	.LASF1740
	.byte	0x5
	.uleb128 0x510
	.long	.LASF1741
	.byte	0x5
	.uleb128 0x511
	.long	.LASF1742
	.byte	0x5
	.uleb128 0x513
	.long	.LASF1743
	.byte	0x5
	.uleb128 0x514
	.long	.LASF1744
	.byte	0x5
	.uleb128 0x515
	.long	.LASF1745
	.byte	0x5
	.uleb128 0x516
	.long	.LASF1746
	.byte	0x5
	.uleb128 0x518
	.long	.LASF1747
	.byte	0x5
	.uleb128 0x519
	.long	.LASF1748
	.byte	0x5
	.uleb128 0x51a
	.long	.LASF1749
	.byte	0x5
	.uleb128 0x51b
	.long	.LASF1750
	.byte	0x5
	.uleb128 0x51d
	.long	.LASF1751
	.byte	0x5
	.uleb128 0x51e
	.long	.LASF1752
	.byte	0x5
	.uleb128 0x51f
	.long	.LASF1753
	.byte	0x5
	.uleb128 0x520
	.long	.LASF1754
	.byte	0x5
	.uleb128 0x522
	.long	.LASF1755
	.byte	0x5
	.uleb128 0x523
	.long	.LASF1756
	.byte	0x5
	.uleb128 0x524
	.long	.LASF1757
	.byte	0x5
	.uleb128 0x525
	.long	.LASF1758
	.byte	0x5
	.uleb128 0x527
	.long	.LASF1759
	.byte	0x5
	.uleb128 0x528
	.long	.LASF1760
	.byte	0x5
	.uleb128 0x529
	.long	.LASF1761
	.byte	0x5
	.uleb128 0x52a
	.long	.LASF1762
	.byte	0x5
	.uleb128 0x52c
	.long	.LASF1763
	.byte	0x5
	.uleb128 0x52d
	.long	.LASF1764
	.byte	0x5
	.uleb128 0x52e
	.long	.LASF1765
	.byte	0x5
	.uleb128 0x52f
	.long	.LASF1766
	.byte	0x5
	.uleb128 0x531
	.long	.LASF1767
	.byte	0x5
	.uleb128 0x532
	.long	.LASF1768
	.byte	0x5
	.uleb128 0x533
	.long	.LASF1769
	.byte	0x5
	.uleb128 0x534
	.long	.LASF1770
	.byte	0x5
	.uleb128 0x536
	.long	.LASF1771
	.byte	0x5
	.uleb128 0x537
	.long	.LASF1772
	.byte	0x5
	.uleb128 0x538
	.long	.LASF1773
	.byte	0x5
	.uleb128 0x539
	.long	.LASF1774
	.byte	0x5
	.uleb128 0x53b
	.long	.LASF1775
	.byte	0x5
	.uleb128 0x53c
	.long	.LASF1776
	.byte	0x5
	.uleb128 0x53d
	.long	.LASF1777
	.byte	0x5
	.uleb128 0x53e
	.long	.LASF1778
	.byte	0x5
	.uleb128 0x540
	.long	.LASF1779
	.byte	0x5
	.uleb128 0x541
	.long	.LASF1780
	.byte	0x5
	.uleb128 0x542
	.long	.LASF1781
	.byte	0x5
	.uleb128 0x543
	.long	.LASF1782
	.byte	0x5
	.uleb128 0x545
	.long	.LASF1783
	.byte	0x5
	.uleb128 0x546
	.long	.LASF1784
	.byte	0x5
	.uleb128 0x547
	.long	.LASF1785
	.byte	0x5
	.uleb128 0x548
	.long	.LASF1786
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portpins.h.34.ea328448b55f2ce92efd2518b51bb214,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1787
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1788
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1789
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1790
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1791
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1792
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1793
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1794
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1795
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1796
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1797
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1798
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1799
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1800
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1801
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1802
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1803
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1804
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1805
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1806
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1807
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1808
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1809
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1810
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1811
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1812
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1813
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1814
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1815
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1816
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1817
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1818
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1819
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1820
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1821
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1822
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1823
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1824
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1825
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1826
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1827
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1828
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1829
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1830
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1831
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1832
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1833
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1834
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1835
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1836
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1837
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1838
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1839
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1840
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1841
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1842
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1843
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.35.c7e66042b2128622b9d3bddccc9a39f4,comdat
.Ldebug_macro12:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1844
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1845
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1846
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1847
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1848
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1849
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1850
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1851
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1852
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1853
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1854
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1855
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1856
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1857
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1858
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1859
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1860
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1861
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1862
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1863
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1864
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1865
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1866
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1867
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1868
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1869
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1870
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1871
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.version.h.54.cceee89158cf4f97a4615a49702b3742,comdat
.Ldebug_macro13:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1872
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1873
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1874
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1875
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1876
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1877
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1878
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1879
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fuse.h.36.5c373c650020c0efef2cbaa98ea802c3,comdat
.Ldebug_macro14:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1880
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1881
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1882
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.36.f40126c031c14ca4311c8dcce861c2c3,comdat
.Ldebug_macro15:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1883
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1884
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1885
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1886
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1887
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1888
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1889
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1890
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1891
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1892
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1893
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1894
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1895
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1896
	.byte	0x5
	.uleb128 0xed
	.long	.LASF1897
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.83.f733e4c5dcfb33a192ad6b47d9b443d0,comdat
.Ldebug_macro16:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1898
	.byte	0x5
	.uleb128 0x55
	.long	.LASF439
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.234.7b49b621169e2007451b8fadbcc644ca,comdat
.Ldebug_macro17:
	.word	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xea
	.long	.LASF458
	.byte	0x6
	.uleb128 0x198
	.long	.LASF478
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.95.4b1f290dcac8567fba23d5be3ddbb2aa,comdat
.Ldebug_macro18:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1899
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF1900
	.byte	0x5
	.uleb128 0x176
	.long	.LASF1901
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF1902
	.byte	0x5
	.uleb128 0x194
	.long	.LASF1903
	.byte	0x5
	.uleb128 0x197
	.long	.LASF1904
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF1905
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF1906
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF1907
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1908
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1909
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1910
	.byte	0x5
	.uleb128 0x206
	.long	.LASF1911
	.byte	0x5
	.uleb128 0x216
	.long	.LASF1912
	.byte	0x5
	.uleb128 0x226
	.long	.LASF1913
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1914
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF1915
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1916
	.byte	0x5
	.uleb128 0x260
	.long	.LASF1917
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1918
	.byte	0x5
	.uleb128 0x262
	.long	.LASF1919
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1920
	.byte	0x5
	.uleb128 0x286
	.long	.LASF1921
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1922
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1923
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF1924
	.byte	0x5
	.uleb128 0x416
	.long	.LASF1925
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF1926
	.byte	0x5
	.uleb128 0x428
	.long	.LASF1927
	.byte	0x5
	.uleb128 0x431
	.long	.LASF1928
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF1929
	.byte	0x5
	.uleb128 0x45d
	.long	.LASF1930
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.b2193b640edda749ea0a45a8be5976c8,comdat
.Ldebug_macro19:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1931
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1932
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1933
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1934
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1935
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1936
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1937
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1938
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1939
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1940
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1941
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1942
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1943
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1944
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1945
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.delay.h.36.c23bbfb0ba9c1b19ee58d1a6c8b3122a,comdat
.Ldebug_macro20:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1947
	.byte	0x5
	.uleb128 0x27
	.long	.LASF1948
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.49.8dda326d1a193c15e34dd75ad3e09175,comdat
.Ldebug_macro21:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1950
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1951
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1952
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1953
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1954
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1955
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1956
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1957
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1958
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1959
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1960
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1961
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1962
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1963
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1964
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1965
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1966
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1967
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1968
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1969
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1970
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF1971
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1972
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1973
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1974
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1975
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1976
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1977
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF1978
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF1979
	.byte	0x5
	.uleb128 0xff
	.long	.LASF1980
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1981
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1982
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1983
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF1984
	.byte	0x5
	.uleb128 0x122
	.long	.LASF1985
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1986
	.byte	0x5
	.uleb128 0x131
	.long	.LASF1987
	.byte	0x5
	.uleb128 0x137
	.long	.LASF1988
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF1989
	.byte	0x5
	.uleb128 0x144
	.long	.LASF1990
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF1991
	.byte	0x5
	.uleb128 0x160
	.long	.LASF1992
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF1993
	.byte	0x5
	.uleb128 0x179
	.long	.LASF1994
	.byte	0x5
	.uleb128 0x180
	.long	.LASF1995
	.byte	0x5
	.uleb128 0x189
	.long	.LASF1996
	.byte	0x5
	.uleb128 0x191
	.long	.LASF1997
	.byte	0x5
	.uleb128 0x199
	.long	.LASF1998
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF1999
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF2000
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF2001
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF2002
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mpu6050registers.h.12.148249050ab2acd161ccf73906887114,comdat
.Ldebug_macro22:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF2004
	.byte	0x5
	.uleb128 0xe
	.long	.LASF2005
	.byte	0x5
	.uleb128 0xf
	.long	.LASF2006
	.byte	0x5
	.uleb128 0x10
	.long	.LASF2007
	.byte	0x5
	.uleb128 0x11
	.long	.LASF2008
	.byte	0x5
	.uleb128 0x12
	.long	.LASF2009
	.byte	0x5
	.uleb128 0x13
	.long	.LASF2010
	.byte	0x5
	.uleb128 0x14
	.long	.LASF2011
	.byte	0x5
	.uleb128 0x15
	.long	.LASF2012
	.byte	0x5
	.uleb128 0x16
	.long	.LASF2013
	.byte	0x5
	.uleb128 0x17
	.long	.LASF2014
	.byte	0x5
	.uleb128 0x18
	.long	.LASF2015
	.byte	0x5
	.uleb128 0x19
	.long	.LASF2016
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF2017
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF2018
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF2019
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF2020
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF2021
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF2022
	.byte	0x5
	.uleb128 0x20
	.long	.LASF2023
	.byte	0x5
	.uleb128 0x21
	.long	.LASF2024
	.byte	0x5
	.uleb128 0x22
	.long	.LASF2025
	.byte	0x5
	.uleb128 0x23
	.long	.LASF2026
	.byte	0x5
	.uleb128 0x24
	.long	.LASF2027
	.byte	0x5
	.uleb128 0x25
	.long	.LASF2028
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2029
	.byte	0x5
	.uleb128 0x27
	.long	.LASF2030
	.byte	0x5
	.uleb128 0x28
	.long	.LASF2031
	.byte	0x5
	.uleb128 0x29
	.long	.LASF2032
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF2033
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF2034
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF2035
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF2036
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF2037
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF2038
	.byte	0x5
	.uleb128 0x30
	.long	.LASF2039
	.byte	0x5
	.uleb128 0x31
	.long	.LASF2040
	.byte	0x5
	.uleb128 0x32
	.long	.LASF2041
	.byte	0x5
	.uleb128 0x33
	.long	.LASF2042
	.byte	0x5
	.uleb128 0x34
	.long	.LASF2043
	.byte	0x5
	.uleb128 0x35
	.long	.LASF2044
	.byte	0x5
	.uleb128 0x36
	.long	.LASF2045
	.byte	0x5
	.uleb128 0x37
	.long	.LASF2046
	.byte	0x5
	.uleb128 0x38
	.long	.LASF2047
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2048
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF2049
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF2050
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF2051
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF2052
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF2053
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF2054
	.byte	0x5
	.uleb128 0x40
	.long	.LASF2055
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2056
	.byte	0x5
	.uleb128 0x42
	.long	.LASF2057
	.byte	0x5
	.uleb128 0x43
	.long	.LASF2058
	.byte	0x5
	.uleb128 0x44
	.long	.LASF2059
	.byte	0x5
	.uleb128 0x45
	.long	.LASF2060
	.byte	0x5
	.uleb128 0x46
	.long	.LASF2061
	.byte	0x5
	.uleb128 0x47
	.long	.LASF2062
	.byte	0x5
	.uleb128 0x48
	.long	.LASF2063
	.byte	0x5
	.uleb128 0x49
	.long	.LASF2064
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF2065
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF2066
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF2067
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF2068
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF2069
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF2070
	.byte	0x5
	.uleb128 0x50
	.long	.LASF2071
	.byte	0x5
	.uleb128 0x51
	.long	.LASF2072
	.byte	0x5
	.uleb128 0x52
	.long	.LASF2073
	.byte	0x5
	.uleb128 0x53
	.long	.LASF2074
	.byte	0x5
	.uleb128 0x54
	.long	.LASF2075
	.byte	0x5
	.uleb128 0x55
	.long	.LASF2076
	.byte	0x5
	.uleb128 0x56
	.long	.LASF2077
	.byte	0x5
	.uleb128 0x57
	.long	.LASF2078
	.byte	0x5
	.uleb128 0x58
	.long	.LASF2079
	.byte	0x5
	.uleb128 0x59
	.long	.LASF2080
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF2081
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF2082
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF2083
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF2084
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF2085
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF2086
	.byte	0x5
	.uleb128 0x60
	.long	.LASF2087
	.byte	0x5
	.uleb128 0x61
	.long	.LASF2088
	.byte	0x5
	.uleb128 0x62
	.long	.LASF2089
	.byte	0x5
	.uleb128 0x63
	.long	.LASF2090
	.byte	0x5
	.uleb128 0x64
	.long	.LASF2091
	.byte	0x5
	.uleb128 0x65
	.long	.LASF2092
	.byte	0x5
	.uleb128 0x66
	.long	.LASF2093
	.byte	0x5
	.uleb128 0x67
	.long	.LASF2094
	.byte	0x5
	.uleb128 0x68
	.long	.LASF2095
	.byte	0x5
	.uleb128 0x69
	.long	.LASF2096
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF2097
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF2098
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF2099
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF2100
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF2101
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF2102
	.byte	0x5
	.uleb128 0x70
	.long	.LASF2103
	.byte	0x5
	.uleb128 0x71
	.long	.LASF2104
	.byte	0x5
	.uleb128 0x72
	.long	.LASF2105
	.byte	0x5
	.uleb128 0x73
	.long	.LASF2106
	.byte	0x5
	.uleb128 0x74
	.long	.LASF2107
	.byte	0x5
	.uleb128 0x75
	.long	.LASF2108
	.byte	0x5
	.uleb128 0x76
	.long	.LASF2109
	.byte	0x5
	.uleb128 0x77
	.long	.LASF2110
	.byte	0x5
	.uleb128 0x78
	.long	.LASF2111
	.byte	0x5
	.uleb128 0x79
	.long	.LASF2112
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF2113
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF2114
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF2115
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF2116
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF2117
	.byte	0x5
	.uleb128 0x80
	.long	.LASF2118
	.byte	0x5
	.uleb128 0x82
	.long	.LASF2119
	.byte	0x5
	.uleb128 0x83
	.long	.LASF2120
	.byte	0x5
	.uleb128 0x85
	.long	.LASF2121
	.byte	0x5
	.uleb128 0x86
	.long	.LASF2122
	.byte	0x5
	.uleb128 0x87
	.long	.LASF2123
	.byte	0x5
	.uleb128 0x88
	.long	.LASF2124
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF2125
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF2126
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF2127
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF2128
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF2129
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF2130
	.byte	0x5
	.uleb128 0x90
	.long	.LASF2131
	.byte	0x5
	.uleb128 0x91
	.long	.LASF2132
	.byte	0x5
	.uleb128 0x93
	.long	.LASF2133
	.byte	0x5
	.uleb128 0x94
	.long	.LASF2134
	.byte	0x5
	.uleb128 0x95
	.long	.LASF2135
	.byte	0x5
	.uleb128 0x96
	.long	.LASF2136
	.byte	0x5
	.uleb128 0x97
	.long	.LASF2137
	.byte	0x5
	.uleb128 0x98
	.long	.LASF2138
	.byte	0x5
	.uleb128 0x99
	.long	.LASF2139
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF2140
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF2141
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF2142
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF2143
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF2144
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF2145
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF2146
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF2147
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF2148
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF2149
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF2150
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF2151
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF2152
	.byte	0x5
	.uleb128 0xab
	.long	.LASF2153
	.byte	0x5
	.uleb128 0xac
	.long	.LASF2154
	.byte	0x5
	.uleb128 0xad
	.long	.LASF2155
	.byte	0x5
	.uleb128 0xae
	.long	.LASF2156
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF2157
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF2158
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF2159
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF2160
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF2161
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF2162
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF2163
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF2164
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF2165
	.byte	0x5
	.uleb128 0xba
	.long	.LASF2166
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF2167
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF2168
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF2169
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF2170
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF2171
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF2172
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF2173
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF2174
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF2175
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF2176
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF2177
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF2178
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF2179
	.byte	0x5
	.uleb128 0xca
	.long	.LASF2180
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF2181
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF2182
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF2183
	.byte	0x5
	.uleb128 0xce
	.long	.LASF2184
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF2185
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF2186
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF2187
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF2188
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF2189
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF2190
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF2191
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF2192
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF2193
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF2194
	.byte	0x5
	.uleb128 0xda
	.long	.LASF2195
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF2196
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF2197
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF2198
	.byte	0x5
	.uleb128 0xde
	.long	.LASF2199
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF2200
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF2201
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF2202
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF2203
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF2204
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF2205
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF2206
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF2207
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF2208
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF2209
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF2210
	.byte	0x5
	.uleb128 0xec
	.long	.LASF2211
	.byte	0x5
	.uleb128 0xed
	.long	.LASF2212
	.byte	0x5
	.uleb128 0xee
	.long	.LASF2213
	.byte	0x5
	.uleb128 0xef
	.long	.LASF2214
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF2215
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF2216
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF2217
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF2218
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF2219
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF2220
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF2221
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF2222
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF2223
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF2224
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF2225
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF2226
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF2227
	.byte	0x5
	.uleb128 0x100
	.long	.LASF2228
	.byte	0x5
	.uleb128 0x101
	.long	.LASF2229
	.byte	0x5
	.uleb128 0x103
	.long	.LASF2230
	.byte	0x5
	.uleb128 0x104
	.long	.LASF2231
	.byte	0x5
	.uleb128 0x106
	.long	.LASF2232
	.byte	0x5
	.uleb128 0x107
	.long	.LASF2233
	.byte	0x5
	.uleb128 0x109
	.long	.LASF2234
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF2235
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF2236
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF2237
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF2238
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF2239
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF2240
	.byte	0x5
	.uleb128 0x110
	.long	.LASF2241
	.byte	0x5
	.uleb128 0x114
	.long	.LASF2242
	.byte	0x5
	.uleb128 0x115
	.long	.LASF2243
	.byte	0x5
	.uleb128 0x116
	.long	.LASF2244
	.byte	0x5
	.uleb128 0x117
	.long	.LASF2245
	.byte	0x5
	.uleb128 0x118
	.long	.LASF2246
	.byte	0x5
	.uleb128 0x119
	.long	.LASF2247
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF2248
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF2249
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF2250
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF2251
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF2252
	.byte	0x5
	.uleb128 0x120
	.long	.LASF2253
	.byte	0x5
	.uleb128 0x121
	.long	.LASF2254
	.byte	0x5
	.uleb128 0x123
	.long	.LASF2255
	.byte	0x5
	.uleb128 0x124
	.long	.LASF2256
	.byte	0x5
	.uleb128 0x125
	.long	.LASF2257
	.byte	0x5
	.uleb128 0x126
	.long	.LASF2258
	.byte	0x5
	.uleb128 0x127
	.long	.LASF2259
	.byte	0x5
	.uleb128 0x128
	.long	.LASF2260
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF2261
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF2262
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF2263
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF2264
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF2265
	.byte	0x5
	.uleb128 0x130
	.long	.LASF2266
	.byte	0x5
	.uleb128 0x131
	.long	.LASF2267
	.byte	0x5
	.uleb128 0x132
	.long	.LASF2268
	.byte	0x5
	.uleb128 0x133
	.long	.LASF2269
	.byte	0x5
	.uleb128 0x135
	.long	.LASF2270
	.byte	0x5
	.uleb128 0x136
	.long	.LASF2271
	.byte	0x5
	.uleb128 0x137
	.long	.LASF2272
	.byte	0x5
	.uleb128 0x138
	.long	.LASF2273
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF2274
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF2275
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF2276
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF2277
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF2278
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF2279
	.byte	0x5
	.uleb128 0x140
	.long	.LASF2280
	.byte	0x5
	.uleb128 0x141
	.long	.LASF2281
	.byte	0x5
	.uleb128 0x143
	.long	.LASF2282
	.byte	0x5
	.uleb128 0x144
	.long	.LASF2283
	.byte	0x5
	.uleb128 0x145
	.long	.LASF2284
	.byte	0x5
	.uleb128 0x146
	.long	.LASF2285
	.byte	0x5
	.uleb128 0x147
	.long	.LASF2286
	.byte	0x5
	.uleb128 0x148
	.long	.LASF2287
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF2288
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF2289
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF2290
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF2291
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF2292
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF2293
	.byte	0x5
	.uleb128 0x150
	.long	.LASF2294
	.byte	0x5
	.uleb128 0x152
	.long	.LASF2295
	.byte	0x5
	.uleb128 0x153
	.long	.LASF2296
	.byte	0x5
	.uleb128 0x154
	.long	.LASF2297
	.byte	0x5
	.uleb128 0x155
	.long	.LASF2298
	.byte	0x5
	.uleb128 0x156
	.long	.LASF2299
	.byte	0x5
	.uleb128 0x157
	.long	.LASF2300
	.byte	0x5
	.uleb128 0x158
	.long	.LASF2301
	.byte	0x5
	.uleb128 0x159
	.long	.LASF2302
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF2303
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF2304
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF2305
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF2306
	.byte	0x5
	.uleb128 0x160
	.long	.LASF2307
	.byte	0x5
	.uleb128 0x161
	.long	.LASF2308
	.byte	0x5
	.uleb128 0x162
	.long	.LASF2309
	.byte	0x5
	.uleb128 0x163
	.long	.LASF2310
	.byte	0x5
	.uleb128 0x165
	.long	.LASF2311
	.byte	0x5
	.uleb128 0x166
	.long	.LASF2312
	.byte	0x5
	.uleb128 0x168
	.long	.LASF2313
	.byte	0x5
	.uleb128 0x169
	.long	.LASF2314
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF2315
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mpu6050.h.24.579a08d9611e6d66546f1d80d95b44e2,comdat
.Ldebug_macro23:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF2316
	.byte	0x5
	.uleb128 0x19
	.long	.LASF2317
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF2318
	.byte	0x5
	.uleb128 0x24
	.long	.LASF2319
	.byte	0x5
	.uleb128 0x28
	.long	.LASF2320
	.byte	0x5
	.uleb128 0x29
	.long	.LASF2321
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF2322
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF2323
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF2324
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF2325
	.byte	0x5
	.uleb128 0x36
	.long	.LASF2326
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2327
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF2328
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF2329
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF2330
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF2331
	.byte	0x5
	.uleb128 0x47
	.long	.LASF2332
	.byte	0x5
	.uleb128 0x49
	.long	.LASF2333
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF2334
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF2335
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF2336
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF2337
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF2338
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF2339
	.byte	0x5
	.uleb128 0x50
	.long	.LASF2340
	.byte	0x5
	.uleb128 0x51
	.long	.LASF2341
	.byte	0x5
	.uleb128 0x52
	.long	.LASF2342
	.byte	0x5
	.uleb128 0x53
	.long	.LASF2343
	.byte	0x5
	.uleb128 0x54
	.long	.LASF2344
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.i2cmaster.h.2.eb0ee5cd0da0a2b1cb573ae776589464,comdat
.Ldebug_macro24:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF2345
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF2346
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF2347
	.byte	0x5
	.uleb128 0xae
	.long	.LASF2348
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1206:
	.string	"OCR1AH5 5"
.LASF253:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF1988:
	.string	"log10f log10"
.LASF2085:
	.string	"MPU6050_RA_EXT_SENS_DATA_14 0x57"
.LASF2170:
	.string	"MPU6050_SLV0_FIFO_EN_BIT 0"
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
.LASF1539:
	.string	"MISO_DDR DDRB"
.LASF1762:
	.string	"PCINT10_BIT 2"
.LASF1262:
	.string	"OCR2B_1 1"
.LASF150:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF1034:
	.string	"PCINT3 3"
.LASF1845:
	.string	"SPL _SFR_IO8(0x3D)"
.LASF436:
	.string	"SIMULATOR 1"
.LASF672:
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
.LASF915:
	.string	"GPIOR25 5"
.LASF1536:
	.string	"PCINT13_PORT PORTB"
.LASF1720:
	.string	"ADC0_PORT PORTA"
.LASF2229:
	.string	"MPU6050_INTDRV_OPENDRAIN 0x01"
.LASF506:
	.string	"UINT8_MAX (__CONCAT(INT8_MAX, U) * 2U + 1U)"
.LASF2309:
	.string	"MPU6050_BANKSEL_MEM_SEL_BIT 4"
.LASF2198:
	.string	"MPU6050_I2C_SLV_REG_DIS_BIT 5"
.LASF1116:
	.string	"MUX2 2"
.LASF800:
	.string	"OCF2A 1"
.LASF1162:
	.string	"TCNT1H _SFR_MEM8(0x85)"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF1846:
	.string	"SP _SFR_IO16(0x3D)"
.LASF1188:
	.string	"ICR1H6 6"
.LASF1945:
	.string	"ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
.LASF1313:
	.string	"TWIE 0"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF1771:
	.string	"PCINT11_DDR DDRB"
.LASF840:
	.string	"EEAR _SFR_IO16(0x21)"
.LASF592:
	.string	"PRIXLEAST8 \"X\""
.LASF650:
	.string	"SCNuFAST32 \"lu\""
.LASF121:
	.string	"__INTPTR_MAX__ 32767"
.LASF1263:
	.string	"OCR2B_2 2"
.LASF1021:
	.string	"PCIE2 2"
.LASF1807:
	.string	"PIN4 4"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1345:
	.string	"RXCIE0 7"
.LASF2044:
	.string	"MPU6050_RA_I2C_SLV3_ADDR 0x2E"
.LASF2308:
	.string	"MPU6050_BANKSEL_CFG_USER_BANK_BIT 5"
.LASF1397:
	.string	"UCSR1C _SFR_MEM8(0xCA)"
.LASF1735:
	.string	"PCINT8_DDR DDRB"
.LASF1591:
	.string	"PCINT28_DDR DDRD"
.LASF1923:
	.string	"pgm_read_float_near(address_short) __LPM_float((uint16_t)(address_short))"
.LASF966:
	.string	"BORF 2"
.LASF712:
	.string	"PINB3 3"
.LASF1340:
	.string	"UCSZ02 2"
.LASF2383:
	.string	"mpu6050_testConnection"
.LASF1317:
	.string	"TWSTA 5"
.LASF1053:
	.string	"PCINT20 4"
.LASF1571:
	.string	"INT0_DDR DDRD"
.LASF2070:
	.string	"MPU6050_RA_GYRO_ZOUT_L 0x48"
.LASF1222:
	.string	"OCR1BH2 2"
.LASF2083:
	.string	"MPU6050_RA_EXT_SENS_DATA_12 0x55"
.LASF1047:
	.string	"PCINT15 7"
.LASF926:
	.string	"SPIE0 7"
.LASF1428:
	.string	"UDR1_6 6"
.LASF496:
	.string	"_AVR_IO_H_ "
.LASF2218:
	.string	"MPU6050_INTCFG_INT_LEVEL_BIT 7"
.LASF541:
	.string	"INTPTR_MIN INT16_MIN"
.LASF641:
	.string	"SCNuFAST16 \"u\""
.LASF1650:
	.string	"PCINT20_BIT 4"
.LASF1198:
	.string	"OCR1AL6 6"
.LASF509:
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
.LASF2041:
	.string	"MPU6050_RA_I2C_SLV2_ADDR 0x2B"
.LASF502:
	.string	"__CONCATenate(left,right) left ## right"
.LASF972:
	.string	"PUD 4"
.LASF1146:
	.string	"WGM13 4"
.LASF503:
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF0:
	.string	"__STDC__ 1"
.LASF1997:
	.string	"fmaxf fmax"
.LASF810:
	.string	"INTF2 2"
.LASF41:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF2154:
	.string	"MPU6050_ACCEL_FS_4 0x01"
.LASF1415:
	.string	"UBRR_7 7"
.LASF1441:
	.string	"PCINT2_vect _VECTOR(6)"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF994:
	.string	"CLKPR _SFR_MEM8(0x61)"
.LASF1878:
	.string	"__AVR_LIBC_MINOR__ 8"
.LASF1127:
	.string	"ADC4D 4"
.LASF2094:
	.string	"MPU6050_RA_EXT_SENS_DATA_23 0x60"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF1094:
	.string	"ADCH3 3"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF1244:
	.string	"TCNT2_1 1"
.LASF1518:
	.string	"FUSE_JTAGEN (unsigned char)~_BV(6)"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF868:
	.string	"CS01 1"
.LASF51:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF2381:
	.string	"mpu6050_setSleepDisabled"
.LASF495:
	.ascii	"_FFS(x) (1 + (((x) & 1) == 0) + (((x) & 3) == 0) + (((x) & 7"
	.ascii	") == 0) + (((x) & 017) == 0) + (((x) & 037) == 0) + "
	.string	"(((x) & 077) == 0) + (((x) & 0177) == 0) + (((x) & 0377) == 0) + (((x) & 0777) == 0) + (((x) & 01777) == 0) + (((x) & 03777) == 0) + (((x) & 07777) == 0) + (((x) & 017777) == 0) + (((x) & 037777) == 0) + (((x) & 077777) == 0) - (((x) & 0177777) == 0) * 16)"
.LASF2195:
	.string	"MPU6050_I2C_SLV_ADDR_LENGTH 7"
.LASF942:
	.string	"ACIS1 1"
.LASF1541:
	.string	"MISO_PIN PINB"
.LASF901:
	.string	"GPIOR10 0"
.LASF331:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF827:
	.string	"EEMPE 2"
.LASF1407:
	.string	"UBRR1L _SFR_MEM8(0xCC)"
.LASF628:
	.string	"SCNd32 \"ld\""
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF83:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF148:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF324:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF2057:
	.string	"MPU6050_RA_ACCEL_XOUT_H 0x3B"
.LASF1160:
	.string	"TCNT1L6 6"
.LASF1971:
	.string	"sqrtf sqrt"
.LASF434:
	.string	"__ELF__ 1"
.LASF744:
	.string	"DDRC _SFR_IO8(0x07)"
.LASF20:
	.string	"__SIZEOF_LONG__ 4"
.LASF2265:
	.string	"MPU6050_DETECT_ACCEL_ON_DELAY_LENGTH 2"
.LASF589:
	.string	"PRIxLEAST8 \"x\""
.LASF1883:
	.string	"_AVR_LOCK_H_ 1"
.LASF2100:
	.string	"MPU6050_RA_I2C_MST_DELAY_CTRL 0x67"
.LASF1445:
	.string	"WDT_vect _VECTOR(8)"
.LASF2201:
	.string	"MPU6050_I2C_SLV_LEN_LENGTH 4"
.LASF1770:
	.string	"OC0A_BIT 3"
.LASF1150:
	.string	"FOC1B 6"
.LASF1848:
	.string	"SREG _SFR_IO8(0x3F)"
.LASF1214:
	.string	"OCR1BL3 3"
.LASF2377:
	.string	"mpu6050_readBits"
.LASF1614:
	.string	"PCINT30_BIT 6"
.LASF460:
	.string	"__WCHAR_T__ "
.LASF1288:
	.string	"TWPS1 1"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 255"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF781:
	.string	"PORTD0 0"
.LASF1853:
	.string	"SREG_S (4)"
.LASF776:
	.string	"DDD4 4"
.LASF2188:
	.string	"MPU6050_CLOCK_DIV_444 0xB"
.LASF1020:
	.string	"PCIE1 1"
.LASF59:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF759:
	.string	"PORTC5 5"
.LASF142:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF1309:
	.string	"TWD5 5"
.LASF1874:
	.string	"__AVR_LIBC_VERSION__ 10800UL"
.LASF2150:
	.string	"MPU6050_ACONFIG_AFS_SEL_LENGTH 2"
.LASF2167:
	.string	"MPU6050_ACCEL_FIFO_EN_BIT 3"
.LASF543:
	.string	"INTMAX_MAX INT64_MAX"
.LASF1402:
	.string	"UPM10 4"
.LASF1970:
	.string	"fmodf fmod"
.LASF2172:
	.string	"MPU6050_WAIT_FOR_ES_BIT 6"
.LASF68:
	.string	"__INTPTR_TYPE__ int"
.LASF1490:
	.string	"_VECTOR_SIZE 4"
.LASF944:
	.string	"ACIE 3"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF248:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF2039:
	.string	"MPU6050_RA_I2C_SLV1_REG 0x29"
.LASF1086:
	.string	"ADCL4 4"
.LASF538:
	.string	"INT_FAST64_MIN INT64_MIN"
.LASF1274:
	.string	"TCN2UB 4"
.LASF527:
	.string	"UINT_LEAST64_MAX UINT64_MAX"
.LASF138:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF632:
	.string	"SCNiLEAST32 \"li\""
.LASF99:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF2173:
	.string	"MPU6050_SLV_3_FIFO_EN_BIT 5"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1304:
	.string	"TWD0 0"
.LASF1747:
	.string	"PCINT9_DDR DDRB"
.LASF1389:
	.string	"TXB81 0"
.LASF361:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF356:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF2179:
	.string	"MPU6050_CLOCK_DIV_320 0x2"
.LASF1131:
	.string	"DIDR1 _SFR_MEM8(0x7F)"
.LASF1070:
	.string	"PCMSK3 _SFR_MEM8(0x73)"
.LASF1125:
	.string	"ADC2D 2"
.LASF1999:
	.string	"truncf trunc"
.LASF2337:
	.string	"MPU6050_AYGAIN 16384.0"
.LASF1598:
	.string	"OC1A_BIT 5"
.LASF265:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF2365:
	.string	"length"
.LASF1099:
	.string	"ADCSRA _SFR_MEM8(0x7A)"
.LASF1751:
	.string	"AIN0_DDR DDRB"
.LASF2306:
	.string	"MPU6050_WAKE_FREQ_10 0x3"
.LASF1633:
	.string	"SDA_PIN PINC"
.LASF2347:
	.string	"I2C_WRITE 0"
.LASF2031:
	.string	"MPU6050_RA_ZRMOT_THR 0x21"
.LASF981:
	.string	"RWWSRE 4"
.LASF1436:
	.string	"PCINT0_vect_num 4"
.LASF2372:
	.string	"__ms"
.LASF664:
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
.LASF1115:
	.string	"MUX1 1"
.LASF1985:
	.string	"atanf atan"
.LASF507:
	.string	"INT16_MAX 0x7fff"
.LASF1897:
	.string	"LOCKBITS_DEFAULT (0xFF)"
.LASF534:
	.string	"INT_FAST32_MAX INT32_MAX"
.LASF1257:
	.string	"OCR2A_5 5"
.LASF1312:
	.string	"TWCR _SFR_MEM8(0xBC)"
.LASF791:
	.string	"OCF0A 1"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF2048:
	.string	"MPU6050_RA_I2C_SLV4_REG 0x32"
.LASF898:
	.string	"OCR0B_6 6"
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF767:
	.string	"PIND4 4"
.LASF640:
	.string	"SCNuLEAST16 \"u\""
.LASF1015:
	.string	"CAL5 5"
.LASF1476:
	.string	"ADC_vect_num 24"
.LASF1689:
	.string	"ADC4_PIN PINA"
.LASF971:
	.string	"IVSEL 1"
.LASF2307:
	.string	"MPU6050_BANKSEL_PRFTCH_EN_BIT 6"
.LASF852:
	.string	"EEAR9 1"
.LASF1234:
	.string	"COM2A1 7"
.LASF1546:
	.string	"PCINT14_BIT 6"
.LASF1278:
	.string	"TWBR0 0"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF727:
	.string	"PORTB0 0"
.LASF1514:
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
.LASF722:
	.string	"DDB4 4"
.LASF2177:
	.string	"MPU6050_CLOCK_DIV_348 0x0"
.LASF655:
	.string	"SCNuPTR SCNu16"
.LASF1557:
	.string	"RXD_PIN PIND"
.LASF705:
	.string	"PORTA5 5"
.LASF1694:
	.string	"PCINT4_BIT 4"
.LASF1881:
	.string	"FUSEMEM __attribute__((__used__, __section__ (\".fuse\")))"
.LASF491:
	.string	"DTOSTR_UPPERCASE 0x04"
.LASF363:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF1491:
	.string	"_VECTORS_SIZE (31 * _VECTOR_SIZE)"
.LASF991:
	.string	"WDP3 5"
.LASF948:
	.string	"ACD 7"
.LASF574:
	.string	"PRId32 \"ld\""
.LASF1474:
	.string	"ANALOG_COMP_vect_num 23"
.LASF957:
	.string	"OCDR7 7"
.LASF909:
	.string	"GPIOR2 _SFR_IO8(0x2B)"
.LASF1356:
	.string	"UBRR0L _SFR_MEM8(0xC4)"
.LASF1618:
	.string	"OC2A_BIT 7"
.LASF1342:
	.string	"RXEN0 4"
.LASF1944:
	.string	"ISR_NAKED __attribute__((naked))"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF1725:
	.string	"PCINT0_PIN PINA"
.LASF1635:
	.string	"PCINT17_DDR DDRC"
.LASF304:
	.string	"__UTA_IBIT__ 16"
.LASF1289:
	.string	"TWS3 3"
.LASF1981:
	.string	"sinhf sinh"
.LASF497:
	.string	"_AVR_SFR_DEFS_H_ 1"
.LASF619:
	.string	"PRIuPTR PRIu16"
.LASF1644:
	.string	"PCINT19_PORT PORTC"
.LASF1459:
	.string	"TIMER1_OVF_vect _VECTOR(15)"
.LASF268:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF2240:
	.string	"MPU6050_INTERRUPT_DMP_INT_BIT 1"
.LASF65:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF340:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF841:
	.string	"EEARL _SFR_IO8(0x21)"
.LASF66:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF1035:
	.string	"PCINT4 4"
.LASF19:
	.string	"__SIZEOF_INT__ 2"
.LASF1123:
	.string	"ADC0D 0"
.LASF1911:
	.ascii	"__LPM_dword_tiny__(addr) (__ext"
	.string	"ension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint32_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1662:
	.string	"PCINT23_BIT 7"
.LASF916:
	.string	"GPIOR26 6"
.LASF815:
	.string	"GPIOR0 _SFR_IO8(0x1E)"
.LASF1462:
	.string	"TIMER0_COMPB_vect_num 17"
.LASF1117:
	.string	"MUX3 3"
.LASF452:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF397:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF556:
	.string	"UINT32_C(value) __CONCAT(value, UL)"
.LASF1189:
	.string	"ICR1H7 7"
.LASF1680:
	.string	"ADC5_PORT PORTA"
.LASF1260:
	.string	"OCR2B _SFR_MEM8(0xB4)"
.LASF2151:
	.string	"MPU6050_ACONFIG_ACCEL_HPF_BIT 2"
.LASF1927:
	.string	"pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
.LASF1589:
	.string	"OC1B_PIN PIND"
.LASF1592:
	.string	"PCINT28_PORT PORTD"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF1860:
	.string	"YH r29"
.LASF321:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF1022:
	.string	"PCIE3 3"
.LASF1806:
	.string	"PIN5 5"
.LASF1169:
	.string	"TCNT1H6 6"
.LASF2269:
	.string	"MPU6050_DETECT_MOT_COUNT_LENGTH 2"
.LASF2203:
	.string	"MPU6050_I2C_SLV4_ADDR_BIT 6"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF548:
	.string	"SIG_ATOMIC_MAX INT8_MAX"
.LASF326:
	.string	"__AVR__ 1"
.LASF2369:
	.string	"mask"
.LASF1538:
	.string	"PCINT13_BIT 5"
.LASF1699:
	.string	"PCINT3_DDR DDRA"
.LASF989:
	.string	"WDE 3"
.LASF1049:
	.string	"PCINT16 0"
.LASF2316:
	.string	"MPU6050_I2CFLEURYPATH \"../i2chw/i2cmaster.h\""
.LASF1068:
	.string	"OCIE2A 1"
.LASF1100:
	.string	"ADPS0 0"
.LASF1223:
	.string	"OCR1BH3 3"
.LASF1052:
	.string	"PCINT19 3"
.LASF1269:
	.string	"ASSR _SFR_MEM8(0xB6)"
.LASF2104:
	.string	"MPU6050_RA_PWR_MGMT_1 0x6B"
.LASF931:
	.string	"SPDR0 _SFR_IO8(0x2E)"
.LASF269:
	.string	"__QQ_FBIT__ 7"
.LASF1892:
	.string	"BLB0_MODE_4 (0xF7)"
.LASF1296:
	.string	"TWA0 1"
.LASF1199:
	.string	"OCR1AL7 7"
.LASF1783:
	.string	"PCINT12_DDR DDRB"
.LASF1764:
	.string	"AIN1_PORT PORTB"
.LASF1529:
	.string	"SIGNATURE_1 0x95"
.LASF1875:
	.string	"__AVR_LIBC_DATE_STRING__ \"20111229\""
.LASF28:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF1417:
	.string	"UBRR_8 0"
.LASF2285:
	.string	"MPU6050_PWR1_TEMP_DIS_BIT 3"
.LASF418:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF637:
	.string	"SCNoLEAST16 \"o\""
.LASF1566:
	.string	"TXD_BIT 1"
.LASF1371:
	.string	"UDR0_0 0"
.LASF1826:
	.string	"PB6 PORTB6"
.LASF1788:
	.string	"PORT7 7"
.LASF1095:
	.string	"ADCH4 4"
.LASF1812:
	.string	"PA0 PORTA0"
.LASF1548:
	.string	"SCK_PORT PORTB"
.LASF976:
	.string	"SPMCSR _SFR_IO8(0x37)"
.LASF1245:
	.string	"TCNT2_2 2"
.LASF945:
	.string	"ACI 4"
.LASF2024:
	.string	"MPU6050_RA_CONFIG 0x1A"
.LASF2206:
	.string	"MPU6050_I2C_SLV4_INT_EN_BIT 6"
.LASF40:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF36:
	.string	"__PTRDIFF_TYPE__ int"
.LASF1803:
	.string	"DD0 0"
.LASF1744:
	.string	"CLKO_PORT PORTB"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF2199:
	.string	"MPU6050_I2C_SLV_GRP_BIT 4"
.LASF902:
	.string	"GPIOR11 1"
.LASF303:
	.string	"__UTA_FBIT__ 48"
.LASF1903:
	.string	"PSTR(s) (__extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
.LASF1090:
	.string	"ADCH _SFR_MEM8(0x79)"
.LASF1696:
	.string	"ADC3_PORT PORTA"
.LASF1666:
	.string	"ADC7_BIT 7"
.LASF855:
	.string	"GTCCR _SFR_IO8(0x23)"
.LASF2329:
	.string	"MPU6050_ACCEL_LSB_8 4096.0"
.LASF822:
	.string	"GPIOR06 6"
.LASF550:
	.string	"SIZE_MAX (__CONCAT(INT16_MAX, U))"
.LASF2037:
	.string	"MPU6050_RA_I2C_SLV0_CTRL 0x27"
.LASF1161:
	.string	"TCNT1L7 7"
.LASF1314:
	.string	"TWEN 2"
.LASF564:
	.string	"PRIdFAST8 \"d\""
.LASF437:
	.string	"_STDLIB_H_ 1"
.LASF599:
	.string	"PRIuFAST16 \"u\""
.LASF687:
	.string	"PINA5 5"
.LASF2189:
	.string	"MPU6050_CLOCK_DIV_421 0xC"
.LASF1936:
	.string	"ISR(vector,...) void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF2000:
	.string	"roundf round"
.LASF1919:
	.string	"__LPM_float(addr) __LPM_float_enhanced__(addr)"
.LASF1943:
	.string	"ISR_NOBLOCK __attribute__((interrupt))"
.LASF322:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF1642:
	.string	"PCINT18_BIT 2"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF1582:
	.string	"INT1_BIT 3"
.LASF1215:
	.string	"OCR1BL4 4"
.LASF1101:
	.string	"ADPS1 1"
.LASF1586:
	.string	"PCINT27_BIT 3"
.LASF540:
	.string	"INTPTR_MAX INT16_MAX"
.LASF445:
	.string	"_T_SIZE_ "
.LASF777:
	.string	"DDD5 5"
.LASF950:
	.string	"OCDR0 0"
.LASF1071:
	.string	"PCINT24 0"
.LASF2243:
	.string	"MPU6050_DMPINT_4_BIT 4"
.LASF1949:
	.string	"_UTIL_DELAY_BASIC_H_ 1"
.LASF760:
	.string	"PORTC6 6"
.LASF2350:
	.string	"long int"
.LASF1310:
	.string	"TWD6 6"
.LASF1655:
	.string	"PCINT22_DDR DDRC"
.LASF1701:
	.string	"PCINT3_PIN PINA"
.LASF832:
	.string	"EEDR0 0"
.LASF857:
	.string	"PSRASY 1"
.LASF2204:
	.string	"MPU6050_I2C_SLV4_ADDR_LENGTH 7"
.LASF1922:
	.string	"pgm_read_dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
.LASF1059:
	.string	"OCIE0A 1"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF525:
	.string	"INT_LEAST64_MAX INT64_MAX"
.LASF1470:
	.string	"USART0_UDRE_vect_num 21"
.LASF1137:
	.string	"COM1B0 4"
.LASF2317:
	.string	"MPU6050_I2CINIT 1"
.LASF2296:
	.string	"MPU6050_PWR2_LP_WAKE_CTRL_LENGTH 2"
.LASF1251:
	.string	"OCR2A _SFR_MEM8(0xB3)"
.LASF2330:
	.string	"MPU6050_ACCEL_LSB_16 2048.0"
.LASF547:
	.string	"PTRDIFF_MIN INT16_MIN"
.LASF671:
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
.LASF2125:
	.string	"MPU6050_EXT_SYNC_DISABLED 0x0"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF2395:
	.string	"i2c_readAck"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF455:
	.string	"_GCC_SIZE_T "
.LASF1456:
	.string	"TIMER1_COMPB_vect_num 14"
.LASF1980:
	.string	"coshf cosh"
.LASF1839:
	.string	"PD3 PORTD3"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF629:
	.string	"SCNdLEAST32 \"ld\""
.LASF327:
	.string	"AVR 1"
.LASF1819:
	.string	"PA7 PORTA7"
.LASF2079:
	.string	"MPU6050_RA_EXT_SENS_DATA_08 0x51"
.LASF607:
	.string	"PRIoLEAST32 \"lo\""
.LASF1368:
	.string	"UBRR10 2"
.LASF1594:
	.string	"PCINT28_BIT 4"
.LASF1917:
	.string	"__LPM_word(addr) __LPM_word_enhanced__(addr)"
.LASF428:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF682:
	.string	"PINA0 0"
.LASF1286:
	.string	"TWSR _SFR_MEM8(0xB9)"
.LASF726:
	.string	"PORTB _SFR_IO8(0x05)"
.LASF709:
	.string	"PINB0 0"
.LASF2270:
	.string	"MPU6050_DETECT_DECREMENT_RESET 0x0"
.LASF1729:
	.string	"XCK_PIN PINB"
.LASF1531:
	.string	"MOSI_DDR DDRB"
.LASF515:
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
.LASF2023:
	.string	"MPU6050_RA_SMPLRT_DIV 0x19"
.LASF423:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF1258:
	.string	"OCR2A_6 6"
.LASF1926:
	.string	"pgm_read_word(address_short) pgm_read_word_near(address_short)"
.LASF482:
	.string	"__ATTR_NORETURN__ __attribute__((__noreturn__))"
.LASF1567:
	.string	"PCINT25_DDR DDRD"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF2202:
	.string	"MPU6050_I2C_SLV4_RW_BIT 7"
.LASF899:
	.string	"OCR0B_7 7"
.LASF768:
	.string	"PIND5 5"
.LASF1484:
	.string	"USART1_RX_vect_num 28"
.LASF1016:
	.string	"CAL6 6"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF2038:
	.string	"MPU6050_RA_I2C_SLV1_ADDR 0x28"
.LASF1525:
	.string	"__LOCK_BITS_EXIST "
.LASF612:
	.string	"PRIx32 \"lx\""
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
.LASF1463:
	.string	"TIMER0_COMPB_vect _VECTOR(17)"
.LASF1774:
	.string	"PCINT11_BIT 3"
.LASF2001:
	.string	"lroundf lround"
.LASF1279:
	.string	"TWBR1 1"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1502:
	.string	"FUSE_MEMORY_SIZE 3"
.LASF2050:
	.string	"MPU6050_RA_I2C_SLV4_CTRL 0x34"
.LASF728:
	.string	"PORTB1 1"
.LASF2077:
	.string	"MPU6050_RA_EXT_SENS_DATA_06 0x4F"
.LASF1359:
	.string	"UBRR2 2"
.LASF1847:
	.string	"SPH _SFR_IO8(0x3E)"
.LASF453:
	.string	"_SIZE_T_DECLARED "
.LASF883:
	.string	"OCR0A_0 0"
.LASF2225:
	.string	"MPU6050_INTCFG_CLKOUT_EN_BIT 0"
.LASF2279:
	.string	"MPU6050_USERCTRL_FIFO_RESET_BIT 2"
.LASF706:
	.string	"PORTA6 6"
.LASF858:
	.string	"TSM 7"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF615:
	.string	"PRIX32 \"lX\""
.LASF2015:
	.string	"MPU6050_RA_ZA_OFFS_H 0x0A"
.LASF1691:
	.string	"PCINT4_DDR DDRA"
.LASF2294:
	.string	"MPU6050_CLOCK_KEEP_RESET 0x07"
.LASF511:
	.string	"INT32_MIN (-INT32_MAX - 1L)"
.LASF1393:
	.string	"RXEN1 4"
.LASF949:
	.string	"OCDR _SFR_IO8(0x31)"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF2051:
	.string	"MPU6050_RA_I2C_SLV4_DI 0x35"
.LASF1405:
	.string	"UMSEL11 7"
.LASF1290:
	.string	"TWS4 4"
.LASF2401:
	.string	"mpu6050_writeBits"
.LASF1930:
	.string	"pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __volatile__( \"ldi\t%A0, lo8(%1)\" \"\\n\\t\" \"ldi\t%B0, hi8(%1)\" \"\\n\\t\" \"ldi\t%C0, hh8(%1)\" \"\\n\\t\" \"clr\t%D0\" \"\\n\\t\" : \"=d\" (tmp) : \"p\" (&(var)) ); tmp; })"
.LASF359:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF932:
	.string	"SPDRB0 0"
.LASF1208:
	.string	"OCR1AH7 7"
.LASF2238:
	.string	"MPU6050_INTERRUPT_I2C_MST_INT_BIT 3"
.LASF590:
	.string	"PRIxFAST8 \"x\""
.LASF920:
	.string	"SPR10 1"
.LASF1976:
	.string	"ceilf ceil"
.LASF973:
	.string	"BODSE 5"
.LASF379:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF319:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF1036:
	.string	"PCINT5 5"
.LASF745:
	.string	"DDC0 0"
.LASF426:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF2324:
	.string	"MPU6050_GYRO_LSB_1000 32.8"
.LASF1608:
	.string	"OC2B_PORT PORTD"
.LASF917:
	.string	"GPIOR27 7"
.LASF2256:
	.string	"MPU6050_DELAYCTRL_I2C_SLV4_DLY_EN_BIT 4"
.LASF2112:
	.string	"MPU6050_RA_FIFO_COUNTL 0x73"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF1579:
	.string	"INT1_DDR DDRD"
.LASF1726:
	.string	"PCINT0_BIT 0"
.LASF2378:
	.string	"mpu6050_readBit"
.LASF374:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF573:
	.string	"PRIiFAST16 \"i\""
.LASF1446:
	.string	"TIMER2_COMPA_vect_num 9"
.LASF1118:
	.string	"MUX4 4"
.LASF1001:
	.string	"PRADC 0"
.LASF1781:
	.string	"OC0B_PIN PINB"
.LASF2387:
	.string	"gxds"
.LASF2331:
	.string	"MPU6050_AGAIN MPU6050_ACCEL_LSB_2"
.LASF2032:
	.string	"MPU6050_RA_ZRMOT_DUR 0x22"
.LASF206:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF2363:
	.string	"__us"
.LASF432:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF1840:
	.string	"PD4 PORTD4"
.LASF943:
	.string	"ACIC 2"
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF2237:
	.string	"MPU6050_INTERRUPT_FIFO_OFLOW_BIT 4"
.LASF2099:
	.string	"MPU6050_RA_I2C_SLV3_DO 0x66"
.LASF1479:
	.string	"EE_READY_vect _VECTOR(25)"
.LASF1805:
	.string	"PIN6 6"
.LASF1170:
	.string	"TCNT1H7 7"
.LASF1264:
	.string	"OCR2B_3 3"
.LASF736:
	.string	"PINC0 0"
.LASF542:
	.string	"UINTPTR_MAX UINT16_MAX"
.LASF2159:
	.string	"MPU6050_DHPF_2P5 0x02"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF231:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF1142:
	.string	"CS10 0"
.LASF1785:
	.string	"PCINT12_PIN PINB"
.LASF842:
	.string	"EEAR0 0"
.LASF714:
	.string	"PINB5 5"
.LASF1294:
	.string	"TWAR _SFR_MEM8(0xBA)"
.LASF1055:
	.string	"PCINT22 6"
.LASF797:
	.string	"ICF1 5"
.LASF553:
	.string	"INT16_C(value) value"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF1224:
	.string	"OCR1BH4 4"
.LASF1444:
	.string	"WDT_vect_num 8"
.LASF572:
	.string	"PRIiLEAST16 \"i\""
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF2007:
	.string	"MPU6050_RA_ZG_OFFS_TC 0x02"
.LASF1967:
	.string	"sinf sin"
.LASF947:
	.string	"ACBG 6"
.LASF1229:
	.string	"WGM20 0"
.LASF587:
	.string	"PRIuFAST8 \"u\""
.LASF1607:
	.string	"OC2B_DDR DDRD"
.LASF593:
	.string	"PRIXFAST8 \"X\""
.LASF1448:
	.string	"TIMER2_COMPB_vect_num 10"
.LASF2012:
	.string	"MPU6050_RA_XA_OFFS_L_TC 0x07"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF1765:
	.string	"AIN1_PIN PINB"
.LASF1572:
	.string	"INT0_PORT PORTD"
.LASF457:
	.string	"__size_t "
.LASF1501:
	.string	"FLASHEND (0x7FFF)"
.LASF1497:
	.string	"XRAMSIZE (0)"
.LASF1134:
	.string	"TCCR1A _SFR_MEM8(0x80)"
.LASF1568:
	.string	"PCINT25_PORT PORTD"
.LASF1951:
	.string	"M_E 2.7182818284590452354"
.LASF1634:
	.string	"SDA_BIT 1"
.LASF946:
	.string	"ACO 5"
.LASF1939:
	.string	"ISR_ALIAS(vector,tgt) void vector (void) __attribute__((signal, naked, __INTR_ATTRS)); void vector (void) { asm volatile (\"jmp \" __STRINGIFY(tgt) ::); }"
.LASF1372:
	.string	"UDR0_1 1"
.LASF1373:
	.string	"UDR0_2 2"
.LASF2130:
	.string	"MPU6050_EXT_SYNC_ACCEL_XOUT_L 0x5"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF1833:
	.string	"PC5 PORTC5"
.LASF1246:
	.string	"TCNT2_3 3"
.LASF318:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF50:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF2197:
	.string	"MPU6050_I2C_SLV_BYTE_SW_BIT 6"
.LASF828:
	.string	"EERIE 3"
.LASF1802:
	.string	"DD1 1"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF1238:
	.string	"CS22 2"
.LASF1429:
	.string	"UDR1_7 7"
.LASF903:
	.string	"GPIOR12 2"
.LASF1191:
	.string	"OCR1AL _SFR_MEM8(0x88)"
.LASF1406:
	.string	"UBRR1 _SFR_MEM16(0xCC)"
.LASF631:
	.string	"SCNi32 \"li\""
.LASF2194:
	.string	"MPU6050_I2C_SLV_ADDR_BIT 6"
.LASF823:
	.string	"GPIOR07 7"
.LASF1121:
	.string	"REFS1 7"
.LASF1895:
	.string	"BLB1_MODE_3 (0xCF)"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF984:
	.string	"SPMIE 7"
.LASF2020:
	.string	"MPU6050_RA_YG_OFFS_USRL 0x16"
.LASF535:
	.string	"INT_FAST32_MIN INT32_MIN"
.LASF226:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF977:
	.string	"SPMEN 0"
.LASF337:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF1792:
	.string	"PORT3 3"
.LASF427:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF1388:
	.string	"UCSR1B _SFR_MEM8(0xC9)"
.LASF2354:
	.string	"unsigned char"
.LASF2042:
	.string	"MPU6050_RA_I2C_SLV2_REG 0x2C"
.LASF668:
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
.LASF2074:
	.string	"MPU6050_RA_EXT_SENS_DATA_03 0x4C"
.LASF1216:
	.string	"OCR1BL5 5"
.LASF390:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF76:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF1333:
	.string	"FE0 4"
.LASF661:
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
.LASF1365:
	.string	"UBRR0H _SFR_MEM8(0xC5)"
.LASF783:
	.string	"PORTD2 2"
.LASF29:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1057:
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
.LASF778:
	.string	"DDD6 6"
.LASF1859:
	.string	"YL r28"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF801:
	.string	"OCF2B 2"
.LASF2192:
	.string	"MPU6050_CLOCK_DIV_364 0xF"
.LASF1311:
	.string	"TWD7 7"
.LASF1733:
	.string	"T0_PIN PINB"
.LASF1058:
	.string	"TOIE0 0"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF833:
	.string	"EEDR1 1"
.LASF486:
	.string	"labs(__i) __builtin_labs(__i)"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF1435:
	.string	"INT2_vect _VECTOR(3)"
.LASF1738:
	.string	"PCINT8_BIT 0"
.LASF2231:
	.string	"MPU6050_INTLATCH_WAITCLEAR 0x01"
.LASF1508:
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
.LASF1659:
	.string	"PCINT23_DDR DDRC"
.LASF1138:
	.string	"COM1B1 5"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF1505:
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
.LASF860:
	.string	"WGM00 0"
.LASF733:
	.string	"PORTB6 6"
.LASF1010:
	.string	"CAL0 0"
.LASF1677:
	.string	"PCINT6_PIN PINA"
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF2043:
	.string	"MPU6050_RA_I2C_SLV2_CTRL 0x2D"
.LASF26:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF563:
	.string	"PRIdLEAST8 \"d\""
.LASF2141:
	.string	"MPU6050_GCONFIG_FS_SEL_LENGTH 2"
.LASF186:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF1533:
	.string	"MOSI_PIN PINB"
.LASF1867:
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
.LASF1672:
	.string	"ADC6_PORT PORTA"
.LASF2214:
	.string	"MPU6050_MST_I2C_SLV3_NACK_BIT 3"
.LASF986:
	.string	"WDP0 0"
.LASF1989:
	.string	"powf pow"
.LASF1947:
	.string	"_UTIL_DELAY_H_ 1"
.LASF1369:
	.string	"UBRR11 3"
.LASF2109:
	.string	"MPU6050_RA_DMP_CFG_1 0x70"
.LASF802:
	.string	"PCIFR _SFR_IO8(0x1B)"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF2252:
	.string	"MPU6050_MOTION_MOT_ZNEG_BIT 3"
.LASF1959:
	.string	"M_1_PI 0.31830988618379067154"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF961:
	.string	"SM1 2"
.LASF2234:
	.string	"MPU6050_INTERRUPT_FF_BIT 7"
.LASF1759:
	.string	"PCINT10_DDR DDRB"
.LASF412:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF1488:
	.string	"USART1_TX_vect_num 30"
.LASF2127:
	.string	"MPU6050_EXT_SYNC_GYRO_XOUT_L 0x2"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF372:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF796:
	.string	"OCF1B 2"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF769:
	.string	"PIND6 6"
.LASF1455:
	.string	"TIMER1_COMPA_vect _VECTOR(13)"
.LASF1017:
	.string	"CAL7 7"
.LASF576:
	.string	"PRIdFAST32 \"ld\""
.LASF1776:
	.string	"SS_PORT PORTB"
.LASF1438:
	.string	"PCINT1_vect_num 5"
.LASF21:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF2148:
	.string	"MPU6050_ACONFIG_ZA_ST_BIT 5"
.LASF562:
	.string	"PRId8 \"d\""
.LASF594:
	.string	"PRIo16 \"o\""
.LASF746:
	.string	"DDC1 1"
.LASF2180:
	.string	"MPU6050_CLOCK_DIV_308 0x3"
.LASF974:
	.string	"BODS 6"
.LASF1280:
	.string	"TWBR2 2"
.LASF2191:
	.string	"MPU6050_CLOCK_DIV_381 0xE"
.LASF1050:
	.string	"PCINT17 1"
.LASF729:
	.string	"PORTB2 2"
.LASF2336:
	.string	"MPU6050_AXGAIN 16384.0"
.LASF724:
	.string	"DDB6 6"
.LASF884:
	.string	"OCR0A_1 1"
.LASF1331:
	.string	"UPE0 2"
.LASF792:
	.string	"OCF0B 2"
.LASF338:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF782:
	.string	"PORTD1 1"
.LASF2228:
	.string	"MPU6050_INTDRV_PUSHPULL 0x00"
.LASF467:
	.string	"_WCHAR_T_DEFINED_ "
.LASF1104:
	.string	"ADIF 4"
.LASF1030:
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
.LASF1172:
	.string	"ICR1L _SFR_MEM8(0x86)"
.LASF95:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF1748:
	.string	"PCINT9_PORT PORTB"
.LASF2143:
	.string	"MPU6050_GYRO_FS_500 0x01"
.LASF1301:
	.string	"TWA5 6"
.LASF549:
	.string	"SIG_ATOMIC_MIN INT8_MIN"
.LASF2126:
	.string	"MPU6050_EXT_SYNC_TEMP_OUT_L 0x1"
.LASF1753:
	.string	"AIN0_PIN PINB"
.LASF1379:
	.string	"UCSR1A _SFR_MEM8(0xC8)"
.LASF2255:
	.string	"MPU6050_DELAYCTRL_DELAY_ES_SHADOW_BIT 7"
.LASF2222:
	.string	"MPU6050_INTCFG_FSYNC_INT_LEVEL_BIT 3"
.LASF1517:
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
.LASF933:
	.string	"SPDRB1 1"
.LASF2313:
	.string	"MPU6050_DMP_MEMORY_BANKS 8"
.LASF2155:
	.string	"MPU6050_ACCEL_FS_8 0x02"
.LASF2082:
	.string	"MPU6050_RA_EXT_SENS_DATA_11 0x54"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF2338:
	.string	"MPU6050_AZGAIN 16384.0"
.LASF1265:
	.string	"OCR2B_4 4"
.LASF1037:
	.string	"PCINT6 6"
.LASF254:
	.string	"__ULACCUM_FBIT__ 32"
.LASF1153:
	.string	"TCNT1L _SFR_MEM8(0x84)"
.LASF113:
	.string	"__INT_FAST8_MAX__ 127"
.LASF2247:
	.string	"MPU6050_DMPINT_0_BIT 0"
.LASF1130:
	.string	"ADC7D 7"
.LASF1291:
	.string	"TWS5 5"
.LASF1679:
	.string	"ADC5_DDR DDRA"
.LASF623:
	.string	"SCNdLEAST16 \"d\""
.LASF1433:
	.string	"INT1_vect _VECTOR(2)"
.LASF1708:
	.string	"PCINT2_PORT PORTA"
.LASF1620:
	.string	"PCINT31_PORT PORTD"
.LASF2060:
	.string	"MPU6050_RA_ACCEL_YOUT_L 0x3E"
.LASF2388:
	.string	"gyds"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF803:
	.string	"PCIF0 0"
.LASF1904:
	.string	"__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) : \"r0\" ); __result; }))"
.LASF2161:
	.string	"MPU6050_DHPF_0P63 0x04"
.LASF1610:
	.string	"OC2B_BIT 6"
.LASF469:
	.string	"_WCHAR_T_H "
.LASF171:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF128:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF737:
	.string	"PINC1 1"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF1899:
	.string	"__ATTR_PROGMEM__ __attribute__((__progmem__))"
.LASF32:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1627:
	.string	"PCINT16_DDR DDRC"
.LASF1143:
	.string	"CS11 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF843:
	.string	"EEAR1 1"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF1649:
	.string	"PCINT20_PIN PINC"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF1056:
	.string	"PCINT23 7"
.LASF1051:
	.string	"PCINT18 2"
.LASF1760:
	.string	"PCINT10_PORT PORTB"
.LASF1973:
	.string	"hypotf hypot"
.LASF1102:
	.string	"ADPS2 2"
.LASF1225:
	.string	"OCR1BH5 5"
.LASF388:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF692:
	.string	"DDA1 1"
.LASF1704:
	.string	"ADC2_PORT PORTA"
.LASF1562:
	.string	"PCINT24_BIT 0"
.LASF812:
	.string	"INT0 0"
.LASF2397:
	.string	"i2c_init"
.LASF2205:
	.string	"MPU6050_I2C_SLV4_EN_BIT 7"
.LASF652:
	.string	"SCNxLEAST32 \"lx\""
.LASF1230:
	.string	"WGM21 1"
.LASF94:
	.string	"__UINT16_MAX__ 65535U"
.LASF1898:
	.string	"__PGMSPACE_H_ 1"
.LASF1298:
	.string	"TWA2 3"
.LASF568:
	.string	"PRId16 \"d\""
.LASF362:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF1767:
	.string	"OC0A_DDR DDRB"
.LASF856:
	.string	"PSRSYNC 0"
.LASF1820:
	.string	"PB0 PORTB0"
.LASF850:
	.string	"EEARH _SFR_IO8(0x22)"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF2266:
	.string	"MPU6050_DETECT_FF_COUNT_BIT 3"
.LASF184:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF2334:
	.string	"MPU6050_AYOFFSET 0"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF1640:
	.string	"PCINT18_PORT PORTC"
.LASF669:
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
.LASF780:
	.string	"PORTD _SFR_IO8(0x0B)"
.LASF1732:
	.string	"T0_PORT PORTB"
.LASF1026:
	.string	"ISC10 2"
.LASF1097:
	.string	"ADCH6 6"
.LASF2171:
	.string	"MPU6050_MULT_MST_EN_BIT 7"
.LASF8:
	.string	"__VERSION__ \"4.8.1\""
.LASF1247:
	.string	"TCNT2_4 4"
.LASF174:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF92:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF74:
	.string	"__INT_MAX__ 32767"
.LASF1370:
	.string	"UDR0 _SFR_MEM8(0xC6)"
.LASF1685:
	.string	"PCINT5_PIN PINA"
.LASF1647:
	.string	"PCINT20_DDR DDRC"
.LASF1515:
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
.LASF1801:
	.string	"DD2 2"
.LASF64:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF1657:
	.string	"PCINT22_PIN PINC"
.LASF904:
	.string	"GPIOR13 3"
.LASF1112:
	.string	"ACME 6"
.LASF352:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF1994:
	.string	"signbitf signbit"
.LASF2303:
	.string	"MPU6050_WAKE_FREQ_1P25 0x0"
.LASF1595:
	.string	"OC1A_DDR DDRD"
.LASF2193:
	.string	"MPU6050_I2C_SLV_RW_BIT 7"
.LASF1693:
	.string	"PCINT4_PIN PINA"
.LASF44:
	.string	"__INT8_TYPE__ signed char"
.LASF1039:
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
.LASF522:
	.string	"INT_LEAST32_MAX INT32_MAX"
.LASF1681:
	.string	"ADC5_PIN PINA"
.LASF1619:
	.string	"PCINT31_DDR DDRD"
.LASF1512:
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
.LASF1995:
	.string	"fdimf fdim"
.LASF537:
	.string	"INT_FAST64_MAX INT64_MAX"
.LASF1656:
	.string	"PCINT22_PORT PORTC"
.LASF1888:
	.string	"LB_MODE_3 (0xFC)"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF2254:
	.string	"MPU6050_MOTION_MOT_ZRMOT_BIT 0"
.LASF1503:
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
.LASF1473:
	.string	"USART0_TX_vect _VECTOR(22)"
.LASF2061:
	.string	"MPU6050_RA_ACCEL_ZOUT_H 0x3F"
.LASF565:
	.string	"PRIi8 \"i\""
.LASF1590:
	.string	"OC1B_BIT 4"
.LASF2067:
	.string	"MPU6050_RA_GYRO_YOUT_H 0x45"
.LASF979:
	.string	"PGWRT 2"
.LASF2009:
	.string	"MPU6050_RA_Y_FINE_GAIN 0x04"
.LASF2213:
	.string	"MPU6050_MST_I2C_SLV4_NACK_BIT 4"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF1886:
	.string	"LB_MODE_1 (0xFF)"
.LASF1384:
	.string	"FE1 4"
.LASF504:
	.string	"INT8_MAX 0x7f"
.LASF2315:
	.string	"MPU6050_DMP_MEMORY_CHUNK_SIZE 16"
.LASF1821:
	.string	"PB1 PORTB1"
.LASF784:
	.string	"PORTD3 3"
.LASF2069:
	.string	"MPU6050_RA_GYRO_ZOUT_H 0x47"
.LASF779:
	.string	"DDD7 7"
.LASF1555:
	.string	"RXD_DDR DDRD"
.LASF1754:
	.string	"AIN0_BIT 2"
.LASF683:
	.string	"PINA1 1"
.LASF1106:
	.string	"ADSC 6"
.LASF2022:
	.string	"MPU6050_RA_ZG_OFFS_USRL 0x18"
.LASF968:
	.string	"JTRF 4"
.LASF2221:
	.string	"MPU6050_INTCFG_INT_RD_CLEAR_BIT 4"
.LASF1814:
	.string	"PA2 PORTA2"
.LASF2078:
	.string	"MPU6050_RA_EXT_SENS_DATA_07 0x50"
.LASF1062:
	.string	"TOIE1 0"
.LASF1887:
	.string	"LB_MODE_2 (0xFE)"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF2068:
	.string	"MPU6050_RA_GYRO_YOUT_L 0x46"
.LASF454:
	.string	"___int_size_t_h "
.LASF2289:
	.string	"MPU6050_CLOCK_PLL_XGYRO 0x01"
.LASF526:
	.string	"INT_LEAST64_MIN INT64_MIN"
.LASF614:
	.string	"PRIxFAST32 \"lx\""
.LASF1089:
	.string	"ADCL7 7"
.LASF1360:
	.string	"UBRR3 3"
.LASF316:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF861:
	.string	"WGM01 1"
.LASF1408:
	.string	"UBRR_0 0"
.LASF1440:
	.string	"PCINT2_vect_num 6"
.LASF1942:
	.string	"ISR_BLOCK "
.LASF429:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF1399:
	.string	"UCSZ10 1"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF2353:
	.string	"uint8_t"
.LASF2140:
	.string	"MPU6050_GCONFIG_FS_SEL_BIT 4"
.LASF1452:
	.string	"TIMER1_CAPT_vect_num 12"
.LASF1575:
	.string	"PCINT26_DDR DDRD"
.LASF804:
	.string	"PCIF1 1"
.LASF532:
	.string	"INT_FAST16_MIN INT16_MIN"
.LASF1836:
	.string	"PD0 PORTD0"
.LASF489:
	.string	"DTOSTR_ALWAYS_SIGN 0x01"
.LASF1646:
	.string	"PCINT19_BIT 3"
.LASF1758:
	.string	"INT2_BIT 2"
.LASF1173:
	.string	"ICR1L0 0"
.LASF476:
	.string	"NULL"
.LASF1346:
	.string	"UCSR0C _SFR_MEM8(0xC2)"
.LASF399:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF1934:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF1516:
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
.LASF1829:
	.string	"PC1 PORTC1"
.LASF1321:
	.string	"TWAM0 1"
.LASF864:
	.string	"COM0A0 6"
.LASF332:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF715:
	.string	"PINB6 6"
.LASF1081:
	.string	"ADCL _SFR_MEM8(0x78)"
.LASF2242:
	.string	"MPU6050_DMPINT_5_BIT 5"
.LASF346:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF710:
	.string	"PINB1 1"
.LASF1822:
	.string	"PB2 PORTB2"
.LASF2274:
	.string	"MPU6050_USERCTRL_DMP_EN_BIT 7"
.LASF415:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF480:
	.string	"__ATTR_CONST__ __attribute__((__const__))"
.LASF2073:
	.string	"MPU6050_RA_EXT_SENS_DATA_02 0x4B"
.LASF622:
	.string	"SCNd16 \"d\""
.LASF1931:
	.string	"_AVR_INTERRUPT_H_ "
.LASF962:
	.string	"SM2 3"
.LASF1600:
	.string	"PCINT29_PORT PORTD"
.LASF2227:
	.string	"MPU6050_INTMODE_ACTIVELOW 0x01"
.LASF2210:
	.string	"MPU6050_MST_PASS_THROUGH_BIT 7"
.LASF101:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF472:
	.string	"_GCC_WCHAR_T "
.LASF1621:
	.string	"PCINT31_PIN PIND"
.LASF2014:
	.string	"MPU6050_RA_YA_OFFS_L_TC 0x09"
.LASF2110:
	.string	"MPU6050_RA_DMP_CFG_2 0x71"
.LASF1109:
	.string	"ADTS0 0"
.LASF770:
	.string	"PIND7 7"
.LASF351:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF392:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF643:
	.string	"SCNxLEAST16 \"x\""
.LASF1535:
	.string	"PCINT13_DDR DDRB"
.LASF350:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF1316:
	.string	"TWSTO 4"
.LASF747:
	.string	"DDC2 2"
.LASF878:
	.string	"TCNT0_4 4"
.LASF1416:
	.string	"UBRR1H _SFR_MEM8(0xCD)"
.LASF439:
	.string	"__need_size_t "
.LASF2123:
	.string	"MPU6050_CFG_DLPF_CFG_BIT 2"
.LASF730:
	.string	"PORTB3 3"
.LASF662:
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
.LASF1361:
	.string	"UBRR4 4"
.LASF1500:
	.string	"E2PAGESIZE (4)"
.LASF308:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF885:
	.string	"OCR0A_2 2"
.LASF1382:
	.string	"UPE1 2"
.LASF1837:
	.string	"PD1 PORTD1"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF2072:
	.string	"MPU6050_RA_EXT_SENS_DATA_01 0x4A"
.LASF1602:
	.string	"PCINT29_BIT 5"
.LASF1467:
	.string	"SPI_STC_vect _VECTOR(19)"
.LASF474:
	.string	"_BSD_WCHAR_T_"
.LASF395:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF1220:
	.string	"OCR1BH0 0"
.LASF320:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF2089:
	.string	"MPU6050_RA_EXT_SENS_DATA_18 0x5B"
.LASF1830:
	.string	"PC2 PORTC2"
.LASF448:
	.string	"_SIZE_T_ "
.LASF421:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF1292:
	.string	"TWS6 6"
.LASF2394:
	.string	"i2c_readNak"
.LASF1128:
	.string	"ADC5D 5"
.LASF1823:
	.string	"PB3 PORTB3"
.LASF458:
	.string	"__need_size_t"
.LASF934:
	.string	"SPDRB2 2"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF360:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF2054:
	.string	"MPU6050_RA_INT_ENABLE 0x38"
.LASF2239:
	.string	"MPU6050_INTERRUPT_PLL_RDY_INT_BIT 2"
.LASF2212:
	.string	"MPU6050_MST_I2C_LOST_ARB_BIT 5"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF1972:
	.string	"cbrtf cbrt"
.LASF1974:
	.string	"squaref square"
.LASF2046:
	.string	"MPU6050_RA_I2C_SLV3_CTRL 0x30"
.LASF1266:
	.string	"OCR2B_5 5"
.LASF289:
	.string	"__HA_FBIT__ 7"
.LASF1038:
	.string	"PCINT7 7"
.LASF642:
	.string	"SCNx16 \"x\""
.LASF246:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF396:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF606:
	.string	"PRIo32 \"lo\""
.LASF1510:
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF1523:
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
.LASF633:
	.string	"SCNiFAST32 \"li\""
.LASF1932:
	.string	"__STRINGIFY(x) #x"
.LASF1534:
	.string	"MOSI_BIT 5"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF2088:
	.string	"MPU6050_RA_EXT_SENS_DATA_17 0x5A"
.LASF139:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF2389:
	.string	"gzds"
.LASF561:
	.string	"_GCC_WRAP_STDINT_H "
.LASF1700:
	.string	"PCINT3_PORT PORTA"
.LASF1676:
	.string	"PCINT6_PORT PORTA"
.LASF1742:
	.string	"T1_BIT 1"
.LASF644:
	.string	"SCNxFAST16 \"x\""
.LASF2013:
	.string	"MPU6050_RA_YA_OFFS_H 0x08"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF1335:
	.string	"TXC0 6"
.LASF708:
	.string	"PINB _SFR_IO8(0x03)"
.LASF1838:
	.string	"PD2 PORTD2"
.LASF2003:
	.string	"MPU6050_H_ "
.LASF638:
	.string	"SCNoFAST16 \"o\""
.LASF811:
	.string	"EIMSK _SFR_IO8(0x1D)"
.LASF969:
	.string	"MCUCR _SFR_IO8(0x35)"
.LASF1202:
	.string	"OCR1AH1 1"
.LASF1746:
	.string	"CLKO_BIT 1"
.LASF738:
	.string	"PINC2 2"
.LASF2241:
	.string	"MPU6050_INTERRUPT_DATA_RDY_BIT 0"
.LASF1400:
	.string	"UCSZ11 2"
.LASF1831:
	.string	"PC3 PORTC3"
.LASF2319:
	.string	"MPU6050_GETATTITUDE 0"
.LASF1235:
	.string	"TCCR2B _SFR_MEM8(0xB1)"
.LASF1144:
	.string	"CS12 2"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF844:
	.string	"EEAR2 2"
.LASF875:
	.string	"TCNT0_1 1"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF2223:
	.string	"MPU6050_INTCFG_FSYNC_INT_EN_BIT 2"
.LASF31:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF1511:
	.string	"LFUSE_DEFAULT (FUSE_CKDIV8 & FUSE_SUT1 & FUSE_SUT0 & FUSE_CKSEL3 & FUSE_CKSEL2 & FUSE_CKSEL0)"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF951:
	.string	"OCDR1 1"
.LASF1906:
	.string	"__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm %0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF2087:
	.string	"MPU6050_RA_EXT_SENS_DATA_16 0x59"
.LASF1226:
	.string	"OCR1BH6 6"
.LASF808:
	.string	"INTF0 0"
.LASF1588:
	.string	"OC1B_PORT PORTD"
.LASF813:
	.string	"INT1 1"
.LASF63:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF2162:
	.string	"MPU6050_DHPF_HOLD 0x07"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF1239:
	.string	"WGM22 3"
.LASF611:
	.string	"PRIuFAST32 \"lu\""
.LASF1299:
	.string	"TWA3 4"
.LASF2236:
	.string	"MPU6050_INTERRUPT_ZMOT_BIT 5"
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF663:
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
.LASF2339:
	.string	"MPU6050_GXOFFSET -42"
.LASF1773:
	.string	"PCINT11_PIN PINB"
.LASF2133:
	.string	"MPU6050_DLPF_BW_256 0x00"
.LASF1507:
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
.LASF1905:
	.string	"__LPM_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint8_t __result; __asm__ ( \"ld %0, z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF1374:
	.string	"UDR0_3 3"
.LASF1986:
	.string	"atan2f atan2"
.LASF1813:
	.string	"PA1 PORTA1"
.LASF1027:
	.string	"ISC11 3"
.LASF1343:
	.string	"UDRIE0 5"
.LASF1098:
	.string	"ADCH7 7"
.LASF240:
	.string	"__ACCUM_IBIT__ 16"
.LASF675:
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
.LASF2045:
	.string	"MPU6050_RA_I2C_SLV3_REG 0x2F"
.LASF2028:
	.string	"MPU6050_RA_FF_DUR 0x1E"
.LASF483:
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
.LASF1938:
	.string	"EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF1616:
	.string	"OC2A_PORT PORTD"
.LASF339:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF551:
	.string	"INT8_C(value) ((int8_t) value)"
.LASF1827:
	.string	"PB7 PORTB7"
.LASF1996:
	.string	"fmaf fma"
.LASF2160:
	.string	"MPU6050_DHPF_1P25 0x03"
.LASF1347:
	.string	"UCPOL0 0"
.LASF905:
	.string	"GPIOR14 4"
.LASF676:
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
.LASF1190:
	.string	"OCR1A _SFR_MEM16(0x88)"
.LASF1465:
	.string	"TIMER0_OVF_vect _VECTOR(18)"
.LASF646:
	.string	"SCNoLEAST32 \"lo\""
.LASF2027:
	.string	"MPU6050_RA_FF_THR 0x1D"
.LASF1182:
	.string	"ICR1H0 0"
.LASF1786:
	.string	"PCINT12_BIT 4"
.LASF405:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF1336:
	.string	"RXC0 7"
.LASF2344:
	.string	"MPU6050_GZGAIN 16.4"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF922:
	.string	"CPOL0 3"
.LASF212:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF900:
	.string	"GPIOR1 _SFR_IO8(0x2A)"
.LASF1241:
	.string	"FOC2A 7"
.LASF329:
	.string	"__AVR_ATmega324PA__ 1"
.LASF1721:
	.string	"ADC0_PIN PINA"
.LASF1552:
	.string	"PCINT15_PORT PORTB"
.LASF79:
	.string	"__WINT_MAX__ 32767"
.LASF546:
	.string	"PTRDIFF_MAX INT16_MAX"
.LASF1669:
	.string	"PCINT7_PIN PINA"
.LASF1218:
	.string	"OCR1BL7 7"
.LASF2262:
	.string	"MPU6050_PATHRESET_ACCEL_RESET_BIT 1"
.LASF48:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF417:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF2139:
	.string	"MPU6050_DLPF_BW_5 0x06"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF1658:
	.string	"PCINT22_BIT 6"
.LASF1858:
	.string	"XH r27"
.LASF2373:
	.string	"__builtin_avr_delay_cycles"
.LASF202:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF684:
	.string	"PINA2 2"
.LASF1482:
	.string	"SPM_READY_vect_num 27"
.LASF1422:
	.string	"UDR1_0 0"
.LASF1067:
	.string	"TOIE2 0"
.LASF2271:
	.string	"MPU6050_DETECT_DECREMENT_1 0x1"
.LASF835:
	.string	"EEDR3 3"
.LASF1192:
	.string	"OCR1AL0 0"
.LASF1151:
	.string	"FOC1A 7"
.LASF205:
	.string	"__UFRACT_IBIT__ 0"
.LASF2386:
	.string	"mpu6050_getConvData"
.LASF1041:
	.string	"PCINT9 1"
.LASF1458:
	.string	"TIMER1_OVF_vect_num 15"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF75:
	.string	"__LONG_MAX__ 2147483647L"
.LASF539:
	.string	"UINT_FAST64_MAX UINT64_MAX"
.LASF2297:
	.string	"MPU6050_PWR2_STBY_XA_BIT 5"
.LASF870:
	.string	"WGM02 3"
.LASF1409:
	.string	"UBRR_1 1"
.LASF707:
	.string	"PORTA7 7"
.LASF1884:
	.string	"LOCKMEM __attribute__((__used__, __section__ (\".lock\")))"
.LASF2217:
	.string	"MPU6050_MST_I2C_SLV0_NACK_BIT 0"
.LASF793:
	.string	"TIFR1 _SFR_IO8(0x16)"
.LASF761:
	.string	"PORTC7 7"
.LASF2018:
	.string	"MPU6050_RA_XG_OFFS_USRL 0x14"
.LASF1002:
	.string	"PRUSART0 1"
.LASF960:
	.string	"SM0 1"
.LASF1851:
	.string	"SREG_N (2)"
.LASF459:
	.string	"__wchar_t__ "
.LASF357:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF2113:
	.string	"MPU6050_RA_FIFO_R_W 0x74"
.LASF995:
	.string	"CLKPS0 0"
.LASF1643:
	.string	"PCINT19_DDR DDRC"
.LASF2311:
	.string	"MPU6050_WHO_AM_I_BIT 6"
.LASF473:
	.string	"_WCHAR_T_DECLARED "
.LASF1228:
	.string	"TCCR2A _SFR_MEM8(0xB0)"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF1540:
	.string	"MISO_PORT PORTB"
.LASF992:
	.string	"WDIE 6"
.LASF1315:
	.string	"TWWC 3"
.LASF1795:
	.string	"PORT0 0"
.LASF1322:
	.string	"TWAM1 2"
.LASF70:
	.string	"__GXX_ABI_VERSION 1002"
.LASF1023:
	.string	"EICRA _SFR_MEM8(0x69)"
.LASF1935:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF2132:
	.string	"MPU6050_EXT_SYNC_ACCEL_ZOUT_L 0x7"
.LASF2346:
	.string	"I2C_READ 1"
.LASF2134:
	.string	"MPU6050_DLPF_BW_188 0x01"
.LASF1154:
	.string	"TCNT1L0 0"
.LASF2335:
	.string	"MPU6050_AZOFFSET 0"
.LASF1018:
	.string	"PCICR _SFR_MEM8(0x68)"
.LASF49:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF61:
	.string	"__INT_FAST16_TYPE__ int"
.LASF983:
	.string	"RWWSB 6"
.LASF1954:
	.string	"M_LN2 0.69314718055994530942"
.LASF1921:
	.string	"pgm_read_word_near(address_short) __LPM_word((uint16_t)(address_short))"
.LASF1477:
	.string	"ADC_vect _VECTOR(24)"
.LASF649:
	.string	"SCNuLEAST32 \"lu\""
.LASF1900:
	.string	"PROGMEM __ATTR_PROGMEM__"
.LASF578:
	.string	"PRIiLEAST32 \"li\""
.LASF2019:
	.string	"MPU6050_RA_YG_OFFS_USRH 0x15"
.LASF2371:
	.string	"_delay_ms"
.LASF1745:
	.string	"CLKO_PIN PINB"
.LASF1625:
	.string	"SCL_PIN PINC"
.LASF323:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF2360:
	.string	"__tmp"
.LASF1670:
	.string	"PCINT7_BIT 7"
.LASF872:
	.string	"FOC0A 7"
.LASF1110:
	.string	"ADTS1 1"
.LASF1231:
	.string	"COM2B0 4"
.LASF1120:
	.string	"REFS0 6"
.LASF1929:
	.string	"pgm_read_ptr(address_short) pgm_read_ptr_near(address_short)"
.LASF2299:
	.string	"MPU6050_PWR2_STBY_ZA_BIT 3"
.LASF2250:
	.string	"MPU6050_MOTION_MOT_YNEG_BIT 5"
.LASF1654:
	.string	"PCINT21_BIT 5"
.LASF748:
	.string	"DDC3 3"
.LASF1282:
	.string	"TWBR4 4"
.LASF2211:
	.string	"MPU6050_MST_I2C_SLV4_DONE_BIT 6"
.LASF2291:
	.string	"MPU6050_CLOCK_PLL_ZGYRO 0x03"
.LASF1404:
	.string	"UMSEL10 6"
.LASF731:
	.string	"PORTB4 4"
.LASF1828:
	.string	"PC0 PORTC0"
.LASF1797:
	.string	"DD6 6"
.LASF1362:
	.string	"UBRR5 5"
.LASF52:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1119:
	.string	"ADLAR 5"
.LASF886:
	.string	"OCR0A_3 3"
.LASF702:
	.string	"PORTA2 2"
.LASF2257:
	.string	"MPU6050_DELAYCTRL_I2C_SLV3_DLY_EN_BIT 3"
.LASF1711:
	.string	"ADC1_DDR DDRA"
.LASF1683:
	.string	"PCINT5_DDR DDRA"
.LASF461:
	.string	"_WCHAR_T "
.LASF1752:
	.string	"AIN0_PORT PORTB"
.LASF1521:
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF348:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF1734:
	.string	"T0_BIT 0"
.LASF1380:
	.string	"MPCM1 0"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF2108:
	.string	"MPU6050_RA_MEM_R_W 0x6F"
.LASF237:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF1293:
	.string	"TWS7 7"
.LASF391:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF2235:
	.string	"MPU6050_INTERRUPT_MOT_BIT 6"
.LASF1528:
	.string	"SIGNATURE_0 0x1E"
.LASF465:
	.string	"_WCHAR_T_ "
.LASF935:
	.string	"SPDRB3 3"
.LASF1978:
	.string	"ldexpf ldexp"
.LASF1096:
	.string	"ADCH5 5"
.LASF1556:
	.string	"RXD_PORT PORTD"
.LASF1910:
	.ascii	"__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile"
	.ascii	"__ ( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1040:
	.string	"PCINT8 0"
.LASF2107:
	.string	"MPU6050_RA_MEM_START_ADDR 0x6E"
.LASF1087:
	.string	"ADCL5 5"
.LASF1769:
	.string	"OC0A_PIN PINB"
.LASF1267:
	.string	"OCR2B_6 6"
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF2292:
	.string	"MPU6050_CLOCK_PLL_EXT32K 0x04"
.LASF1152:
	.string	"TCNT1 _SFR_MEM16(0x84)"
.LASF1147:
	.string	"ICES1 6"
.LASF1653:
	.string	"PCINT21_PIN PINC"
.LASF444:
	.string	"_SYS_SIZE_T_H "
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF251:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF2267:
	.string	"MPU6050_DETECT_FF_COUNT_LENGTH 2"
.LASF409:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF67:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF959:
	.string	"SE 0"
.LASF2341:
	.string	"MPU6050_GZOFFSET -29"
.LASF585:
	.string	"PRIu8 \"u\""
.LASF2121:
	.string	"MPU6050_CFG_EXT_SYNC_SET_BIT 5"
.LASF533:
	.string	"UINT_FAST16_MAX UINT16_MAX"
.LASF805:
	.string	"PCIF2 2"
.LASF892:
	.string	"OCR0B_0 0"
.LASF1386:
	.string	"TXC1 6"
.LASF2253:
	.string	"MPU6050_MOTION_MOT_ZPOS_BIT 2"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF2216:
	.string	"MPU6050_MST_I2C_SLV1_NACK_BIT 1"
.LASF829:
	.string	"EEPM0 4"
.LASF1741:
	.string	"T1_PIN PINB"
.LASF410:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF739:
	.string	"PINC3 3"
.LASF2352:
	.string	"int8_t"
.LASF1487:
	.string	"USART1_UDRE_vect _VECTOR(29)"
.LASF1077:
	.string	"PCINT30 6"
.LASF1072:
	.string	"PCINT25 1"
.LASF845:
	.string	"EEAR3 3"
.LASF876:
	.string	"TCNT0_2 2"
.LASF660:
	.string	"__SFR_OFFSET 0x20"
.LASF264:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF930:
	.string	"SPIF0 7"
.LASF2187:
	.string	"MPU6050_CLOCK_DIV_471 0xA"
.LASF952:
	.string	"OCDR2 2"
.LASF1554:
	.string	"PCINT15_BIT 7"
.LASF1227:
	.string	"OCR1BH7 7"
.LASF500:
	.string	"__STDINT_H_ "
.LASF809:
	.string	"INTF1 1"
.LASF814:
	.string	"INT2 2"
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF425:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF2084:
	.string	"MPU6050_RA_EXT_SENS_DATA_13 0x56"
.LASF2246:
	.string	"MPU6050_DMPINT_1_BIT 1"
.LASF1496:
	.string	"XRAMSTART (0x0)"
.LASF478:
	.string	"__need_NULL"
.LASF1300:
	.string	"TWA4 5"
.LASF1587:
	.string	"OC1B_DDR DDRD"
.LASF1736:
	.string	"PCINT8_PORT PORTB"
.LASF1464:
	.string	"TIMER0_OVF_vect_num 18"
.LASF1273:
	.string	"OCR2AUB 3"
.LASF1617:
	.string	"OC2A_PIN PIND"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF1933:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF625:
	.string	"SCNi16 \"i\""
.LASF1504:
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
.LASF1673:
	.string	"ADC6_PIN PINA"
.LASF1804:
	.string	"PIN7 7"
.LASF53:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF1201:
	.string	"OCR1AH0 0"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF1207:
	.string	"OCR1AH6 6"
.LASF674:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF2399:
	.string	"../mpu6050/mpu6050.c"
.LASF604:
	.string	"PRIXLEAST16 \"X\""
.LASF2090:
	.string	"MPU6050_RA_EXT_SENS_DATA_19 0x5C"
.LASF1862:
	.string	"ZH r31"
.LASF1439:
	.string	"PCINT1_vect _VECTOR(5)"
.LASF2398:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g3 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF2095:
	.string	"MPU6050_RA_MOT_DETECT_STATUS 0x61"
.LASF596:
	.string	"PRIoFAST16 \"o\""
.LASF256:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF1249:
	.string	"TCNT2_6 6"
.LASF1341:
	.string	"TXEN0 3"
.LASF341:
	.string	"__WITH_AVRLIBC__ 1"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF910:
	.string	"GPIOR20 0"
.LASF378:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF1799:
	.string	"DD4 4"
.LASF906:
	.string	"GPIOR15 5"
.LASF1509:
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
.LASF1431:
	.string	"INT0_vect _VECTOR(1)"
.LASF1796:
	.string	"DD7 7"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF595:
	.string	"PRIoLEAST16 \"o\""
.LASF1975:
	.string	"floorf floor"
.LASF1434:
	.string	"INT2_vect_num 3"
.LASF2390:
	.string	"sizetype"
.LASF1387:
	.string	"RXC1 7"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF1524:
	.string	"EFUSE_DEFAULT (0xFF)"
.LASF2010:
	.string	"MPU6050_RA_Z_FINE_GAIN 0x05"
.LASF1105:
	.string	"ADATE 5"
.LASF1240:
	.string	"FOC2B 6"
.LASF2153:
	.string	"MPU6050_ACCEL_FS_2 0x00"
.LASF689:
	.string	"PINA7 7"
.LASF2275:
	.string	"MPU6050_USERCTRL_FIFO_EN_BIT 6"
.LASF716:
	.string	"PINB7 7"
.LASF1163:
	.string	"TCNT1H0 0"
.LASF484:
	.string	"__ATTR_GNU_INLINE__ __attribute__((__gnu_inline__))"
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF693:
	.string	"DDA2 2"
.LASF510:
	.string	"INT32_MAX 0x7fffffffL"
.LASF2355:
	.string	"int16_t"
.LASF786:
	.string	"PORTD5 5"
.LASF1955:
	.string	"M_LN10 2.30258509299404568402"
.LASF1583:
	.string	"PCINT27_DDR DDRD"
.LASF685:
	.string	"PINA3 3"
.LASF1950:
	.string	"__MATH_H "
.LASF1042:
	.string	"PCINT10 2"
.LASF2351:
	.string	"signed char"
.LASF1423:
	.string	"UDR1_1 1"
.LASF1403:
	.string	"UPM11 5"
.LASF559:
	.string	"INTMAX_C(value) __CONCAT(value, LL)"
.LASF836:
	.string	"EEDR4 4"
.LASF1193:
	.string	"OCR1AL1 1"
.LASF1918:
	.string	"__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
.LASF1709:
	.string	"PCINT2_PIN PINA"
.LASF441:
	.string	"__size_t__ "
.LASF1339:
	.string	"RXB80 1"
.LASF1924:
	.string	"pgm_read_ptr_near(address_short) (void*)__LPM_word((uint16_t)(address_short))"
.LASF377:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF141:
	.string	"__DBL_DIG__ 6"
.LASF528:
	.string	"INT_FAST8_MAX INT8_MAX"
.LASF1410:
	.string	"UBRR_2 2"
.LASF621:
	.string	"PRIXPTR PRIX16"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF1636:
	.string	"PCINT17_PORT PORTC"
.LASF27:
	.string	"__CHAR_BIT__ 8"
.LASF2136:
	.string	"MPU6050_DLPF_BW_42 0x03"
.LASF39:
	.string	"__INTMAX_TYPE__ long long int"
.LASF1005:
	.string	"PRUSART1 4"
.LASF658:
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
.LASF2175:
	.string	"MPU6050_I2C_MST_CLK_BIT 3"
.LASF2118:
	.string	"MPU6050_TC_OTP_BNK_VLD_BIT 0"
.LASF1126:
	.string	"ADC3D 3"
.LASF996:
	.string	"CLKPS1 1"
.LASF1966:
	.string	"cosf cos"
.LASF1217:
	.string	"OCR1BL6 6"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF2367:
	.string	"count"
.LASF1609:
	.string	"OC2B_PIN PIND"
.LASF90:
	.string	"__INT16_MAX__ 32767"
.LASF1175:
	.string	"ICR1L2 2"
.LASF918:
	.string	"SPCR0 _SFR_IO8(0x2C)"
.LASF993:
	.string	"WDIF 7"
.LASF2029:
	.string	"MPU6050_RA_MOT_THR 0x1F"
.LASF1323:
	.string	"TWAM2 3"
.LASF1724:
	.string	"PCINT0_PORT PORTA"
.LASF1946:
	.string	"F_CPU 20000000UL"
.LASF449:
	.string	"_BSD_SIZE_T_ "
.LASF2200:
	.string	"MPU6050_I2C_SLV_LEN_BIT 3"
.LASF1928:
	.string	"pgm_read_float(address_short) pgm_read_float_near(address_short)"
.LASF147:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF816:
	.string	"GPIOR00 0"
.LASF723:
	.string	"DDB5 5"
.LASF1873:
	.string	"__AVR_LIBC_VERSION_STRING__ \"1.8.0svn\""
.LASF1155:
	.string	"TCNT1L1 1"
.LASF1006:
	.string	"PRTIM0 5"
.LASF1453:
	.string	"TIMER1_CAPT_vect _VECTOR(12)"
.LASF2208:
	.string	"MPU6050_I2C_SLV4_MST_DLY_BIT 4"
.LASF516:
	.string	"INT_LEAST8_MAX INT8_MAX"
.LASF2368:
	.string	"bitStart"
.LASF1893:
	.string	"BLB1_MODE_1 (0xFF)"
.LASF1652:
	.string	"PCINT21_PORT PORTC"
.LASF1882:
	.string	"FUSES __fuse_t __fuse FUSEMEM"
.LASF1603:
	.string	"ICP_DDR DDRD"
.LASF1485:
	.string	"USART1_RX_vect _VECTOR(28)"
.LASF456:
	.string	"_SIZET_ "
.LASF990:
	.string	"WDCE 4"
.LASF223:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF1915:
	.ascii	"__LPM_float_enhanc"
	.string	"ed__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF603:
	.string	"PRIX16 \"X\""
.LASF964:
	.string	"PORF 0"
.LASF871:
	.string	"FOC0B 6"
.LASF586:
	.string	"PRIuLEAST8 \"u\""
.LASF1111:
	.string	"ADTS2 2"
.LASF1437:
	.string	"PCINT0_vect _VECTOR(4)"
.LASF1232:
	.string	"COM2B1 5"
.LASF985:
	.string	"WDTCSR _SFR_MEM8(0x60)"
.LASF1350:
	.string	"USBS0 3"
.LASF1008:
	.string	"PRTWI 7"
.LASF431:
	.string	"__INT24_MAX__ 8388607L"
.LASF490:
	.string	"DTOSTR_PLUS_SIGN 0x02"
.LASF754:
	.string	"PORTC0 0"
.LASF1969:
	.string	"fabsf fabs"
.LASF749:
	.string	"DDC4 4"
.LASF1054:
	.string	"PCINT21 5"
.LASF929:
	.string	"WCOL0 6"
.LASF1283:
	.string	"TWBR5 5"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF732:
	.string	"PORTB5 5"
.LASF1585:
	.string	"PCINT27_PIN PIND"
.LASF1363:
	.string	"UBRR6 6"
.LASF433:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF408:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF2156:
	.string	"MPU6050_ACCEL_FS_16 0x03"
.LASF2219:
	.string	"MPU6050_INTCFG_INT_OPEN_BIT 6"
.LASF1351:
	.string	"UPM00 4"
.LASF115:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF2149:
	.string	"MPU6050_ACONFIG_AFS_SEL_BIT 4"
.LASF165:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF1612:
	.string	"PCINT30_PORT PORTD"
.LASF648:
	.string	"SCNu32 \"lu\""
.LASF1542:
	.string	"MISO_BIT 6"
.LASF1941:
	.string	"BADISR_vect __vector_default"
.LASF591:
	.string	"PRIX8 \"X\""
.LASF2152:
	.string	"MPU6050_ACONFIG_ACCEL_HPF_LENGTH 3"
.LASF2120:
	.string	"MPU6050_VDDIO_LEVEL_VDD 1"
.LASF1466:
	.string	"SPI_STC_vect_num 19"
.LASF1965:
	.string	"INFINITY __builtin_inf()"
.LASF1901:
	.string	"PGM_P const char *"
.LASF1547:
	.string	"SCK_DDR DDRB"
.LASF315:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF2174:
	.string	"MPU6050_I2C_MST_P_NSR_BIT 4"
.LASF936:
	.string	"SPDRB4 4"
.LASF16:
	.string	"__OPTIMIZE__ 1"
.LASF2260:
	.string	"MPU6050_DELAYCTRL_I2C_SLV0_DLY_EN_BIT 0"
.LASF1940:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF393:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF1472:
	.string	"USART0_TX_vect_num 22"
.LASF691:
	.string	"DDA0 0"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
.LASF1957:
	.string	"M_PI_2 1.57079632679489661923"
.LASF1124:
	.string	"ADC1D 1"
.LASF1605:
	.string	"ICP_PIN PIND"
.LASF1268:
	.string	"OCR2B_7 7"
.LASF1060:
	.string	"OCIE0B 2"
.LASF197:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF1069:
	.string	"OCIE2B 2"
.LASF1398:
	.string	"UCPOL1 0"
.LASF335:
	.string	"__AVR_MEGA__ 1"
.LASF1545:
	.string	"PCINT14_PIN PINB"
.LASF2128:
	.string	"MPU6050_EXT_SYNC_GYRO_YOUT_L 0x3"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF2220:
	.string	"MPU6050_INTCFG_LATCH_INT_EN_BIT 5"
.LASF1083:
	.string	"ADCL1 1"
.LASF681:
	.string	"PINA _SFR_IO8(0x00)"
.LASF1168:
	.string	"TCNT1H5 5"
.LASF376:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF1148:
	.string	"ICNC1 7"
.LASF1252:
	.string	"OCR2A_0 0"
.LASF1421:
	.string	"UDR1 _SFR_MEM8(0xCE)"
.LASF1344:
	.string	"TXCIE0 6"
.LASF1844:
	.string	"_AVR_COMMON_H "
.LASF806:
	.string	"PCIF3 3"
.LASF893:
	.string	"OCR0B_1 1"
.LASF471:
	.string	"__INT_WCHAR_T_H "
.LASF1849:
	.string	"SREG_C (0)"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF1968:
	.string	"tanf tan"
.LASF2168:
	.string	"MPU6050_SLV2_FIFO_EN_BIT 2"
.LASF2370:
	.string	"_delay_us"
.LASF874:
	.string	"TCNT0_0 0"
.LASF830:
	.string	"EEPM1 5"
.LASF740:
	.string	"PINC4 4"
.LASF1876:
	.string	"__AVR_LIBC_DATE_ 20111229UL"
.LASF416:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF1078:
	.string	"PCINT31 7"
.LASF1073:
	.string	"PCINT26 2"
.LASF479:
	.string	"__ptr_t void *"
.LASF846:
	.string	"EEAR4 4"
.LASF877:
	.string	"TCNT0_3 3"
.LASF1798:
	.string	"DD5 5"
.LASF953:
	.string	"OCDR3 3"
.LASF2233:
	.string	"MPU6050_INTCLEAR_ANYREAD 0x01"
.LASF700:
	.string	"PORTA0 0"
.LASF978:
	.string	"PGERS 1"
.LASF695:
	.string	"DDA4 4"
.LASF536:
	.string	"UINT_FAST32_MAX UINT32_MAX"
.LASF181:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF62:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF1494:
	.string	"RAMSIZE (2048)"
.LASF697:
	.string	"DDA6 6"
.LASF1631:
	.string	"SDA_DDR DDRC"
.LASF430:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF146:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF1122:
	.string	"DIDR0 _SFR_MEM8(0x7E)"
.LASF498:
	.string	"_SFR_ASM_COMPAT 0"
.LASF2283:
	.string	"MPU6050_PWR1_SLEEP_BIT 6"
.LASF1537:
	.string	"PCINT13_PIN PINB"
.LASF583:
	.string	"PRIoLEAST8 \"o\""
.LASF582:
	.string	"PRIo8 \"o\""
.LASF501:
	.string	"__USING_MINT8 0"
.LASF1885:
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
.LASF1641:
	.string	"PCINT18_PIN PINC"
.LASF1330:
	.string	"U2X0 1"
.LASF1353:
	.string	"UMSEL00 6"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF520:
	.string	"INT_LEAST16_MIN INT16_MIN"
.LASF1376:
	.string	"UDR0_5 5"
.LASF656:
	.string	"SCNxPTR SCNx16"
.LASF1713:
	.string	"ADC1_PIN PINA"
.LASF2002:
	.string	"lrintf lrint"
.LASF940:
	.string	"ACSR _SFR_IO8(0x30)"
.LASF1375:
	.string	"UDR0_4 4"
.LASF624:
	.string	"SCNdFAST16 \"d\""
.LASF1623:
	.string	"SCL_DDR DDRC"
.LASF1392:
	.string	"TXEN1 3"
.LASF1737:
	.string	"PCINT8_PIN PINB"
.LASF1396:
	.string	"RXCIE1 7"
.LASF1079:
	.string	"ADC _SFR_MEM16(0x78)"
.LASF1495:
	.string	"RAMEND (RAMSTART + RAMSIZE - 1)"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF2117:
	.string	"MPU6050_TC_OFFSET_LENGTH 6"
.LASF1604:
	.string	"ICP_PORT PORTD"
.LASF911:
	.string	"GPIOR21 1"
.LASF2374:
	.string	"mpu6050_writeBytes"
.LASF2142:
	.string	"MPU6050_GYRO_FS_250 0x00"
.LASF307:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1411:
	.string	"UBRR_3 3"
.LASF2011:
	.string	"MPU6050_RA_XA_OFFS_H 0x06"
.LASF2081:
	.string	"MPU6050_RA_EXT_SENS_DATA_10 0x53"
.LASF907:
	.string	"GPIOR16 6"
.LASF1558:
	.string	"RXD_BIT 0"
.LASF1854:
	.string	"SREG_H (5)"
.LASF1780:
	.string	"OC0B_PORT PORTB"
.LASF1763:
	.string	"AIN1_DDR DDRB"
.LASF1184:
	.string	"ICR1H2 2"
.LASF1275:
	.string	"AS2 5"
.LASF1789:
	.string	"PORT6 6"
.LASF1684:
	.string	"PCINT5_PORT PORTA"
.LASF1755:
	.string	"INT2_DDR DDRB"
.LASF2131:
	.string	"MPU6050_EXT_SYNC_ACCEL_YOUT_L 0x6"
.LASF609:
	.string	"PRIu32 \"lu\""
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF1909:
	.string	"__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1320:
	.string	"TWAMR _SFR_MEM8(0xBD)"
.LASF1164:
	.string	"TCNT1H1 1"
.LASF1714:
	.string	"ADC1_BIT 1"
.LASF2182:
	.string	"MPU6050_CLOCK_DIV_286 0x5"
.LASF2005:
	.string	"MPU6050_RA_XG_OFFS_TC 0x00"
.LASF2137:
	.string	"MPU6050_DLPF_BW_20 0x04"
.LASF492:
	.string	"EXIT_SUCCESS 0"
.LASF450:
	.string	"_SIZE_T_DEFINED_ "
.LASF2277:
	.string	"MPU6050_USERCTRL_I2C_IF_DIS_BIT 4"
.LASF89:
	.string	"__INT8_MAX__ 127"
.LASF735:
	.string	"PINC _SFR_IO8(0x06)"
.LASF853:
	.string	"EEAR10 2"
.LASF1779:
	.string	"OC0B_DDR DDRB"
.LASF787:
	.string	"PORTD6 6"
.LASF531:
	.string	"INT_FAST16_MAX INT16_MAX"
.LASF1277:
	.string	"TWBR _SFR_MEM8(0xB8)"
.LASF686:
	.string	"PINA4 4"
.LASF2343:
	.string	"MPU6050_GYGAIN 16.4"
.LASF1043:
	.string	"PCINT11 3"
.LASF1870:
	.string	"AVR_STACK_POINTER_LO_REG SPL"
.LASF1424:
	.string	"UDR1_2 2"
.LASF1611:
	.string	"PCINT30_DDR DDRD"
.LASF1063:
	.string	"OCIE1A 1"
.LASF1573:
	.string	"INT0_PIN PIND"
.LASF680:
	.string	"_AVR_ATmega324PA_H_ 1"
.LASF1248:
	.string	"TCNT2_5 5"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
.LASF837:
	.string	"EEDR5 5"
.LASF1194:
	.string	"OCR1AL2 2"
.LASF2323:
	.string	"MPU6050_GYRO_LSB_500 65.5"
.LASF1295:
	.string	"TWGCE 0"
.LASF1577:
	.string	"PCINT26_PIN PIND"
.LASF1390:
	.string	"RXB81 1"
.LASF2356:
	.string	"uint32_t"
.LASF347:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF616:
	.string	"PRIXLEAST32 \"lX\""
.LASF447:
	.string	"__SIZE_T "
.LASF1574:
	.string	"INT0_BIT 2"
.LASF2063:
	.string	"MPU6050_RA_TEMP_OUT_H 0x41"
.LASF965:
	.string	"EXTRF 1"
.LASF42:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF2183:
	.string	"MPU6050_CLOCK_DIV_276 0x6"
.LASF314:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF406:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF1499:
	.string	"E2END (0x3FF)"
.LASF1564:
	.string	"TXD_PORT PORTD"
.LASF1210:
	.string	"OCR1BL _SFR_MEM8(0x8A)"
.LASF154:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF34:
	.string	"__SIZEOF_POINTER__ 2"
.LASF997:
	.string	"CLKPS2 2"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF1176:
	.string	"ICR1L3 3"
.LASF2379:
	.string	"bitNum"
.LASF2305:
	.string	"MPU6050_WAKE_FREQ_5 0x2"
.LASF824:
	.string	"EECR _SFR_IO8(0x1F)"
.LASF2106:
	.string	"MPU6050_RA_BANK_SEL 0x6D"
.LASF838:
	.string	"EEDR6 6"
.LASF512:
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
.LASF1324:
	.string	"TWAM3 4"
.LASF1794:
	.string	"PORT1 1"
.LASF2295:
	.string	"MPU6050_PWR2_LP_WAKE_CTRL_BIT 7"
.LASF970:
	.string	"IVCE 0"
.LASF817:
	.string	"GPIOR01 1"
.LASF1004:
	.string	"PRTIM1 3"
.LASF2361:
	.string	"__ticks_dc"
.LASF1156:
	.string	"TCNT1L2 2"
.LASF597:
	.string	"PRIu16 \"u\""
.LASF354:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF1522:
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
.LASF798:
	.string	"TIFR2 _SFR_IO8(0x17)"
.LASF1793:
	.string	"PORT2 2"
.LASF1992:
	.string	"isfinitef isfinite"
.LASF1107:
	.string	"ADEN 7"
.LASF617:
	.string	"PRIXFAST32 \"lX\""
.LASF1675:
	.string	"PCINT6_DDR DDRA"
.LASF487:
	.string	"RAND_MAX 0x7FFF"
.LASF1663:
	.string	"ADC7_DDR DDRA"
.LASF1157:
	.string	"TCNT1L3 3"
.LASF1889:
	.string	"BLB0_MODE_1 (0xFF)"
.LASF2357:
	.string	"long unsigned int"
.LASF608:
	.string	"PRIoFAST32 \"lo\""
.LASF1740:
	.string	"T1_PORT PORTB"
.LASF1395:
	.string	"TXCIE1 6"
.LASF1956:
	.string	"M_PI 3.14159265358979323846"
.LASF401:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF411:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF2071:
	.string	"MPU6050_RA_EXT_SENS_DATA_00 0x49"
.LASF772:
	.string	"DDD0 0"
.LASF462:
	.string	"_T_WCHAR_ "
.LASF2207:
	.string	"MPU6050_I2C_SLV4_REG_DIS_BIT 5"
.LASF2186:
	.string	"MPU6050_CLOCK_DIV_500 0x9"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF755:
	.string	"PORTC1 1"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF750:
	.string	"DDC5 5"
.LASF1305:
	.string	"TWD1 1"
.LASF975:
	.string	"JTD 7"
.LASF1284:
	.string	"TWBR6 6"
.LASF2314:
	.string	"MPU6050_DMP_MEMORY_BANK_SIZE 256"
.LASF865:
	.string	"COM0A1 7"
.LASF795:
	.string	"OCF1A 1"
.LASF1364:
	.string	"UBRR7 7"
.LASF1688:
	.string	"ADC4_PORT PORTA"
.LASF888:
	.string	"OCR0A_5 5"
.LASF2286:
	.string	"MPU6050_PWR1_CLKSEL_BIT 2"
.LASF1352:
	.string	"UPM01 5"
.LASF1082:
	.string	"ADCL0 0"
.LASF317:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF521:
	.string	"UINT_LEAST16_MAX UINT16_MAX"
.LASF552:
	.string	"UINT8_C(value) ((uint8_t) __CONCAT(value, U))"
.LASF2008:
	.string	"MPU6050_RA_X_FINE_GAIN 0x03"
.LASF1993:
	.string	"copysignf copysign"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF2040:
	.string	"MPU6050_RA_I2C_SLV1_CTRL 0x2A"
.LASF1139:
	.string	"COM1A0 6"
.LASF1756:
	.string	"INT2_PORT PORTB"
.LASF2248:
	.string	"MPU6050_MOTION_MOT_XNEG_BIT 7"
.LASF2261:
	.string	"MPU6050_PATHRESET_GYRO_RESET_BIT 2"
.LASF342:
	.string	"__FLASH 1"
.LASF1843:
	.string	"PD7 PORTD7"
.LASF1835:
	.string	"PC7 PORTC7"
.LASF937:
	.string	"SPDRB5 5"
.LASF2181:
	.string	"MPU6050_CLOCK_DIV_296 0x4"
.LASF665:
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
.LASF789:
	.string	"TIFR0 _SFR_IO8(0x15)"
.LASF1088:
	.string	"ADCL6 6"
.LASF407:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF77:
	.string	"__WCHAR_MAX__ 32767"
.LASF567:
	.string	"PRIiFAST8 \"i\""
.LASF2080:
	.string	"MPU6050_RA_EXT_SENS_DATA_09 0x52"
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1772:
	.string	"PCINT11_PORT PORTB"
.LASF470:
	.string	"___int_wchar_t_h "
.LASF1149:
	.string	"TCCR1C _SFR_MEM8(0x82)"
.LASF443:
	.string	"_SIZE_T "
.LASF1984:
	.string	"asinf asin"
.LASF1253:
	.string	"OCR2A_1 1"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ 0"
.LASF651:
	.string	"SCNx32 \"lx\""
.LASF894:
	.string	"OCR0B_2 2"
.LASF1334:
	.string	"UDRE0 5"
.LASF168:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF763:
	.string	"PIND0 0"
.LASF1519:
	.string	"FUSE_OCDEN (unsigned char)~_BV(7)"
.LASF1011:
	.string	"CAL1 1"
.LASF1665:
	.string	"ADC7_PIN PINA"
.LASF620:
	.string	"PRIxPTR PRIx16"
.LASF1236:
	.string	"CS20 0"
.LASF114:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF741:
	.string	"PINC5 5"
.LASF224:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF1962:
	.string	"M_SQRT2 1.41421356237309504880"
.LASF276:
	.string	"__DQ_IBIT__ 0"
.LASF1074:
	.string	"PCINT27 3"
.LASF1318:
	.string	"TWEA 6"
.LASF847:
	.string	"EEAR5 5"
.LASF569:
	.string	"PRIdLEAST16 \"d\""
.LASF91:
	.string	"__INT32_MAX__ 2147483647L"
.LASF718:
	.string	"DDB0 0"
.LASF1622:
	.string	"PCINT31_BIT 7"
.LASF451:
	.string	"_SIZE_T_DEFINED "
.LASF954:
	.string	"OCDR4 4"
.LASF701:
	.string	"PORTA1 1"
.LASF1907:
	.ascii	"__LPM_word_classic__(addr) (__ex"
	.string	"tension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF330:
	.string	"__AVR_DEVICE_NAME__ atmega324pa"
.LASF696:
	.string	"DDA5 5"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF375:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF639:
	.string	"SCNu16 \"u\""
.LASF690:
	.string	"DDRA _SFR_IO8(0x01)"
.LASF1302:
	.string	"TWA6 7"
.LASF647:
	.string	"SCNoFAST32 \"lo\""
.LASF1559:
	.string	"PCINT24_DDR DDRD"
.LASF2382:
	.string	"mpu6050_setSleepEnabled"
.LASF2318:
	.string	"MPU6050_ADDR (0x68 <<1)"
.LASF438:
	.string	"__need_NULL "
.LASF1419:
	.string	"UBRR_10 2"
.LASF1381:
	.string	"U2X1 1"
.LASF1203:
	.string	"OCR1AH2 2"
.LASF1354:
	.string	"UMSEL01 7"
.LASF2158:
	.string	"MPU6050_DHPF_5 0x01"
.LASF1377:
	.string	"UDR0_6 6"
.LASF1357:
	.string	"_UBRR0 0"
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF481:
	.string	"__ATTR_MALLOC__ __attribute__((__malloc__))"
.LASF1000:
	.string	"PRR0 _SFR_MEM8(0x64)"
.LASF919:
	.string	"SPR00 0"
.LASF1031:
	.string	"PCINT0 0"
.LASF1686:
	.string	"PCINT5_BIT 5"
.LASF1103:
	.string	"ADIE 3"
.LASF477:
	.string	"NULL ((void *)0)"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF72:
	.string	"__SCHAR_MAX__ 127"
.LASF912:
	.string	"GPIOR22 2"
.LASF404:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF30:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF1543:
	.string	"PCINT14_DDR DDRB"
.LASF529:
	.string	"INT_FAST8_MIN INT8_MIN"
.LASF2124:
	.string	"MPU6050_CFG_DLPF_CFG_LENGTH 3"
.LASF2402:
	.string	"buffer"
.LASF908:
	.string	"GPIOR17 7"
.LASF1179:
	.string	"ICR1L6 6"
.LASF2400:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug Simulator"
.LASF1569:
	.string	"PCINT25_PIN PIND"
.LASF613:
	.string	"PRIxLEAST32 \"lx\""
.LASF1913:
	.ascii	"__LPM_float_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); float __result; __asm__ __volatile__ "
	.ascii	"( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1185:
	.string	"ICR1H3 3"
.LASF963:
	.string	"MCUSR _SFR_IO8(0x34)"
.LASF1196:
	.string	"OCR1AL4 4"
.LASF2144:
	.string	"MPU6050_GYRO_FS_1000 0x02"
.LASF1329:
	.string	"MPCM0 0"
.LASF1731:
	.string	"T0_DDR DDRB"
.LASF577:
	.string	"PRIi32 \"li\""
.LASF2135:
	.string	"MPU6050_DLPF_BW_98 0x02"
.LASF1355:
	.string	"UBRR0 _SFR_MEM16(0xC4)"
.LASF2103:
	.string	"MPU6050_RA_USER_CTRL 0x6A"
.LASF1810:
	.string	"PIN1 1"
.LASF1165:
	.string	"TCNT1H2 2"
.LASF866:
	.string	"TCCR0B _SFR_IO8(0x25)"
.LASF1613:
	.string	"PCINT30_PIN PIND"
.LASF2301:
	.string	"MPU6050_PWR2_STBY_YG_BIT 1"
.LASF373:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF57:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF1766:
	.string	"AIN1_BIT 3"
.LASF2196:
	.string	"MPU6050_I2C_SLV_EN_BIT 7"
.LASF475:
	.string	"__need_wchar_t"
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF854:
	.string	"EEAR11 3"
.LASF46:
	.string	"__INT32_TYPE__ long int"
.LASF788:
	.string	"PORTD7 7"
.LASF570:
	.string	"PRIdFAST16 \"d\""
.LASF1991:
	.string	"isinff isinf"
.LASF524:
	.string	"UINT_LEAST32_MAX UINT32_MAX"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF1044:
	.string	"PCINT12 4"
.LASF517:
	.string	"INT_LEAST8_MIN INT8_MIN"
.LASF1425:
	.string	"UDR1_3 3"
.LASF1489:
	.string	"USART1_TX_vect _VECTOR(30)"
.LASF1064:
	.string	"OCIE1B 2"
.LASF2059:
	.string	"MPU6050_RA_ACCEL_YOUT_H 0x3D"
.LASF1551:
	.string	"PCINT15_DDR DDRB"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF2391:
	.string	"mpu6050_readBytes"
.LASF1195:
	.string	"OCR1AL3 3"
.LASF1674:
	.string	"ADC6_BIT 6"
.LASF677:
	.string	"loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
.LASF45:
	.string	"__INT16_TYPE__ int"
.LASF2244:
	.string	"MPU6050_DMPINT_3_BIT 3"
.LASF1135:
	.string	"WGM10 0"
.LASF1141:
	.string	"TCCR1B _SFR_MEM8(0x81)"
.LASF1668:
	.string	"PCINT7_PORT PORTA"
.LASF1871:
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
.LASF69:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF1651:
	.string	"PCINT21_DDR DDRC"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 1"
.LASF1960:
	.string	"M_2_PI 0.63661977236758134308"
.LASF1530:
	.string	"SIGNATURE_2 0x11"
.LASF1578:
	.string	"PCINT26_BIT 2"
.LASF1475:
	.string	"ANALOG_COMP_vect _VECTOR(23)"
.LASF924:
	.string	"DORD0 5"
.LASF1066:
	.string	"TIMSK2 _SFR_MEM8(0x70)"
.LASF1091:
	.string	"ADCH0 0"
.LASF1391:
	.string	"UCSZ12 2"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF873:
	.string	"TCNT0 _SFR_IO8(0x26)"
.LASF1953:
	.string	"M_LOG10E 0.43429448190325182765"
.LASF1183:
	.string	"ICR1H1 1"
.LASF2157:
	.string	"MPU6050_DHPF_RESET 0x00"
.LASF998:
	.string	"CLKPS3 3"
.LASF790:
	.string	"TOV0 0"
.LASF927:
	.string	"SPSR0 _SFR_IO8(0x2D)"
.LASF1174:
	.string	"ICR1L1 1"
.LASF825:
	.string	"EERE 0"
.LASF1177:
	.string	"ICR1L4 4"
.LASF1009:
	.string	"OSCCAL _SFR_MEM8(0x66)"
.LASF634:
	.string	"SCNdPTR SCNd16"
.LASF1325:
	.string	"TWAM4 5"
.LASF1468:
	.string	"USART0_RX_vect_num 20"
.LASF1513:
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
.LASF1451:
	.string	"TIMER2_OVF_vect _VECTOR(11)"
.LASF2333:
	.string	"MPU6050_AXOFFSET 0"
.LASF557:
	.string	"INT64_C(value) __CONCAT(value, LL)"
.LASF818:
	.string	"GPIOR02 2"
.LASF1048:
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
.LASF1007:
	.string	"PRTIM2 6"
.LASF1593:
	.string	"PCINT28_PIN PIND"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF1432:
	.string	"INT1_vect_num 2"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF2052:
	.string	"MPU6050_RA_I2C_MST_STATUS 0x36"
.LASF1739:
	.string	"T1_DDR DDRB"
.LASF1784:
	.string	"PCINT12_PORT PORTB"
.LASF2062:
	.string	"MPU6050_RA_ACCEL_ZOUT_L 0x40"
.LASF2114:
	.string	"MPU6050_RA_WHO_AM_I 0x75"
.LASF293:
	.string	"__DA_FBIT__ 31"
.LASF657:
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
.LASF1722:
	.string	"ADC0_BIT 0"
.LASF1864:
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
.LASF580:
	.string	"PRIdPTR PRId16"
.LASF2272:
	.string	"MPU6050_DETECT_DECREMENT_2 0x2"
.LASF1715:
	.string	"PCINT1_DDR DDRA"
.LASF1211:
	.string	"OCR1BL0 0"
.LASF2006:
	.string	"MPU6050_RA_YG_OFFS_TC 0x01"
.LASF1337:
	.string	"UCSR0B _SFR_MEM8(0xC1)"
.LASF309:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF1703:
	.string	"ADC2_DDR DDRA"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF2251:
	.string	"MPU6050_MOTION_MOT_YPOS_BIT 4"
.LASF773:
	.string	"DDD1 1"
.LASF2287:
	.string	"MPU6050_PWR1_CLKSEL_LENGTH 3"
.LASF1401:
	.string	"USBS1 3"
.LASF494:
	.string	"_STRING_H_ 1"
.LASF424:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF756:
	.string	"PORTC2 2"
.LASF294:
	.string	"__DA_IBIT__ 32"
.LASF751:
	.string	"DDC6 6"
.LASF1306:
	.string	"TWD2 2"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF1366:
	.string	"UBRR8 0"
.LASF1303:
	.string	"TWDR _SFR_MEM8(0xBB)"
.LASF334:
	.string	"__AVR_HAVE_MUL__ 1"
.LASF734:
	.string	"PORTB7 7"
.LASF33:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF602:
	.string	"PRIxFAST16 \"x\""
.LASF97:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF1285:
	.string	"TWBR7 7"
.LASF1727:
	.string	"XCK_DDR DDRB"
.LASF889:
	.string	"OCR0A_6 6"
.LASF2362:
	.string	"double"
.LASF1861:
	.string	"ZL r30"
.LASF2385:
	.string	"mpu6050_getRawData"
.LASF2310:
	.string	"MPU6050_BANKSEL_MEM_SEL_LENGTH 5"
.LASF1553:
	.string	"PCINT15_PIN PINB"
.LASF389:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF2129:
	.string	"MPU6050_EXT_SYNC_GYRO_ZOUT_L 0x4"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF999:
	.string	"CLKPCE 7"
.LASF1550:
	.string	"SCK_BIT 7"
.LASF82:
	.string	"__SIZE_MAX__ 65535U"
.LASF1140:
	.string	"COM1A1 7"
.LASF601:
	.string	"PRIxLEAST16 \"x\""
.LASF1628:
	.string	"PCINT16_PORT PORTC"
.LASF1584:
	.string	"PCINT27_PORT PORTD"
.LASF1615:
	.string	"OC2A_DDR DDRD"
.LASF679:
	.string	"_AVR_IOXXX_H_ \"iom324pa.h\""
.LASF2249:
	.string	"MPU6050_MOTION_MOT_XPOS_BIT 6"
.LASF2230:
	.string	"MPU6050_INTLATCH_50USPULSE 0x00"
.LASF2075:
	.string	"MPU6050_RA_EXT_SENS_DATA_04 0x4D"
.LASF2055:
	.string	"MPU6050_RA_DMP_INT_STATUS 0x39"
.LASF24:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF938:
	.string	"SPDRB6 6"
.LASF2119:
	.string	"MPU6050_VDDIO_LEVEL_VLOGIC 0"
.LASF2030:
	.string	"MPU6050_RA_MOT_DUR 0x20"
.LASF2145:
	.string	"MPU6050_GYRO_FS_2000 0x03"
.LASF1645:
	.string	"PCINT19_PIN PINC"
.LASF1702:
	.string	"PCINT3_BIT 3"
.LASF2345:
	.string	"_I2CMASTER_H 1"
.LASF544:
	.string	"INTMAX_MIN INT64_MIN"
.LASF420:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF600:
	.string	"PRIx16 \"x\""
.LASF627:
	.string	"SCNiFAST16 \"i\""
.LASF1113:
	.string	"ADMUX _SFR_MEM8(0x7C)"
.LASF466:
	.string	"_BSD_WCHAR_T_ "
.LASF1181:
	.string	"ICR1H _SFR_MEM8(0x87)"
.LASF1782:
	.string	"OC0B_BIT 4"
.LASF826:
	.string	"EEPE 1"
.LASF1712:
	.string	"ADC1_PORT PORTA"
.LASF1730:
	.string	"XCK_BIT 0"
.LASF1418:
	.string	"UBRR_9 1"
.LASF2004:
	.string	"MPU6050REGISTERS_H_ "
.LASF1787:
	.string	"_AVR_PORTPINS_H_ 1"
.LASF1868:
	.string	"AVR_STACK_POINTER_HI_REG SPH"
.LASF1952:
	.string	"M_LOG2E 1.4426950408889634074"
.LASF353:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF2327:
	.string	"MPU6050_ACCEL_LSB_2 16384.0"
.LASF1648:
	.string	"PCINT20_PORT PORTC"
.LASF2053:
	.string	"MPU6050_RA_INT_PIN_CFG 0x37"
.LASF1254:
	.string	"OCR2A_2 2"
.LASF1632:
	.string	"SDA_PORT PORTC"
.LASF1080:
	.string	"ADCW _SFR_MEM16(0x78)"
.LASF1778:
	.string	"SS_BIT 4"
.LASF958:
	.string	"SMCR _SFR_IO8(0x33)"
.LASF1385:
	.string	"UDRE1 5"
.LASF2366:
	.string	"data"
.LASF764:
	.string	"PIND1 1"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF1012:
	.string	"CAL2 2"
.LASF1492:
	.string	"SPM_PAGESIZE (128)"
.LASF499:
	.string	"__INTTYPES_H_ "
.LASF302:
	.string	"__UDA_IBIT__ 32"
.LASF1237:
	.string	"CS21 1"
.LASF1660:
	.string	"PCINT23_PORT PORTC"
.LASF1717:
	.string	"PCINT1_PIN PINA"
.LASF742:
	.string	"PINC6 6"
.LASF1705:
	.string	"ADC2_PIN PINA"
.LASF579:
	.string	"PRIiFAST32 \"li\""
.LASF1075:
	.string	"PCINT28 4"
.LASF848:
	.string	"EEAR6 6"
.LASF879:
	.string	"TCNT0_5 5"
.LASF1964:
	.string	"NAN __builtin_nan(\"\")"
.LASF719:
	.string	"DDB1 1"
.LASF1749:
	.string	"PCINT9_PIN PINB"
.LASF955:
	.string	"OCDR5 5"
.LASF1219:
	.string	"OCR1BH _SFR_MEM8(0x8B)"
.LASF1863:
	.string	"AVR_STATUS_REG SREG"
.LASF414:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF1061:
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
.LASF15:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF1581:
	.string	"INT1_PIN PIND"
.LASF440:
	.string	"__need_wchar_t "
.LASF1690:
	.string	"ADC4_BIT 4"
.LASF1671:
	.string	"ADC6_DDR DDRA"
.LASF1297:
	.string	"TWA1 2"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF2273:
	.string	"MPU6050_DETECT_DECREMENT_4 0x3"
.LASF463:
	.string	"_T_WCHAR "
.LASF2380:
	.string	"mpu6050_writeBit"
.LASF717:
	.string	"DDRB _SFR_IO8(0x04)"
.LASF1420:
	.string	"UBRR_11 3"
.LASF554:
	.string	"UINT16_C(value) __CONCAT(value, U)"
.LASF1204:
	.string	"OCR1AH3 3"
.LASF1028:
	.string	"ISC20 4"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF1378:
	.string	"UDR0_7 7"
.LASF1358:
	.string	"_UBRR1 1"
.LASF1825:
	.string	"PB5 PORTB5"
.LASF349:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF1606:
	.string	"ICP_BIT 6"
.LASF2280:
	.string	"MPU6050_USERCTRL_I2C_MST_RESET_BIT 1"
.LASF2093:
	.string	"MPU6050_RA_EXT_SENS_DATA_22 0x5F"
.LASF1563:
	.string	"TXD_DDR DDRD"
.LASF1032:
	.string	"PCINT1 1"
.LASF2384:
	.string	"mpu6050_init"
.LASF37:
	.string	"__WCHAR_TYPE__ int"
.LASF2293:
	.string	"MPU6050_CLOCK_PLL_EXT19M 0x05"
.LASF242:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF2320:
	.string	"MPU6050_GYRO_FS MPU6050_GYRO_FS_2000"
.LASF913:
	.string	"GPIOR23 3"
.LASF1209:
	.string	"OCR1B _SFR_MEM16(0x8A)"
.LASF2396:
	.string	"i2c_stop"
.LASF1561:
	.string	"PCINT24_PIN PIND"
.LASF1880:
	.string	"_AVR_FUSE_H_ 1"
.LASF1599:
	.string	"PCINT29_DDR DDRD"
.LASF1412:
	.string	"UBRR_4 4"
.LASF2245:
	.string	"MPU6050_DMPINT_2_BIT 2"
.LASF1879:
	.string	"__AVR_LIBC_REVISION__ 0"
.LASF1114:
	.string	"MUX0 0"
.LASF296:
	.string	"__TA_IBIT__ 16"
.LASF2268:
	.string	"MPU6050_DETECT_MOT_COUNT_BIT 1"
.LASF575:
	.string	"PRIdLEAST32 \"ld\""
.LASF1186:
	.string	"ICR1H4 4"
.LASF1890:
	.string	"BLB0_MODE_2 (0xFB)"
.LASF2025:
	.string	"MPU6050_RA_GYRO_CONFIG 0x1B"
.LASF626:
	.string	"SCNiLEAST16 \"i\""
.LASF343:
	.string	"__MEMX 1"
.LASF821:
	.string	"GPIOR05 5"
.LASF60:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF2111:
	.string	"MPU6050_RA_FIFO_COUNTH 0x72"
.LASF588:
	.string	"PRIx8 \"x\""
.LASF1019:
	.string	"PCIE0 0"
.LASF1809:
	.string	"PIN2 2"
.LASF1166:
	.string	"TCNT1H3 3"
.LASF1857:
	.string	"XL r26"
.LASF1961:
	.string	"M_2_SQRTPI 1.12837916709551257390"
.LASF2092:
	.string	"MPU6050_RA_EXT_SENS_DATA_21 0x5E"
.LASF2138:
	.string	"MPU6050_DLPF_BW_10 0x05"
.LASF485:
	.string	"abs(__i) __builtin_abs(__i)"
.LASF1979:
	.string	"expf exp"
.LASF2392:
	.string	"i2c_start"
.LASF468:
	.string	"_WCHAR_T_DEFINED "
.LASF17:
	.string	"__FAST_MATH__ 1"
.LASF1272:
	.string	"OCR2BUB 2"
.LASF1348:
	.string	"UCSZ00 1"
.LASF2258:
	.string	"MPU6050_DELAYCTRL_I2C_SLV2_DLY_EN_BIT 2"
.LASF694:
	.string	"DDA3 3"
.LASF2064:
	.string	"MPU6050_RA_TEMP_OUT_L 0x42"
.LASF1987:
	.string	"logf log"
.LASF464:
	.string	"__WCHAR_T "
.LASF1816:
	.string	"PA4 PORTA4"
.LASF982:
	.string	"SIGRD 5"
.LASF688:
	.string	"PINA6 6"
.LASF1678:
	.string	"PCINT6_BIT 6"
.LASF1045:
	.string	"PCINT13 5"
.LASF1426:
	.string	"UDR1_4 4"
.LASF250:
	.string	"__LACCUM_IBIT__ 32"
.LASF2165:
	.string	"MPU6050_YG_FIFO_EN_BIT 5"
.LASF2190:
	.string	"MPU6050_CLOCK_DIV_400 0xD"
.LASF1916:
	.string	"__LPM(addr) __LPM_enhanced__(addr)"
.LASF1527:
	.string	"__BOOT_LOCK_BITS_1_EXIST "
.LASF839:
	.string	"EEDR7 7"
.LASF1133:
	.string	"AIN1D 1"
.LASF178:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF1319:
	.string	"TWINT 7"
.LASF1136:
	.string	"WGM11 1"
.LASF1877:
	.string	"__AVR_LIBC_MAJOR__ 1"
.LASF891:
	.string	"OCR0B _SFR_IO8(0x28)"
.LASF1775:
	.string	"SS_DDR DDRB"
.LASF1983:
	.string	"acosf acos"
.LASF1719:
	.string	"ADC0_DDR DDRA"
.LASF2147:
	.string	"MPU6050_ACONFIG_YA_ST_BIT 6"
.LASF598:
	.string	"PRIuLEAST16 \"u\""
.LASF1896:
	.string	"BLB1_MODE_4 (0xDF)"
.LASF1413:
	.string	"UBRR_5 5"
.LASF2169:
	.string	"MPU6050_SLV1_FIFO_EN_BIT 1"
.LASF1990:
	.string	"isnanf isnan"
.LASF1667:
	.string	"PCINT7_DDR DDRA"
.LASF2359:
	.string	"long long unsigned int"
.LASF22:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1791:
	.string	"PORT4 4"
.LASF1270:
	.string	"TCR2BUB 0"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF1092:
	.string	"ADCH1 1"
.LASF518:
	.string	"UINT_LEAST8_MAX UINT8_MAX"
.LASF58:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF1024:
	.string	"ISC00 0"
.LASF794:
	.string	"TOV1 0"
.LASF867:
	.string	"CS00 0"
.LASF2035:
	.string	"MPU6050_RA_I2C_SLV0_ADDR 0x25"
.LASF862:
	.string	"COM0B0 4"
.LASF1178:
	.string	"ICR1L5 5"
.LASF336:
	.string	"__AVR_HAVE_JMP_CALL__ 1"
.LASF2282:
	.string	"MPU6050_PWR1_DEVICE_RESET_BIT 7"
.LASF1565:
	.string	"TXD_PIN PIND"
.LASF1326:
	.string	"TWAM5 6"
.LASF1250:
	.string	"TCNT2_7 7"
.LASF1824:
	.string	"PB4 PORTB4"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF819:
	.string	"GPIOR03 3"
.LASF1768:
	.string	"OC0A_PORT PORTB"
.LASF1158:
	.string	"TCNT1L4 4"
.LASF2026:
	.string	"MPU6050_RA_ACCEL_CONFIG 0x1C"
.LASF2105:
	.string	"MPU6050_RA_PWR_MGMT_2 0x6C"
.LASF2036:
	.string	"MPU6050_RA_I2C_SLV0_REG 0x26"
.LASF2178:
	.string	"MPU6050_CLOCK_DIV_333 0x1"
.LASF1692:
	.string	"PCINT4_PORT PORTA"
.LASF1977:
	.string	"frexpf frexp"
.LASF1817:
	.string	"PA5 PORTA5"
.LASF1852:
	.string	"SREG_V (3)"
.LASF882:
	.string	"OCR0A _SFR_IO8(0x27)"
.LASF1661:
	.string	"PCINT23_PIN PINC"
.LASF96:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF2300:
	.string	"MPU6050_PWR2_STBY_XG_BIT 2"
.LASF2278:
	.string	"MPU6050_USERCTRL_DMP_RESET_BIT 3"
.LASF1498:
	.string	"XRAMEND (RAMEND)"
.LASF923:
	.string	"MSTR0 4"
.LASF1394:
	.string	"UDRIE1 5"
.LASF1212:
	.string	"OCR1BL1 1"
.LASF1902:
	.string	"PGM_VOID_P const void *"
.LASF446:
	.string	"_T_SIZE "
.LASF1457:
	.string	"TIMER1_COMPB_vect _VECTOR(14)"
.LASF116:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF2259:
	.string	"MPU6050_DELAYCTRL_I2C_SLV1_DLY_EN_BIT 1"
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF1271:
	.string	"TCR2AUB 1"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF2058:
	.string	"MPU6050_RA_ACCEL_XOUT_L 0x3C"
.LASF1486:
	.string	"USART1_UDRE_vect_num 29"
.LASF757:
	.string	"PORTC3 3"
.LASF752:
	.string	"DDC7 7"
.LASF1307:
	.string	"TWD3 3"
.LASF1367:
	.string	"UBRR9 1"
.LASF1891:
	.string	"BLB0_MODE_3 (0xF3)"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF1332:
	.string	"DOR0 3"
.LASF2185:
	.string	"MPU6050_CLOCK_DIV_258 0x8"
.LASF55:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1480:
	.string	"TWI_vect_num 26"
.LASF2304:
	.string	"MPU6050_WAKE_FREQ_2P5 0x1"
.LASF584:
	.string	"PRIoFAST8 \"o\""
.LASF890:
	.string	"OCR0A_7 7"
.LASF2122:
	.string	"MPU6050_CFG_EXT_SYNC_SET_LENGTH 3"
.LASF2375:
	.string	"mpu6050_writeByte"
.LASF313:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF236:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF81:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF1832:
	.string	"PC4 PORTC4"
.LASF1447:
	.string	"TIMER2_COMPA_vect _VECTOR(9)"
.LASF785:
	.string	"PORTD4 4"
.LASF1560:
	.string	"PCINT24_PORT PORTD"
.LASF2049:
	.string	"MPU6050_RA_I2C_SLV4_DO 0x33"
.LASF610:
	.string	"PRIuLEAST32 \"lu\""
.LASF1761:
	.string	"PCINT10_PIN PINB"
.LASF762:
	.string	"PIND _SFR_IO8(0x09)"
.LASF422:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF1908:
	.string	"__LPM_word_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint16_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1777:
	.string	"SS_PIN PINB"
.LASF895:
	.string	"OCR0B_3 3"
.LASF2016:
	.string	"MPU6050_RA_ZA_OFFS_L_TC 0x0B"
.LASF939:
	.string	"SPDRB7 7"
.LASF1818:
	.string	"PA6 PORTA6"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF213:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF925:
	.string	"SPE0 6"
.LASF1493:
	.string	"RAMSTART (0x100)"
.LASF2033:
	.string	"MPU6050_RA_FIFO_EN 0x23"
.LASF2209:
	.string	"MPU6050_I2C_SLV4_MST_DLY_LENGTH 5"
.LASF413:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF1723:
	.string	"PCINT0_DDR DDRA"
.LASF630:
	.string	"SCNdFAST32 \"ld\""
.LASF2348:
	.string	"i2c_read(ack) (ack) ? i2c_readAck() : i2c_readNak();"
.LASF635:
	.string	"SCNiPTR SCNi16"
.LASF161:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF1460:
	.string	"TIMER0_COMPA_vect_num 16"
.LASF1872:
	.string	"_AVR_VERSION_H_ "
.LASF2226:
	.string	"MPU6050_INTMODE_ACTIVEHIGH 0x00"
.LASF807:
	.string	"EIFR _SFR_IO8(0x1C)"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF2034:
	.string	"MPU6050_RA_I2C_MST_CTRL 0x24"
.LASF670:
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
.LASF555:
	.string	"INT32_C(value) __CONCAT(value, L)"
.LASF493:
	.string	"EXIT_FAILURE 1"
.LASF859:
	.string	"TCCR0A _SFR_IO8(0x24)"
.LASF355:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF1743:
	.string	"CLKO_DDR DDRB"
.LASF1255:
	.string	"OCR2A_3 3"
.LASF831:
	.string	"EEDR _SFR_IO8(0x20)"
.LASF2364:
	.string	"regAddr"
.LASF928:
	.string	"SPI2X0 0"
.LASF581:
	.string	"PRIiPTR PRIi16"
.LASF896:
	.string	"OCR0B_4 4"
.LASF667:
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
.LASF765:
	.string	"PIND2 2"
.LASF1013:
	.string	"CAL3 3"
.LASF47:
	.string	"__INT64_TYPE__ long long int"
.LASF1894:
	.string	"BLB1_MODE_2 (0xEF)"
.LASF2056:
	.string	"MPU6050_RA_INT_STATUS 0x3A"
.LASF1526:
	.string	"__BOOT_LOCK_BITS_0_EXIST "
.LASF1630:
	.string	"PCINT16_BIT 0"
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF743:
	.string	"PINC7 7"
.LASF636:
	.string	"SCNo16 \"o\""
.LASF1811:
	.string	"PIN0 0"
.LASF1800:
	.string	"DD3 3"
.LASF1076:
	.string	"PCINT29 5"
.LASF2215:
	.string	"MPU6050_MST_I2C_SLV2_NACK_BIT 2"
.LASF849:
	.string	"EEAR7 7"
.LASF880:
	.string	"TCNT0_6 6"
.LASF73:
	.string	"__SHRT_MAX__ 32767"
.LASF720:
	.string	"DDB2 2"
.LASF967:
	.string	"WDRF 3"
.LASF1328:
	.string	"UCSR0A _SFR_MEM8(0xC0)"
.LASF2288:
	.string	"MPU6050_CLOCK_INTERNAL 0x00"
.LASF956:
	.string	"OCDR6 6"
.LASF1596:
	.string	"OC1A_PORT PORTD"
.LASF1570:
	.string	"PCINT25_BIT 1"
.LASF703:
	.string	"PORTA3 3"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF771:
	.string	"DDRD _SFR_IO8(0x0A)"
.LASF698:
	.string	"DDA7 7"
.LASF2376:
	.string	"mpu6050_readByte"
.LASF2065:
	.string	"MPU6050_RA_GYRO_XOUT_H 0x43"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF987:
	.string	"WDP1 1"
.LASF2176:
	.string	"MPU6050_I2C_MST_CLK_LENGTH 4"
.LASF505:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF2321:
	.string	"MPU6050_ACCEL_FS MPU6050_ACCEL_FS_2"
.LASF2166:
	.string	"MPU6050_ZG_FIFO_EN_BIT 4"
.LASF1461:
	.string	"TIMER0_COMPA_vect _VECTOR(16)"
.LASF1580:
	.string	"INT1_PORT PORTD"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF571:
	.string	"PRIi16 \"i\""
.LASF1639:
	.string	"PCINT18_DDR DDRC"
.LASF2358:
	.string	"long long int"
.LASF1869:
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
.LASF123:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1205:
	.string	"OCR1AH4 4"
.LASF1029:
	.string	"ISC21 5"
.LASF1750:
	.string	"PCINT9_BIT 1"
.LASF1601:
	.string	"PCINT29_PIN PIND"
.LASF1084:
	.string	"ADCL2 2"
.LASF645:
	.string	"SCNo32 \"lo\""
.LASF328:
	.string	"__AVR_ARCH__ 5"
.LASF2096:
	.string	"MPU6050_RA_I2C_SLV0_DO 0x63"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF1261:
	.string	"OCR2B_0 0"
.LASF1033:
	.string	"PCINT2 2"
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF2281:
	.string	"MPU6050_USERCTRL_SIG_COND_RESET_BIT 0"
.LASF1841:
	.string	"PD5 PORTD5"
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF1276:
	.string	"EXCLK 6"
.LASF1866:
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
.LASF2097:
	.string	"MPU6050_RA_I2C_SLV1_DO 0x64"
.LASF914:
	.string	"GPIOR24 4"
.LASF1471:
	.string	"USART0_UDRE_vect _VECTOR(21)"
.LASF133:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF2091:
	.string	"MPU6050_RA_EXT_SENS_DATA_20 0x5D"
.LASF93:
	.string	"__UINT8_MAX__ 255"
.LASF1834:
	.string	"PC6 PORTC6"
.LASF2098:
	.string	"MPU6050_RA_I2C_SLV2_DO 0x65"
.LASF2232:
	.string	"MPU6050_INTCLEAR_STATUSREAD 0x00"
.LASF2328:
	.string	"MPU6050_ACCEL_LSB_4 8192.0"
.LASF1180:
	.string	"ICR1L7 7"
.LASF1003:
	.string	"PRSPI 2"
.LASF1187:
	.string	"ICR1H5 5"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF666:
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
.LASF834:
	.string	"EEDR2 2"
.LASF2066:
	.string	"MPU6050_RA_GYRO_XOUT_L 0x44"
.LASF2393:
	.string	"i2c_write"
.LASF1171:
	.string	"ICR1 _SFR_MEM16(0x86)"
.LASF523:
	.string	"INT_LEAST32_MIN INT32_MIN"
.LASF558:
	.string	"UINT64_C(value) __CONCAT(value, ULL)"
.LASF1808:
	.string	"PIN3 3"
.LASF1167:
	.string	"TCNT1H4 4"
.LASF1958:
	.string	"M_PI_4 0.78539816339744830962"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF980:
	.string	"BLBSET 3"
.LASF514:
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
.LASF605:
	.string	"PRIXFAST16 \"X\""
.LASF1481:
	.string	"TWI_vect _VECTOR(26)"
.LASF711:
	.string	"PINB2 2"
.LASF1349:
	.string	"UCSZ01 2"
.LASF153:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1718:
	.string	"PCINT1_BIT 1"
.LASF1544:
	.string	"PCINT14_PORT PORTB"
.LASF869:
	.string	"CS02 2"
.LASF2163:
	.string	"MPU6050_TEMP_FIFO_EN_BIT 7"
.LASF1442:
	.string	"PCINT3_vect_num 7"
.LASF1221:
	.string	"OCR1BH1 1"
.LASF1963:
	.string	"M_SQRT1_2 0.70710678118654752440"
.LASF1046:
	.string	"PCINT14 6"
.LASF1427:
	.string	"UDR1_5 5"
.LASF195:
	.string	"__USFRACT_IBIT__ 0"
.LASF419:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF1483:
	.string	"SPM_READY_vect _VECTOR(27)"
.LASF1948:
	.string	"__HAS_DELAY_CYCLES 1"
.LASF124:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1197:
	.string	"OCR1AL5 5"
.LASF673:
	.string	"_BV(bit) (1 << (bit))"
.LASF1597:
	.string	"OC1A_PIN PIND"
.LASF1842:
	.string	"PD6 PORTD6"
.LASF699:
	.string	"PORTA _SFR_IO8(0x02)"
.LASF1145:
	.string	"WGM12 3"
.LASF1638:
	.string	"PCINT17_BIT 1"
.LASF1520:
	.string	"HFUSE_DEFAULT (FUSE_JTAGEN & FUSE_SPIEN & FUSE_BOOTSZ1 & FUSE_BOOTSZ0)"
.LASF344:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF1414:
	.string	"UBRR_6 6"
.LASF921:
	.string	"CPHA0 2"
.LASF5:
	.string	"__GNUC__ 4"
.LASF1912:
	.ascii	"__LPM_dword_enhanced_"
	.string	"_(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1790:
	.string	"PORT5 5"
.LASF1093:
	.string	"ADCH2 2"
.LASF1624:
	.string	"SCL_PORT PORTC"
.LASF1454:
	.string	"TIMER1_COMPA_vect_num 13"
.LASF1243:
	.string	"TCNT2_0 0"
.LASF1707:
	.string	"PCINT2_DDR DDRA"
.LASF2115:
	.string	"MPU6050_TC_PWR_MODE_BIT 7"
.LASF1025:
	.string	"ISC01 1"
.LASF530:
	.string	"UINT_FAST8_MAX UINT8_MAX"
.LASF2326:
	.string	"MPU6050_GGAIN MPU6050_GYRO_LSB_2000"
.LASF799:
	.string	"TOV2 0"
.LASF1695:
	.string	"ADC3_DDR DDRA"
.LASF1682:
	.string	"ADC5_BIT 5"
.LASF25:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF488:
	.string	"RANDOM_MAX 0x7FFFFFFF"
.LASF863:
	.string	"COM0B1 5"
.LASF157:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF2322:
	.string	"MPU6050_GYRO_LSB_250 131.0"
.LASF941:
	.string	"ACIS0 0"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF1327:
	.string	"TWAM6 7"
.LASF1450:
	.string	"TIMER2_OVF_vect_num 11"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF2332:
	.string	"MPU6050_CALIBRATEDACCGYRO 1"
.LASF1855:
	.string	"SREG_T (6)"
.LASF820:
	.string	"GPIOR04 4"
.LASF1865:
	.string	"AVR_STACK_POINTER_REG SP"
.LASF1159:
	.string	"TCNT1L5 5"
.LASF725:
	.string	"DDB7 7"
.LASF713:
	.string	"PINB4 4"
.LASF1200:
	.string	"OCR1AH _SFR_MEM8(0x89)"
.LASF1469:
	.string	"USART0_RX_vect _VECTOR(20)"
.LASF887:
	.string	"OCR0A_4 4"
.LASF1629:
	.string	"PCINT16_PIN PINC"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF653:
	.string	"SCNxFAST32 \"lx\""
.LASF1449:
	.string	"TIMER2_COMPB_vect _VECTOR(10)"
.LASF1213:
	.string	"OCR1BL2 2"
.LASF1637:
	.string	"PCINT17_PIN PINC"
.LASF1287:
	.string	"TWPS0 0"
.LASF519:
	.string	"INT_LEAST16_MAX INT16_MAX"
.LASF23:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1728:
	.string	"XCK_PORT PORTB"
.LASF513:
	.string	"INT64_MAX 0x7fffffffffffffffLL"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF442:
	.string	"__SIZE_T__ "
.LASF775:
	.string	"DDD3 3"
.LASF1259:
	.string	"OCR2A_7 7"
.LASF35:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF1532:
	.string	"MOSI_PORT PORTB"
.LASF2047:
	.string	"MPU6050_RA_I2C_SLV4_ADDR 0x31"
.LASF758:
	.string	"PORTC4 4"
.LASF56:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF2146:
	.string	"MPU6050_ACONFIG_XA_ST_BIT 7"
.LASF1308:
	.string	"TWD4 4"
.LASF1383:
	.string	"DOR1 3"
.LASF2164:
	.string	"MPU6050_XG_FIFO_EN_BIT 6"
.LASF1108:
	.string	"ADCSRB _SFR_MEM8(0x7B)"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF1920:
	.string	"pgm_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
.LASF1698:
	.string	"ADC3_BIT 3"
.LASF394:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF1982:
	.string	"tanhf tanh"
.LASF1085:
	.string	"ADCL3 3"
.LASF508:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1716:
	.string	"PCINT1_PORT PORTA"
.LASF2312:
	.string	"MPU6050_WHO_AM_I_LENGTH 6"
.LASF204:
	.string	"__UFRACT_FBIT__ 16"
.LASF2021:
	.string	"MPU6050_RA_ZG_OFFS_USRH 0x17"
.LASF2349:
	.string	"unsigned int"
.LASF2340:
	.string	"MPU6050_GYOFFSET 9"
.LASF1937:
	.string	"SIGNAL(vector) void vector (void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
.LASF325:
	.string	"__AVR 1"
.LASF1998:
	.string	"fminf fmin"
.LASF1856:
	.string	"SREG_I (7)"
.LASF1338:
	.string	"TXB80 0"
.LASF2264:
	.string	"MPU6050_DETECT_ACCEL_ON_DELAY_BIT 5"
.LASF1242:
	.string	"TCNT2 _SFR_MEM8(0xB2)"
.LASF545:
	.string	"UINTMAX_MAX UINT64_MAX"
.LASF753:
	.string	"PORTC _SFR_IO8(0x08)"
.LASF2263:
	.string	"MPU6050_PATHRESET_TEMP_RESET_BIT 0"
.LASF2184:
	.string	"MPU6050_CLOCK_DIV_267 0x7"
.LASF2224:
	.string	"MPU6050_INTCFG_I2C_BYPASS_EN_BIT 1"
.LASF1132:
	.string	"AIN0D 0"
.LASF1925:
	.string	"pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
.LASF1914:
	.ascii	"__LPM_float_tiny__(addr) (__"
	.string	"extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; float __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF1697:
	.string	"ADC3_PIN PINA"
.LASF774:
	.string	"DDD2 2"
.LASF2342:
	.string	"MPU6050_GXGAIN 16.4"
.LASF38:
	.string	"__WINT_TYPE__ int"
.LASF1710:
	.string	"PCINT2_BIT 2"
.LASF560:
	.string	"UINTMAX_C(value) __CONCAT(value, ULL)"
.LASF2284:
	.string	"MPU6050_PWR1_CYCLE_BIT 5"
.LASF1430:
	.string	"INT0_vect_num 1"
.LASF851:
	.string	"EEAR8 0"
.LASF122:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF1478:
	.string	"EE_READY_vect_num 25"
.LASF1757:
	.string	"INT2_PIN PINB"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF6:
	.string	"__GNUC_MINOR__ 8"
.LASF1850:
	.string	"SREG_Z (1)"
.LASF2102:
	.string	"MPU6050_RA_MOT_DETECT_CTRL 0x69"
.LASF1256:
	.string	"OCR2A_4 4"
.LASF2276:
	.string	"MPU6050_USERCTRL_I2C_MST_EN_BIT 5"
.LASF1626:
	.string	"SCL_BIT 0"
.LASF1443:
	.string	"PCINT3_vect _VECTOR(7)"
.LASF654:
	.string	"SCNoPTR SCNo16"
.LASF897:
	.string	"OCR0B_5 5"
.LASF659:
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
.LASF2076:
	.string	"MPU6050_RA_EXT_SENS_DATA_05 0x4E"
.LASF43:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF766:
	.string	"PIND3 3"
.LASF2017:
	.string	"MPU6050_RA_XG_OFFS_USRH 0x13"
.LASF1014:
	.string	"CAL4 4"
.LASF2101:
	.string	"MPU6050_RA_SIGNAL_PATH_RESET 0x68"
.LASF678:
	.string	"loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
.LASF435:
	.string	"DEBUG 1"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF2086:
	.string	"MPU6050_RA_EXT_SENS_DATA_15 0x58"
.LASF566:
	.string	"PRIiLEAST8 \"i\""
.LASF1233:
	.string	"COM2A0 6"
.LASF1281:
	.string	"TWBR3 3"
.LASF333:
	.string	"__AVR_ENHANCED__ 1"
.LASF881:
	.string	"TCNT0_7 7"
.LASF721:
	.string	"DDB3 3"
.LASF2116:
	.string	"MPU6050_TC_OFFSET_BIT 6"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF618:
	.string	"PRIoPTR PRIo16"
.LASF1065:
	.string	"ICIE1 5"
.LASF704:
	.string	"PORTA4 4"
.LASF2298:
	.string	"MPU6050_PWR2_STBY_YA_BIT 4"
.LASF1706:
	.string	"ADC2_BIT 2"
.LASF54:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF1687:
	.string	"ADC4_DDR DDRA"
.LASF1664:
	.string	"ADC7_PORT PORTA"
.LASF988:
	.string	"WDP2 2"
.LASF1506:
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
.LASF1549:
	.string	"SCK_PIN PINB"
.LASF358:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF2290:
	.string	"MPU6050_CLOCK_PLL_YGYRO 0x02"
.LASF2302:
	.string	"MPU6050_PWR2_STBY_ZG_BIT 0"
.LASF1129:
	.string	"ADC6D 6"
.LASF149:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF2325:
	.string	"MPU6050_GYRO_LSB_2000 16.4"
.LASF1576:
	.string	"PCINT26_PORT PORTD"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF345:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF1815:
	.string	"PA3 PORTA3"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
