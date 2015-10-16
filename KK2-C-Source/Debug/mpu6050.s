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
	.long	0xc3f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF49
	.byte	0x1
	.long	.LASF50
	.long	.LASF51
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF3
	.byte	0x3
	.byte	0x79
	.long	0x49
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x3
	.byte	0x7a
	.long	0x5b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x7b
	.long	0x30
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x7e
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.long	0xc6
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xc6
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xe2
	.long	0xc6
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0xe6
	.long	0x6d
	.uleb128 0x8
	.byte	0x1
	.long	.LASF24
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x9
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x3e
	.byte	0x1
	.long	0x115
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x21
	.long	0x50
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x21
	.long	0x50
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x21
	.long	0x115
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x50
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x23
	.long	0x3e
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x50
	.uleb128 0xc
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.long	0x16e
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x77
	.long	0x50
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x77
	.long	0x50
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x77
	.long	0x50
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x77
	.long	0x50
	.uleb128 0xd
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0x80
	.long	0x50
	.uleb128 0xd
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x82
	.long	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x1a7
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0x8e
	.long	0xc6
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x90
	.long	0xc6
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0x94
	.long	0x6d
	.uleb128 0x8
	.byte	0x1
	.long	.LASF24
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xcd
	.long	.LFB25
	.long	.LFE25
	.long	.LLST0
	.byte	0x1
	.long	0x27a
	.uleb128 0xf
	.long	0xdf
	.long	.LLST1
	.uleb128 0xf
	.long	0xea
	.long	.LLST2
	.uleb128 0xf
	.long	0xf5
	.long	.LLST3
	.uleb128 0x10
	.long	0x100
	.long	.LLST4
	.uleb128 0x10
	.long	0x109
	.long	.LLST5
	.uleb128 0x11
	.long	0x8d
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x28
	.long	0x222
	.uleb128 0x12
	.long	0x9a
	.byte	0x4
	.long	0x41200000
	.uleb128 0x13
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x14
	.long	0xa5
	.byte	0x4
	.long	0x43480000
	.uleb128 0x15
	.long	0xb0
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LVL2
	.long	0xbe2
	.long	0x236
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd0
	.byte	0
	.uleb128 0x16
	.long	.LVL3
	.long	0xbfa
	.long	0x24a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL4
	.long	0xbe2
	.long	0x25e
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd1
	.byte	0
	.uleb128 0x18
	.long	.LVL7
	.long	0xc12
	.uleb128 0x18
	.long	.LVL8
	.long	0xc20
	.uleb128 0x18
	.long	.LVL11
	.long	0xc2e
	.byte	0
	.uleb128 0x19
	.long	0xcd
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2e0
	.uleb128 0xf
	.long	0xdf
	.long	.LLST6
	.uleb128 0xf
	.long	0xea
	.long	.LLST7
	.uleb128 0xf
	.long	0xf5
	.long	.LLST8
	.uleb128 0x15
	.long	0x100
	.byte	0
	.uleb128 0x10
	.long	0x109
	.long	.LLST9
	.uleb128 0x1a
	.long	.LVL16
	.byte	0x1
	.long	0x1a7
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
	.long	.LASF27
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x3e
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x37e
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x1
	.byte	0x3a
	.long	0x50
	.long	.LLST10
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x1
	.byte	0x3a
	.long	0x115
	.long	.LLST11
	.uleb128 0x1d
	.long	0xcd
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x3b
	.uleb128 0xf
	.long	0xf5
	.long	.LLST12
	.uleb128 0x1e
	.long	0xea
	.byte	0x1
	.uleb128 0xf
	.long	0xdf
	.long	.LLST13
	.uleb128 0x13
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x15
	.long	0x100
	.byte	0
	.uleb128 0x15
	.long	0x109
	.byte	0
	.uleb128 0x1a
	.long	.LVL21
	.byte	0x1
	.long	0x1a7
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
	.long	.LASF25
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST14
	.byte	0x1
	.long	0x41c
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x1
	.byte	0x41
	.long	0x50
	.long	.LLST15
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x1
	.byte	0x41
	.long	0x50
	.long	.LLST16
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x1
	.byte	0x41
	.long	0x115
	.long	.LLST17
	.uleb128 0x20
	.long	.LBB24
	.long	.LBE24
	.long	0x3e9
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x50
	.long	.LLST18
	.uleb128 0x18
	.long	.LVL29
	.long	0xbfa
	.byte	0
	.uleb128 0x16
	.long	.LVL24
	.long	0xbe2
	.long	0x3fd
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd0
	.byte	0
	.uleb128 0x16
	.long	.LVL25
	.long	0xbfa
	.long	0x411
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
	.long	0xc2e
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST19
	.byte	0x1
	.long	0x476
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x1
	.byte	0x50
	.long	0x50
	.long	.LLST20
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x1
	.byte	0x50
	.long	0x50
	.long	.LLST21
	.uleb128 0x23
	.long	.LVL37
	.long	0x37e
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
	.long	0x11b
	.long	.LFB26
	.long	.LFE26
	.long	.LLST22
	.byte	0x1
	.long	0x505
	.uleb128 0xf
	.long	0x129
	.long	.LLST23
	.uleb128 0xf
	.long	0x134
	.long	.LLST24
	.uleb128 0xf
	.long	0x13f
	.long	.LLST25
	.uleb128 0xf
	.long	0x14a
	.long	.LLST26
	.uleb128 0x13
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x24
	.long	0x156
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x20
	.long	.LBB26
	.long	.LBE26
	.long	0x4e8
	.uleb128 0x10
	.long	0x160
	.long	.LLST27
	.uleb128 0x23
	.long	.LVL45
	.long	0x41c
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
	.long	0x2e0
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
	.long	.LASF28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0x3e
	.long	.LFB15
	.long	.LFE15
	.long	.LLST28
	.byte	0x1
	.long	0x5ba
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x1
	.byte	0x57
	.long	0x50
	.long	.LLST29
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x1
	.byte	0x57
	.long	0x50
	.long	.LLST30
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x1
	.byte	0x57
	.long	0x50
	.long	.LLST31
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x1
	.byte	0x57
	.long	0x115
	.long	.LLST32
	.uleb128 0x26
	.long	.LASF18
	.byte	0x1
	.byte	0x5d
	.long	0x3e
	.long	.LLST33
	.uleb128 0x13
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x5f
	.long	0x50
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x20
	.long	.LBB28
	.long	.LBE28
	.long	0x59c
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x61
	.long	0x50
	.byte	0
	.uleb128 0x23
	.long	.LVL51
	.long	0x2e0
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
	.long	.LASF29
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x3e
	.long	.LFB16
	.long	.LFE16
	.long	.LLST34
	.byte	0x1
	.long	0x63b
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x1
	.byte	0x6d
	.long	0x50
	.long	.LLST35
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x1
	.byte	0x6d
	.long	0x50
	.long	.LLST36
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x1
	.byte	0x6d
	.long	0x115
	.long	.LLST37
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x6e
	.long	0x50
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.byte	0x6f
	.long	0x50
	.byte	0x1
	.byte	0x68
	.uleb128 0x23
	.long	.LVL58
	.long	0x2e0
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
	.long	0x11b
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x69d
	.uleb128 0xf
	.long	0x129
	.long	.LLST38
	.uleb128 0xf
	.long	0x134
	.long	.LLST39
	.uleb128 0xf
	.long	0x13f
	.long	.LLST40
	.uleb128 0xf
	.long	0x14a
	.long	.LLST41
	.uleb128 0x1a
	.long	.LVL62
	.byte	0x1
	.long	0x476
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
	.long	.LASF31
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST42
	.byte	0x1
	.long	0x720
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x1
	.byte	0x8f
	.long	0x50
	.long	.LLST43
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x1
	.byte	0x8f
	.long	0x50
	.long	.LLST44
	.uleb128 0x1c
	.long	.LASF17
	.byte	0x1
	.byte	0x8f
	.long	0x50
	.long	.LLST45
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.byte	0x90
	.long	0x50
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.long	.LVL65
	.long	0x2e0
	.long	0x70f
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
	.long	0x41c
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
	.long	.LASF32
	.byte	0x1
	.word	0x1b1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x756
	.uleb128 0x1a
	.long	.LVL69
	.byte	0x1
	.long	0x69d
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
	.long	.LASF33
	.byte	0x1
	.word	0x1b8
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x78c
	.uleb128 0x1a
	.long	.LVL70
	.byte	0x1
	.long	0x69d
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
	.long	.LASF34
	.byte	0x1
	.word	0x1c0
	.long	0x50
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7d3
	.uleb128 0x23
	.long	.LVL71
	.long	0x505
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
	.long	.LASF35
	.byte	0x1
	.word	0x1cb
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x9f3
	.uleb128 0x2b
	.long	0x8d
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x1cf
	.long	0x826
	.uleb128 0x12
	.long	0x9a
	.byte	0x4
	.long	0x41200000
	.uleb128 0x13
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x14
	.long	0xa5
	.byte	0x4
	.long	0x43480000
	.uleb128 0x15
	.long	0xb0
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x16e
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x1d3
	.long	0x862
	.uleb128 0x12
	.long	0x17b
	.byte	0x4
	.long	0x42c80000
	.uleb128 0x13
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x14
	.long	0x186
	.byte	0x4
	.long	0x49f42400
	.uleb128 0x2c
	.long	0x191
	.long	0x1e8480
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x16e
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x1d8
	.long	0x89e
	.uleb128 0x12
	.long	0x17b
	.byte	0x4
	.long	0x41200000
	.uleb128 0x13
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x14
	.long	0x186
	.byte	0x4
	.long	0x48435000
	.uleb128 0x2c
	.long	0x191
	.long	0x30d40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x11b
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x1dd
	.long	0x8ea
	.uleb128 0x1e
	.long	0x14a
	.byte	0x1
	.uleb128 0x1e
	.long	0x13f
	.byte	0x3
	.uleb128 0x1e
	.long	0x134
	.byte	0x2
	.uleb128 0x1e
	.long	0x129
	.byte	0x6b
	.uleb128 0x23
	.long	.LVL76
	.long	0x476
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
	.long	0x11b
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x1df
	.long	0x935
	.uleb128 0x1e
	.long	0x14a
	.byte	0x3
	.uleb128 0x1e
	.long	0x13f
	.byte	0x3
	.uleb128 0x1e
	.long	0x134
	.byte	0x2
	.uleb128 0x1e
	.long	0x129
	.byte	0x1a
	.uleb128 0x23
	.long	.LVL77
	.long	0x476
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
	.long	0x11b
	.long	.LBB53
	.long	.LBE53
	.byte	0x1
	.word	0x1e3
	.long	0x980
	.uleb128 0x1e
	.long	0x14a
	.byte	0x3
	.uleb128 0x1e
	.long	0x13f
	.byte	0x2
	.uleb128 0x1e
	.long	0x134
	.byte	0x4
	.uleb128 0x1e
	.long	0x129
	.byte	0x1b
	.uleb128 0x23
	.long	.LVL79
	.long	0x476
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
	.long	0x11b
	.long	.LBB55
	.long	.LBE55
	.byte	0x1
	.word	0x1e5
	.long	0x9cc
	.uleb128 0x1e
	.long	0x14a
	.byte	0
	.uleb128 0x1e
	.long	0x13f
	.byte	0x2
	.uleb128 0x1e
	.long	0x134
	.byte	0x4
	.uleb128 0x1e
	.long	0x129
	.byte	0x1c
	.uleb128 0x1a
	.long	.LVL80
	.byte	0x1
	.long	0x476
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
	.long	0xc38
	.uleb128 0x18
	.long	.LVL74
	.long	0x720
	.uleb128 0x23
	.long	.LVL78
	.long	0x41c
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
	.long	.LASF36
	.byte	0x1
	.word	0x1f0
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST46
	.byte	0x1
	.long	0xa8c
	.uleb128 0x2e
	.string	"ax"
	.byte	0x1
	.word	0x1f0
	.long	0xa8c
	.long	.LLST47
	.uleb128 0x2e
	.string	"ay"
	.byte	0x1
	.word	0x1f0
	.long	0xa8c
	.long	.LLST48
	.uleb128 0x2e
	.string	"az"
	.byte	0x1
	.word	0x1f0
	.long	0xa8c
	.long	.LLST49
	.uleb128 0x2e
	.string	"gx"
	.byte	0x1
	.word	0x1f0
	.long	0xa8c
	.long	.LLST50
	.uleb128 0x2e
	.string	"gy"
	.byte	0x1
	.word	0x1f0
	.long	0xa8c
	.long	.LLST51
	.uleb128 0x2e
	.string	"gz"
	.byte	0x1
	.word	0x1f0
	.long	0xa8c
	.long	.LLST52
	.uleb128 0x23
	.long	.LVL85
	.long	0xcd
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
	.long	0x62
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.word	0x1fe
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST53
	.byte	0x1
	.long	0xbae
	.uleb128 0x2e
	.string	"axg"
	.byte	0x1
	.word	0x1fe
	.long	0xbae
	.long	.LLST54
	.uleb128 0x2e
	.string	"ayg"
	.byte	0x1
	.word	0x1fe
	.long	0xbae
	.long	.LLST55
	.uleb128 0x2e
	.string	"azg"
	.byte	0x1
	.word	0x1fe
	.long	0xbae
	.long	.LLST56
	.uleb128 0x30
	.long	.LASF38
	.byte	0x1
	.word	0x1fe
	.long	0xbae
	.long	.LLST57
	.uleb128 0x30
	.long	.LASF39
	.byte	0x1
	.word	0x1fe
	.long	0xbae
	.long	.LLST58
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.word	0x1fe
	.long	0xbae
	.long	.LLST59
	.uleb128 0x31
	.string	"ax"
	.byte	0x1
	.word	0x1ff
	.long	0x62
	.byte	0x2
	.byte	0x8c
	.sleb128 11
	.uleb128 0x31
	.string	"ay"
	.byte	0x1
	.word	0x200
	.long	0x62
	.byte	0x2
	.byte	0x8c
	.sleb128 9
	.uleb128 0x31
	.string	"az"
	.byte	0x1
	.word	0x201
	.long	0x62
	.byte	0x2
	.byte	0x8c
	.sleb128 7
	.uleb128 0x31
	.string	"gx"
	.byte	0x1
	.word	0x202
	.long	0x62
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x31
	.string	"gy"
	.byte	0x1
	.word	0x203
	.long	0x62
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x31
	.string	"gz"
	.byte	0x1
	.word	0x204
	.long	0x62
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x23
	.long	.LVL99
	.long	0x9f3
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
	.long	0xc6
	.uleb128 0x32
	.long	0x50
	.long	0xbc4
	.uleb128 0x33
	.long	0xbc4
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF41
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.byte	0x1c
	.long	0xbdd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	buffer
	.uleb128 0x35
	.long	0xbb4
	.uleb128 0x36
	.byte	0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x78
	.byte	0x1
	.long	0x5b
	.byte	0x1
	.long	0xbfa
	.uleb128 0x37
	.long	0x5b
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF44
	.byte	0x4
	.byte	0x95
	.byte	0x1
	.long	0x5b
	.byte	0x1
	.long	0xc12
	.uleb128 0x37
	.long	0x5b
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.byte	0x1
	.long	0x5b
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.long	.LASF46
	.byte	0x4
	.byte	0x9c
	.byte	0x1
	.long	0x5b
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF47
	.byte	0x4
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.long	.LASF48
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"i2c_init"
.LASF50:
	.string	"../mpu6050/mpu6050.c"
