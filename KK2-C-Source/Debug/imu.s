	.file	"imu.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.getAccAngle,"ax",@progbits
	.type	getAccAngle, @function
getAccAngle:
.LFB12:
	.file 1 "../src/imu.c"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 30 0
	movw r30,r24
	sbrs r25,7
	rjmp .L2
	clr r30
	clr r31
	sub r30,r24
	sbc r31,r25
.L2:
	asr r31
	ror r30
.LVL1:
	cpi r30,lo8(64)
	brlo .L3
	ldi r30,lo8(63)
.LVL2:
.L3:
.LBB2:
	.loc 1 33 0
	ldi r31,0
	subi r30,lo8(-(convtab))
	sbci r31,hi8(-(convtab))
/* #APP */
 ;  33 "../src/imu.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE2:
	ldi r31,0
	lsl r30
	rol r31
.LVL4:
	.loc 1 34 0
	sbrc r24,0
	.loc 1 34 0 is_stmt 0 discriminator 1
	adiw r30,1
.LVL5:
.L4:
	.loc 1 35 0 is_stmt 1
	sbrs r25,7
	rjmp .L5
	.loc 1 35 0 is_stmt 0 discriminator 1
	neg r31
	neg r30
	sbc r31,__zero_reg__
.LVL6:
.L5:
	.loc 1 37 0 is_stmt 1
	movw r24,r30
.LVL7:
	lsr r25
	mov r25,r24
	clr r24
	ror r25
	ror r24
	ret
	.cfi_endproc
.LFE12:
	.size	getAccAngle, .-getAccAngle
	.section	.text.calcComplementaryAngle,"ax",@progbits
	.type	calcComplementaryAngle, @function
calcComplementaryAngle:
.LFB14:
	.loc 1 49 0
	.cfi_startproc
.LVL8:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 51 0
	mov r20,r24
	ldi r21,0
	lsl r20
	rol r21
	movw r26,r20
	subi r26,lo8(-(ANGLE))
	sbci r27,hi8(-(ANGLE))
	movw r30,r20
	subi r30,lo8(-(GYRO_RATE))
	sbci r31,hi8(-(GYRO_RATE))
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	ld r24,Z
	ldd r25,Z+1
.LVL9:
	add r26,r24
	adc r27,r25
	ldi r18,lo8(-1)
	ldi r19,0
	call __usmulhisi3
.LVL10:
	.loc 1 52 0
	movw r30,r20
	subi r30,lo8(-(ACC_ANGLE))
	sbci r31,hi8(-(ACC_ANGLE))
	ld r16,Z
	ldd r17,Z+1
	clr r18
	sbrc r17,7
	com r18
	mov r19,r18
	add r22,r16
	adc r23,r17
	adc r24,r18
	adc r25,r19
.LVL11:
	.loc 1 53 0
	clr r27
	sbrc r25,7
	dec r27
	mov r26,r25
	mov r25,r24
	mov r24,r23
.LVL12:
	.loc 1 54 0
	sbrs r27,7
	rjmp .L11
	.loc 1 54 0 is_stmt 0 discriminator 1
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL13:
.L11:
/* epilogue start */
	.loc 1 56 0 is_stmt 1
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE14:
	.size	calcComplementaryAngle, .-calcComplementaryAngle
	.section	.text.imuCalculate,"ax",@progbits
.global	imuCalculate
	.type	imuCalculate, @function
imuCalculate:
.LFB17:
	.loc 1 85 0
	.cfi_startproc
	push r8
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r28
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LBB13:
.LBB14:
	.loc 1 67 0
	call ticks
.LVL14:
	lds r8,lastCall.1948
	lds r9,lastCall.1948+1
	lds r10,lastCall.1948+2
	lds r11,lastCall.1948+3
	movw r28,r22
	sub r28,r8
	sbc r29,r9
.LVL15:
	.loc 1 69 0
	lds r24,ACC
	lds r25,ACC+1
	call getAccAngle
