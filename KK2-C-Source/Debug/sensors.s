	.file	"sensors.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sensorsRead,"ax",@progbits
.global	sensorsRead
	.type	sensorsRead, @function
sensorsRead:
.LFB11:
	.file 1 "../src/sensors.c"
	.loc 1 26 0
	.cfi_startproc
	push r14
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI6:
	.cfi_def_cfa_register 28
	sbiw r28,12
.LCFI7:
	.cfi_def_cfa_offset 20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 18 */
.L__stack_usage = 18
	.loc 1 27 0
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	.loc 1 28 0
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	.loc 1 29 0
	std Y+8,__zero_reg__
	std Y+7,__zero_reg__
	.loc 1 30 0
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	.loc 1 31 0
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	.loc 1 32 0
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	.loc 1 33 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	movw r14,r20
	movw r16,r28
	subi r16,-3
	sbci r17,-1
	movw r18,r28
	subi r18,-5
	sbci r19,-1
	subi r20,-6
	sbci r21,-1
	movw r22,r28
	subi r22,-9
	sbci r23,-1
	movw r24,r28
	adiw r24,11
	call mpu6050_getRawData
.LVL0:
	.loc 1 35 0
	ldd r18,Y+5
	ldd r19,Y+6
	sts GYRO_raw+2+1,r19
	sts GYRO_raw+2,r18
	.loc 1 36 0
	lds r24,Config+27
	lds r25,Config+27+1
	sub r24,r18
	sbc r25,r19
	.loc 1 38 0
	movw r18,r24
	subi r18,-2
	sbci r19,-1
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L2
	.loc 1 36 0
	sts GYRO+2+1,r25
	sts GYRO+2,r24
	rjmp .L3
.L2:
	.loc 1 38 0 discriminator 1
	sts GYRO+2+1,__zero_reg__
	sts GYRO+2,__zero_reg__
.L3:
	.loc 1 41 0
	ldd r18,Y+3
	ldd r19,Y+4
	sts GYRO_raw+1,r19
	sts GYRO_raw,r18
	.loc 1 42 0
	lds r24,Config+25
	lds r25,Config+25+1
	sub r24,r18
	sbc r25,r19
	.loc 1 44 0
	movw r18,r24
	subi r18,-2
	sbci r19,-1
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L4
	.loc 1 42 0
	sts GYRO+1,r25
	sts GYRO,r24
	rjmp .L5
.L4:
	.loc 1 44 0 discriminator 1
	sts GYRO+1,__zero_reg__
	sts GYRO,__zero_reg__
.L5:
	.loc 1 47 0
	ldd r24,Y+1
	ldd r25,Y+2
	sts GYRO_raw+4+1,r25
	sts GYRO_raw+4,r24
	.loc 1 48 0
	lds r18,Config+29
	lds r19,Config+29+1
	sub r24,r18
	sbc r25,r19
	.loc 1 50 0
	movw r18,r24
	subi r18,-2
	sbci r19,-1
	cpi r18,5
	cpc r19,__zero_reg__
	brlo .L6
	.loc 1 48 0
	sts GYRO+4+1,r25
	sts GYRO+4,r24
	rjmp .L7
.L6:
	.loc 1 50 0 discriminator 1
	sts GYRO+4+1,__zero_reg__
	sts GYRO+4,__zero_reg__
.L7:
	.loc 1 53 0
	ldd r24,Y+11
	ldd r25,Y+12
	sts ACC_raw+2+1,r25
	sts ACC_raw+2,r24
	.loc 1 54 0
	lds r18,Config+33
	lds r19,Config+33+1
	sub r24,r18
	sbc r25,r19
	sts ACC+2+1,r25
	sts ACC+2,r24
	.loc 1 55 0
	ldd r24,Y+9
	ldd r25,Y+10
	sts ACC_raw+1,r25
	sts ACC_raw,r24
	.loc 1 56 0
	lds r18,Config+31
	lds r19,Config+31+1
	sub r24,r18
	sbc r25,r19
	sts ACC+1,r25
	sts ACC,r24
	.loc 1 57 0
	ldd r24,Y+7
	ldd r25,Y+8
	sts ACC_raw+4+1,r25
	sts ACC_raw+4,r24
	.loc 1 58 0
	lds r18,Config+35
	lds r19,Config+35+1
	sub r24,r18
	sbc r25,r19
	sts ACC+4+1,r25
	sts ACC+4,r24
	.loc 1 60 0
	ldi r24,lo8(3)
	call adcGet