.LASF3:
	.string	"int8_t"
.LASF52:
	.string	"mpu6050_writeBits"
.LASF24:
	.string	"__builtin_avr_delay_cycles"
.LASF46:
	.string	"i2c_readAck"
.LASF11:
	.string	"__tmp"
.LASF41:
	.string	"sizetype"
.LASF30:
	.string	"bitNum"
.LASF26:
	.string	"mpu6050_writeByte"
.LASF4:
	.string	"uint8_t"
.LASF34:
	.string	"mpu6050_testConnection"
.LASF29:
	.string	"mpu6050_readBit"
.LASF9:
	.string	"long long int"
.LASF35:
	.string	"mpu6050_init"
.LASF43:
	.string	"i2c_start"
.LASF19:
	.string	"bitStart"
.LASF1:
	.string	"long int"
.LASF22:
	.string	"_delay_ms"
.LASF42:
	.string	"mpu6050_readBytes"
.LASF40:
	.string	"gzds"
.LASF47:
	.string	"i2c_stop"
.LASF51:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF16:
	.string	"length"
.LASF5:
	.string	"unsigned char"
.LASF44:
	.string	"i2c_write"
.LASF33:
	.string	"mpu6050_setSleepEnabled"
.LASF39:
	.string	"gyds"
.LASF2:
	.string	"signed char"
.LASF21:
	.string	"_delay_us"
.LASF10:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF38:
	.string	"gxds"
.LASF49:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF32:
	.string	"mpu6050_setSleepDisabled"
.LASF6:
	.string	"int16_t"
.LASF17:
	.string	"data"
.LASF15:
	.string	"regAddr"
.LASF53:
	.string	"buffer"
.LASF37:
	.string	"mpu6050_getConvData"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF18:
	.string	"count"
.LASF31:
	.string	"mpu6050_writeBit"
.LASF23:
	.string	"__ms"
.LASF28:
	.string	"mpu6050_readBits"
.LASF12:
	.string	"__ticks_dc"
.LASF36:
	.string	"mpu6050_getRawData"
.LASF45:
	.string	"i2c_readNak"
.LASF25:
	.string	"mpu6050_writeBytes"
.LASF27:
	.string	"mpu6050_readByte"
.LASF14:
	.string	"__us"
.LASF20:
	.string	"mask"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