.LVL16:
	lds r18,Config+70
	clr r19
	sbrc r18,7
	com r19
	mov r19,r18
	clr r18
	add r18,r24
	adc r19,r25
	sts ACC_ANGLE+1,r19
	sts ACC_ANGLE,r18
	.loc 1 70 0
	lds r24,ACC+2
	lds r25,ACC+2+1
	call getAccAngle
.LVL17:
	lds r18,Config+71
	clr r19
	sbrc r18,7
	com r19
	mov r19,r18
	clr r18
	add r18,r24
	adc r19,r25
	sts ACC_ANGLE+2+1,r19
	sts ACC_ANGLE+2,r18
	.loc 1 71 0
	lds r24,ACC+4
	lds r25,ACC+4+1
	call getAccAngle
.LVL18:
	subi r25,-90
	sts ACC_ANGLE+4+1,r25
	sts ACC_ANGLE+4,r24
.LVL19:
.LBB15:
.LBB16:
	.loc 1 41 0
	lds r26,GYRO
	lds r27,GYRO+1
	movw r18,r28
	call __usmulhisi3
	clr r27
	sbrc r25,7
	com r27
	mov r26,r27
.LVL20:
	.loc 1 42 0
	sbrs r27,7
	rjmp .L13
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL21:
.L13:
	.loc 1 43 0
	sts GYRO_RATE+1,r25
	sts GYRO_RATE,r24
.LVL22:
.LBE16:
.LBE15:
.LBB17:
.LBB18:
	.loc 1 41 0
	lds r26,GYRO+2
	lds r27,GYRO+2+1
	movw r18,r28
	call __usmulhisi3
	clr r27
	sbrc r25,7
	com r27
	mov r26,r27
.LVL23:
	.loc 1 42 0
	sbrs r27,7
	rjmp .L14
.LVL24:
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.LVL25:
.L14:
	.loc 1 43 0
	sts GYRO_RATE+2+1,r25
	sts GYRO_RATE+2,r24
.LVL26:
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 41 0
	lds r26,GYRO+4
	lds r27,GYRO+4+1
	movw r18,r28
.LVL27:
	call __usmulhisi3
	movw r12,r24
	clr r15
	sbrc r13,7
	com r15
	mov r14,r15
.LVL28:
	.loc 1 42 0
	sbrs r15,7
	rjmp .L15
.LVL29:
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
.LVL30:
.L15:
.LBE20:
.LBE19:
	.loc 1 75 0
	sts GYRO_RATE+4+1,r13
	sts GYRO_RATE+4,r12
	.loc 1 77 0
	ldi r24,0
	call calcComplementaryAngle
.LVL31:
	sts ANGLE+1,r25
	sts ANGLE,r24
	.loc 1 78 0
	ldi r24,lo8(1)
	call calcComplementaryAngle
.LVL32:
	sts ANGLE+2+1,r25
	sts ANGLE+2,r24
.LBB21:
.LBB22:
	.loc 1 61 0
	lds r24,ANGLE+4
	lds r25,ANGLE+4+1
	add r24,r12
	adc r25,r13
.LBE22:
.LBE21:
	.loc 1 79 0
	sts ANGLE+4+1,r25
	sts ANGLE+4,r24
	.loc 1 81 0
	add r8,r28
	adc r9,r29
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	sts lastCall.1948,r8
	sts lastCall.1948+1,r9
	sts lastCall.1948+2,r10
	sts lastCall.1948+3,r11
/* epilogue start */
.LBE14:
.LBE13:
	.loc 1 87 0
	pop r29
	pop r28
.LVL33:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE17:
	.size	imuCalculate, .-imuCalculate
	.section	.bss.lastCall.1948,"aw",@nobits
	.type	lastCall.1948, @object
	.size	lastCall.1948, 4