.LVL1:
	ldi r18,lo8(100)
	movw r20,r24
	mul r18,r20
	movw r24,r0
	mul r18,r21
	add r25,r0
	clr __zero_reg__
	ldi r22,lo8(120)
	ldi r23,lo8(1)
	call __udivmodhi4
	sts BATT,r22
/* epilogue start */
	.loc 1 70 0
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
	ret
	.cfi_endproc
.LFE11:
	.size	sensorsRead, .-sensorsRead
	.section	.text.sensorsCalibrate,"ax",@progbits
.global	sensorsCalibrate
	.type	sensorsCalibrate, @function
sensorsCalibrate:
.LFB12:
	.loc 1 73 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 74 0
	call sensorsRead
.LVL2:
	.loc 1 75 0
	ldi r24,lo8(6)
	ldi r30,lo8(GYRO_raw)
	ldi r31,hi8(GYRO_raw)
	ldi r26,lo8(Config+25)
	ldi r27,hi8(Config+25)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 76 0
	ldi r24,lo8(6)
	ldi r30,lo8(ACC_raw)
	ldi r31,hi8(ACC_raw)
	ldi r26,lo8(Config+31)
	ldi r27,hi8(Config+31)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 78 0
	ldi r24,lo8(1)
	sts Config+37,r24
	ret
	.cfi_endproc
.LFE12:
	.size	sensorsCalibrate, .-sensorsCalibrate
	.comm	BATT,1,1
	.comm	ACC,6,1
	.comm	GYRO,6,1
	.comm	ACC_raw,6,1
	.comm	GYRO_raw,6,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/mixer.h"
	.file 4 "../include/pid.h"
	.file 5 "../include/config.h"
	.file 6 "../src/../mpu6050/mpu6050.h"
	.file 7 "../include/adc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5af
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF66
	.byte	0x1
	.long	.LASF67
	.long	.LASF68
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0x20
	.long	0xc9
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x22
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x23
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x24
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x3
	.byte	0x1d
	.long	0xe2
	.uleb128 0x8
	.long	.LASF19
	.byte	0x3
	.byte	0x1f
	.long	0x3b
	.uleb128 0x9
	.long	0x8d
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x3
	.byte	0x16
	.long	0x139
	.uleb128 0xa
	.long	.LASF14
	.byte	0x3
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x3
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF16
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x1c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x3
	.byte	0x13
	.long	0x151
	.uleb128 0xc
	.string	"I8"
	.byte	0x3
	.byte	0x15
	.long	0x151
	.uleb128 0x9
	.long	0xe2
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x161
	.uleb128 0xe
	.long	0x161
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF20
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3
	.byte	0x28
	.long	0x139
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF22
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3
	.byte	0x33
	.long	0x185
	.uleb128 0xd
	.long	0x168
	.long	0x195
	.uleb128 0xe
	.long	0x161
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0xe
	.long	0x1d6
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.long	0x1ef
	.uleb128 0x9
	.long	0x195
	.uleb128 0xc
	.string	"UI8"
	.byte	0x4
	.byte	0x15
	.long	0x1ef
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x1ff
	.uleb128 0xe
	.long	0x161
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x4
	.byte	0x16
	.long	0x1d6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.long	0x24b
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0x18
	.long	0x20a
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x1a
	.long	0x3af
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x1d
	.long	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x1e
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x1f
	.long	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x20
	.long	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x21
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xf
	.string	"PID"
	.byte	0x5
	.byte	0x22
	.long	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x2e
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xf
	.string	"LVA"
	.byte	0x5
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF51
	.byte	0x5
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF52
	.byte	0x5
	.byte	0x35
	.long	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF53
	.byte	0x5
	.byte	0x36
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x37
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF55
	.byte	0x5
	.byte	0x38
	.long	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x3bf
	.uleb128 0xe
	.long	0x161
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x3cf
	.uleb128 0xe
	.long	0x161
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x3df
	.uleb128 0xe
	.long	0x161
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x1ff
	.long	0x3ef
	.uleb128 0xe
	.long	0x161
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x3ff
	.uleb128 0xe
	.long	0x161
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.byte	0x39
	.long	0x256
	.uleb128 0x10
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x19
	.long	.LFB11
	.long	.LFE11
	.long	.LLST0
	.byte	0x1
	.long	0x4d1
	.uleb128 0x11
	.string	"ax"
	.byte	0x1
	.byte	0x1b
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 11
	.uleb128 0x11
	.string	"ay"
	.byte	0x1
	.byte	0x1c
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 9
	.uleb128 0x11
	.string	"az"
	.byte	0x1
	.byte	0x1d
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 7
	.uleb128 0x11
	.string	"gx"
	.byte	0x1
	.byte	0x1e
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x11
	.string	"gy"
	.byte	0x1
	.byte	0x1f
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x11
	.string	"gz"
	.byte	0x1
	.byte	0x20
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x12
	.long	.LVL0
	.long	0x56b
	.long	0x4c1
	.uleb128 0x13
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 8
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
	.long	.LVL1
	.long	0x59e
	.uleb128 0x13
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x48
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4f4
	.uleb128 0x16
	.long	.LVL2
	.long	0x40a
	.byte	0
	.uleb128 0x17
	.long	.LASF59
	.byte	0x5
	.byte	0x3b
	.long	0x3ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.byte	0x11
	.long	0x3cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	GYRO_raw
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x11
	.long	0x3cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ACC_raw
	.uleb128 0xd
	.long	0x4d
	.long	0x535
	.uleb128 0xe
	.long	0x161
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x12
	.long	0x525
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	GYRO
	.uleb128 0x19
	.string	"ACC"
	.byte	0x1
	.byte	0x12
	.long	0x525
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ACC
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x13
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	BATT
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF64
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.long	0x598
	.uleb128 0x1b
	.long	0x598
	.uleb128 0x1b
	.long	0x598
	.uleb128 0x1b
	.long	0x598
	.uleb128 0x1b
	.long	0x598
	.uleb128 0x1b
	.long	0x598
	.uleb128 0x1b
	.long	0x598
	.byte	0
	.uleb128 0x1c
	.byte	0x2
	.long	0x4d
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF65
	.byte	0x7
	.byte	0x10
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.uleb128 0x1b
	.long	0x3b
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB11
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
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	.LCFI7
	.long	.LFE11
	.word	0x2
	.byte	0x8c
	.sleb128 20
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"BATT"
.LASF58:
	.string	"sensorsCalibrate"