lastCall.1948:
	.zero	4
	.section	.progmem.data.convtab,"a",@progbits
	.type	convtab, @object
	.size	convtab, 64
convtab:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	46
	.byte	47
	.byte	48
	.byte	50
	.byte	51
	.byte	53
	.byte	54
	.byte	56
	.byte	57
	.byte	59
	.byte	61
	.byte	63
	.byte	65
	.byte	67
	.byte	69
	.byte	72
	.byte	76
	.byte	80
	.byte	90
	.comm	GYRO_RATE,6,1
	.comm	ACC_ANGLE,6,1
	.comm	ANGLE,6,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/mixer.h"
	.file 4 "../include/pid.h"
	.file 5 "../include/config.h"
	.file 6 "../include/sensors.h"
	.file 7 "../include/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x70c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF74
	.byte	0x1
	.long	.LASF75
	.long	.LASF76
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0x7d
	.long	0x7c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0x7e
	.long	0x8e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0x20
	.long	0xdf
	.uleb128 0x6
	.long	.LASF13
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
	.long	.LASF14
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
	.long	.LASF15
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
	.long	0xf8
	.uleb128 0x8
	.long	.LASF21
	.byte	0x3
	.byte	0x1f
	.long	0x3b
	.uleb128 0x9
	.long	0xa3
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x3
	.byte	0x16
	.long	0x14f
	.uleb128 0xa
	.long	.LASF16
	.byte	0x3
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF20
	.byte	0x3
	.byte	0x1c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x3
	.byte	0x13
	.long	0x167
	.uleb128 0xc
	.string	"I8"
	.byte	0x3
	.byte	0x15
	.long	0x167
	.uleb128 0x9
	.long	0xf8
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x177
	.uleb128 0xe
	.long	0x177
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF22
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3
	.byte	0x28
	.long	0x14f
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF24
	.uleb128 0x2
	.long	.LASF25
	.byte	0x3
	.byte	0x33
	.long	0x19b
	.uleb128 0xd
	.long	0x17e
	.long	0x1ab
	.uleb128 0xe
	.long	0x177
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0xe
	.long	0x1ec
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF29
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
	.long	0x205
	.uleb128 0x9
	.long	0x1ab
	.uleb128 0xc
	.string	"UI8"
	.byte	0x4
	.byte	0x15
	.long	0x205
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x215
	.uleb128 0xe
	.long	0x177
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x4
	.byte	0x16
	.long	0x1ec
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.long	0x261
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5
	.byte	0x18
	.long	0x220
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x1a
	.long	0x3c5
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x1d
	.long	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x1e
	.long	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x1f
	.long	0x3e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x20
	.long	0x3e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF41
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
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x2e
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF51
	.byte	0x5
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF52
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
	.long	.LASF53
	.byte	0x5
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x35
	.long	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF55
	.byte	0x5
	.byte	0x36
	.long	0x405
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF56
	.byte	0x5
	.byte	0x37
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF57
	.byte	0x5
	.byte	0x38
	.long	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x3d5
	.uleb128 0xe
	.long	0x177
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x3e5
	.uleb128 0xe
	.long	0x177
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x3f5
	.uleb128 0xe
	.long	0x177
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x215
	.long	0x405
	.uleb128 0xe
	.long	0x177
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x415
	.uleb128 0xe
	.long	0x177
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x5
	.byte	0x39
	.long	0x26c
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0x4d
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x496
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x1c
	.long	0x4d
	.long	.LLST0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x1e
	.long	0x3b
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF60
	.byte	0x1
	.byte	0x21
	.long	0x4d
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x21
	.long	0x5f
	.long	.LLST2
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x4d
	.long	.LFB14
	.long	.LFE14
	.long	.LLST4
	.byte	0x1
	.long	0x4d0
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.long	.LLST5
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x32
	.long	0x71
	.long	.LLST6
	.byte	0
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0x4f2
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0x42
	.long	0x83
	.uleb128 0x19
	.string	"dt"
	.byte	0x1
	.byte	0x43
	.long	0x5f
	.byte	0
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x4d
	.byte	0x1
	.long	0x522
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.byte	0x27
	.long	0x3b
	.uleb128 0x1c
	.string	"dt"
	.byte	0x1
	.byte	0x27
	.long	0x5f
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.byte	0x29
	.long	0x71
	.byte	0
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x1
	.byte	0x3a
	.long	0x4d
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x54
	.long	.LFB17
	.long	.LFE17
	.long	.LLST7
	.byte	0x1
	.long	0x66d
	.uleb128 0x1f
	.long	0x4d0
	.long	.LBB13
	.long	.LBE13
	.byte	0x1
	.byte	0x56
	.uleb128 0x14
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x20
	.long	0x4e7
	.long	.LLST8
	.uleb128 0x21
	.long	0x4dc
	.byte	0x5
	.byte	0x3
	.long	lastCall.1948
	.uleb128 0x22
	.long	0x4f2
	.long	.LBB15
	.long	.LBE15
	.byte	0x1
	.byte	0x49
	.long	0x5a9
	.uleb128 0x23
	.long	0x50e
	.long	.LLST9
	.uleb128 0x24
	.long	0x503
	.byte	0
	.uleb128 0x14
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x20
	.long	0x518
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x4f2
	.long	.LBB17
	.long	.LBE17
	.byte	0x1
	.byte	0x4a
	.long	0x5df
	.uleb128 0x23
	.long	0x50e
	.long	.LLST11
	.uleb128 0x24
	.long	0x503
	.byte	0x1
	.uleb128 0x14
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x20
	.long	0x518
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x4f2
	.long	.LBB19
	.long	.LBE19
	.byte	0x1
	.byte	0x4b
	.long	0x615
	.uleb128 0x23
	.long	0x50e
	.long	.LLST13
	.uleb128 0x24
	.long	0x503
	.byte	0x2
	.uleb128 0x14
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x20
	.long	0x518
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x522
	.long	.LBB21
	.long	.LBE21
	.byte	0x1
	.byte	0x4f
	.uleb128 0x26
	.long	.LVL14
	.long	0x700
	.uleb128 0x26
	.long	.LVL16
	.long	0x420
	.uleb128 0x26
	.long	.LVL17
	.long	0x420
	.uleb128 0x26
	.long	.LVL18
	.long	0x420
	.uleb128 0x27
	.long	.LVL31
	.long	0x496
	.long	0x65b
	.uleb128 0x28
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.long	.LVL32
	.long	0x496
	.uleb128 0x28
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x67d
	.uleb128 0xe
	.long	0x177
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x13
	.long	0x68e
	.byte	0x5
	.byte	0x3
	.long	convtab
	.uleb128 0x2a
	.long	0x66d
	.uleb128 0x2b
	.long	.LASF69
	.byte	0x5
	.byte	0x3b
	.long	0x415
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4d
	.long	0x6b0
	.uleb128 0xe
	.long	0x177
	.byte	0x2
	.byte	0
	.uleb128 0x2b
	.long	.LASF70
	.byte	0x6
	.byte	0xe
	.long	0x6a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"ACC"
	.byte	0x6
	.byte	0x10
	.long	0x6a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x1
	.byte	0xf
	.long	0x6a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ANGLE
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x1
	.byte	0x10
	.long	0x6a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ACC_ANGLE
	.uleb128 0x2d
	.long	.LASF73
	.byte	0x1
	.byte	0x11
	.long	0x6a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	GYRO_RATE
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF81
	.byte	0x7
	.byte	0x15
	.long	0x83
	.byte	0x1
	.uleb128 0x2f
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x14
	.byte	0x8e
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x3f
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.word	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x1d
	.byte	0x8e
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x3f
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.word	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.long	convtab
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST4:
	.long	.LFB14
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
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL12
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
	.long	.LVL12
	.long	.LVL13
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LFB17
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI11
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL24
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL27
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL31-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31-1
	.long	.LVL33
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL19
	.long	.LVL24
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL27
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL31-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31-1
	.long	.LVL33
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL21
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL22
	.long	.LVL24
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL27
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL31-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31-1
	.long	.LVL33
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL23
	.long	.LVL25
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL26
	.long	.LVL31-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31-1
	.long	.LVL33
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL28
	.long	.LVL30
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
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"ArmingMode"
.LASF19:
	.string	"Rudder"
.LASF40:
	.string	"ACC_zero"
.LASF29:
	.string	"ILimit"
.LASF0:
	.string	"int8_t"
.LASF57:
	.string	"Camera"
.LASF59:
	.string	"index"
.LASF65:
	.string	"input"
.LASF72:
	.string	"ACC_ANGLE"
.LASF22:
	.string	"sizetype"
.LASF32:
	.string	"RollOffset"
.LASF42:
	.string	"SelfLevelMode"
.LASF80:
	.string	"imuCalculate"
.LASF30:
	.string	"pid_param_t"
.LASF1:
	.string	"uint8_t"
.LASF64:
	.string	"calcComplementaryAngle"
.LASF13:
	.string	"IsMotor"
.LASF34:
	.string	"PitchOffset"
.LASF28:
	.string	"IGain"
.LASF50:
	.string	"LCDContrast"
.LASF21:
	.string	"Flags"
.LASF77:
	.string	"imuComplementary"
.LASF60:
	.string	"conv"
.LASF39:
	.string	"GYRO_zero"
.LASF11:
	.string	"long long int"
.LASF46:
	.string	"ReceiverMode"
.LASF38:
	.string	"RX_chmap"
.LASF8:
	.string	"long int"
.LASF79:
	.string	"calcYawAngle"