.LASF41:
	.string	"ArmingMode"
.LASF17:
	.string	"Rudder"
.LASF38:
	.string	"ACC_zero"
.LASF27:
	.string	"ILimit"
.LASF0:
	.string	"int8_t"
.LASF67:
	.string	"../src/sensors.c"
.LASF55:
	.string	"Camera"
.LASF20:
	.string	"sizetype"
.LASF61:
	.string	"ACC_raw"
.LASF30:
	.string	"RollOffset"
.LASF40:
	.string	"SelfLevelMode"
.LASF28:
	.string	"pid_param_t"
.LASF1:
	.string	"uint8_t"
.LASF11:
	.string	"IsMotor"
.LASF32:
	.string	"PitchOffset"
.LASF26:
	.string	"IGain"
.LASF48:
	.string	"LCDContrast"
.LASF19:
	.string	"Flags"
.LASF37:
	.string	"GYRO_zero"
.LASF9:
	.string	"long long int"
.LASF44:
	.string	"ReceiverMode"
.LASF36:
	.string	"RX_chmap"
.LASF7:
	.string	"long int"
.LASF68:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF59:
	.string	"Config"
.LASF42:
	.string	"AutoDisarm"
.LASF31:
	.string	"PitchGain"
.LASF50:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF15:
	.string	"Aileron"
.LASF43:
	.string	"LinkRollPitch"
.LASF25:
	.string	"PLimit"
.LASF35:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF56:
	.string	"config_t"
.LASF5:
	.string	"uint16_t"
.LASF65:
	.string	"adcGet"
.LASF18:
	.string	"Offset"
.LASF47:
	.string	"MinThrottle"
.LASF22:
	.string	"char"
.LASF21:
	.string	"mixer_channel_t"
.LASF66:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF45:
	.string	"MixerIndex"
.LASF4:
	.string	"int16_t"
.LASF49:
	.string	"HeightDampening"
.LASF57:
	.string	"sensorsRead"
.LASF52:
	.string	"PID_SelfLevel"
.LASF24:
	.string	"PGain"
.LASF8:
	.string	"long unsigned int"
.LASF54:
	.string	"Mixer"
.LASF60:
	.string	"GYRO_raw"
.LASF33:
	.string	"camera_t"
.LASF23:
	.string	"mixer_t"
.LASF34:
	.string	"signature"
.LASF29:
	.string	"RollGain"
.LASF12:
	.string	"IsServo"
.LASF13:
	.string	"IsHiRate"
.LASF64:
	.string	"mpu6050_getRawData"
.LASF39:
	.string	"CalibrateFlags"
.LASF51:
	.string	"ServoFilter"
.LASF46:
	.string	"StickScaling"
.LASF16:
	.string	"Elevator"
.LASF62:
	.string	"GYRO"
.LASF14:
	.string	"Throttle"
.LASF53:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