.LASF71:
	.string	"ANGLE"
.LASF63:
	.string	"getAccAngle"
.LASF76:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF69:
	.string	"Config"
.LASF44:
	.string	"AutoDisarm"
.LASF33:
	.string	"PitchGain"
.LASF61:
	.string	"__addr16"
.LASF52:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"Aileron"
.LASF45:
	.string	"LinkRollPitch"
.LASF27:
	.string	"PLimit"
.LASF37:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF66:
	.string	"axis"
.LASF12:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF58:
	.string	"config_t"
.LASF5:
	.string	"uint16_t"
.LASF62:
	.string	"__result"
.LASF81:
	.string	"ticks"
.LASF20:
	.string	"Offset"
.LASF49:
	.string	"MinThrottle"
.LASF24:
	.string	"char"
.LASF23:
	.string	"mixer_channel_t"
.LASF7:
	.string	"int32_t"
.LASF74:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF47:
	.string	"MixerIndex"
.LASF4:
	.string	"int16_t"
.LASF51:
	.string	"HeightDampening"
.LASF75:
	.string	"../src/imu.c"
.LASF67:
	.string	"lastCall"
.LASF54:
	.string	"PID_SelfLevel"
.LASF26:
	.string	"PGain"
.LASF10:
	.string	"long unsigned int"
.LASF56:
	.string	"Mixer"
.LASF35:
	.string	"camera_t"
.LASF25:
	.string	"mixer_t"
.LASF78:
	.string	"calcGyroRate"
.LASF36:
	.string	"signature"
.LASF31:
	.string	"RollGain"
.LASF14:
	.string	"IsServo"
.LASF15:
	.string	"IsHiRate"
.LASF41:
	.string	"CalibrateFlags"
.LASF53:
	.string	"ServoFilter"
.LASF48:
	.string	"StickScaling"
.LASF73:
	.string	"GYRO_RATE"
.LASF18:
	.string	"Elevator"
.LASF70:
	.string	"GYRO"
.LASF68:
	.string	"convtab"
.LASF16:
	.string	"Throttle"
.LASF55:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
