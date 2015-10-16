	.file	"controller.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.limit,"ax",@progbits
.global	limit
	.type	limit, @function
limit:
.LFB7:
	.file 1 "../src/controller.c"
	.loc 1 21 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 22 0
	cp r24,r22
	cpc r25,r23
	brlt .L4
	cp r20,r24
	cpc r21,r25
	brge .L2
	movw r24,r20
.LVL1:
	ret
.LVL2:
.L4:
	movw r24,r22
.LVL3:
.L2:
	.loc 1 25 0
	ret
	.cfi_endproc
.LFE7:
	.size	limit, .-limit
	.section	.text.calcChannel,"ax",@progbits
.global	calcChannel
	.type	calcChannel, @function
calcChannel:
.LFB8:
	.loc 1 28 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	mov r18,r24
	ldi r19,0
	movw r20,r18
	lsl r20
	rol r21
	movw r30,r20
	subi r30,lo8(-(RX))
	sbci r31,hi8(-(RX))
	movw r26,r18
	subi r26,lo8(-(Config))
	sbci r27,hi8(-(Config))
	adiw r26,56
	ld r25,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mul r25,r30
	movw r22,r0
	mul r25,r31
	add r23,r0
	clr __zero_reg__
.LVL5:
	.loc 1 37 0
	cpi r24,lo8(2)
	brne .L7
	.loc 1 38 0
	lds r20,GYRO_RATE+4
	lds r21,GYRO_RATE+4+1
	rjmp .L10
.L7:
	.loc 1 40 0
	movw r30,r20
	subi r30,lo8(-(ANGLE))
	sbci r31,hi8(-(ANGLE))
	ld r20,Z
	ldd r21,Z+1
.L10:
	add r20,r22
	adc r21,r23
.LVL6:
	.loc 1 42 0
	movw r30,r18
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL7:
	movw r26,r30
	subi r26,lo8(-(Config))
	sbci r27,hi8(-(Config))
	adiw r26,38
	ld r18,X
.LVL8:
	ldi r19,0
	movw r26,r20
	call __usmulhisi3
.LVL9:
	.loc 1 44 0
	subi r30,lo8(-(PID))
	sbci r31,hi8(-(PID))
	mov r20,r21
	lsl r21
	sbc r21,r21
.LVL10:
	ld r18,Z
	ldd r19,Z+1
	add r18,r20
	adc r19,r21
	std Z+1,r19
	st Z,r18
	.loc 1 50 0
	ldi r19,12
	1:
	asr r25
	ror r24
	ror r23
	ror r22
	dec r19
	brne 1b
.LVL11:
	.loc 1 51 0
	sbrs r25,7
	rjmp .L9
	.loc 1 51 0 is_stmt 0 discriminator 1
	subi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
.LVL12:
.L9:
	.loc 1 53 0 is_stmt 1
	movw r24,r22
	ret
	.cfi_endproc
.LFE8:
	.size	calcChannel, .-calcChannel
	.section	.text.calcThrottle,"ax",@progbits
.global	calcThrottle
	.type	calcThrottle, @function
calcThrottle:
.LFB9:
	.loc 1 56 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL13:
	.loc 1 58 0
	lds r20,Config+59
	lds r18,RX+6
	lds r19,RX+6+1
	mul r20,r18
	movw r24,r0
	mul r20,r19
	add r25,r0
	clr __zero_reg__
	clr r26
	sbrc r25,7
	com r26
	mov r27,r26
.LVL14:
	.loc 1 59 0
	ldi r23,5
	1:
	asr r27
	ror r26
	ror r25
	ror r24
	dec r23
	brne 1b
.LVL15:
	.loc 1 60 0
	ret
	.cfi_endproc
.LFE9:
	.size	calcThrottle, .-calcThrottle
	.section	.text.controllerCalculate,"ax",@progbits
.global	controllerCalculate
	.type	controllerCalculate, @function
controllerCalculate:
.LFB10:
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 64 0
	ldi r24,0
	call calcChannel
.LVL16:
	neg r25
	neg r24
	sbc r25,__zero_reg__
	sts CONTROL+1,r25
	sts CONTROL,r24
	.loc 1 65 0
	ldi r24,lo8(1)
	call calcChannel
.LVL17:
	sts CONTROL+2+1,r25
	sts CONTROL+2,r24
	.loc 1 66 0
	ldi r24,lo8(2)
	call calcChannel
.LVL18:
	neg r25
	neg r24
	sbc r25,__zero_reg__
	sts CONTROL+4+1,r25
	sts CONTROL+4,r24
	.loc 1 67 0
	call calcThrottle
.LVL19:
	sts CONTROL+6+1,r25
	sts CONTROL+6,r24
	ret
	.cfi_endproc
.LFE10:
	.size	controllerCalculate, .-controllerCalculate
	.section	.text.controllerReset,"ax",@progbits
.global	controllerReset
	.type	controllerReset, @function
controllerReset:
.LFB11:
	.loc 1 71 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 73 0
	ldi r24,lo8(12)
	ldi r30,lo8(PID)
	ldi r31,hi8(PID)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	ret
	.cfi_endproc
.LFE11:
	.size	controllerReset, .-controllerReset
	.section	.bss.PID,"aw",@nobits
	.type	PID, @object
	.size	PID, 12
PID:
	.zero	12
	.comm	CONTROL,8,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/mixer.h"
	.file 4 "../include/pid.h"
	.file 5 "../include/config.h"
	.file 6 "../include/imu.h"
	.file 7 "../include/rx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x610
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF70
	.byte	0x1
	.long	.LASF71
	.long	.LASF72
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
	.byte	0x20
	.long	0xd4
	.uleb128 0x6
	.long	.LASF12
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
	.long	.LASF13
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
	.long	.LASF14
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
	.long	0xed
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.byte	0x1f
	.long	0x3b
	.uleb128 0x9
	.long	0x98
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x3
	.byte	0x16
	.long	0x144
	.uleb128 0xa
	.long	.LASF15
	.byte	0x3
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x3
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.byte	0x1c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x3
	.byte	0x13
	.long	0x15c
	.uleb128 0xc
	.string	"I8"
	.byte	0x3
	.byte	0x15
	.long	0x15c
	.uleb128 0x9
	.long	0xed
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x16c
	.uleb128 0xe
	.long	0x16c
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x28
	.long	0x144
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF23
	.uleb128 0x2
	.long	.LASF24
	.byte	0x3
	.byte	0x33
	.long	0x190
	.uleb128 0xd
	.long	0x173
	.long	0x1a0
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0xe
	.long	0x1e1
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF28
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
	.long	0x1fa
	.uleb128 0x9
	.long	0x1a0
	.uleb128 0xc
	.string	"UI8"
	.byte	0x4
	.byte	0x15
	.long	0x1fa
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x20a
	.uleb128 0xe
	.long	0x16c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x4
	.byte	0x16
	.long	0x1e1
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.long	0x23a
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x1a
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x1b
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x4
	.byte	0x1c
	.long	0x215
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.long	0x286
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x5
	.byte	0x18
	.long	0x245
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x1a
	.long	0x3ea
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x1d
	.long	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x1e
	.long	0x3fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x1f
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x20
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF43
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
	.long	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x2e
	.long	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF51
	.byte	0x5
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF52
	.byte	0x5
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF53
	.byte	0x5
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF54
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
	.long	.LASF55
	.byte	0x5
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF56
	.byte	0x5
	.byte	0x35
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF57
	.byte	0x5
	.byte	0x36
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF58
	.byte	0x5
	.byte	0x37
	.long	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF59
	.byte	0x5
	.byte	0x38
	.long	0x286
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x3fa
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x40a
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x41a
	.uleb128 0xe
	.long	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x20a
	.long	0x42a
	.uleb128 0xe
	.long	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x43a
	.uleb128 0xe
	.long	0x16c
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.byte	0x39
	.long	0x291
	.uleb128 0x10
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.long	0x4d
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x497
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x14
	.long	0x4d
	.long	.LLST0
	.uleb128 0x12
	.string	"low"
	.byte	0x1
	.byte	0x14
	.long	0x4d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x14
	.long	0x4d
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	0x4d
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4e1
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x1b
	.long	0x3b
	.long	.LLST1
	.uleb128 0x14
	.string	"err"
	.byte	0x1
	.byte	0x1d
	.long	0x4d
	.long	.LLST2
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0x1e
	.long	0x71
	.long	.LLST3
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.byte	0x37
	.long	0x5f
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x50c
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0x39
	.long	0x71
	.long	.LLST4
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0x3e
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x568
	.uleb128 0x17
	.long	.LVL16
	.long	0x497
	.long	0x538
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LVL17
	.long	0x497
	.long	0x54b
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.long	.LVL18
	.long	0x497
	.long	0x55e
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	.LVL19
	.long	0x4e1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x46
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xd
	.long	0x23a
	.long	0x58d
	.uleb128 0xe
	.long	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"PID"
	.byte	0x1
	.byte	0x12
	.long	0x57d
	.byte	0x5
	.byte	0x3
	.long	PID
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x5
	.byte	0x3b
	.long	0x43a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4d
	.long	0x5bb
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.string	"RX"
	.byte	0x7
	.byte	0xe
	.long	0x5ab
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4d
	.long	0x5d7
	.uleb128 0xe
	.long	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x6
	.byte	0xe
	.long	0x5c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x6
	.byte	0xf
	.long	0x5c7
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4d
	.long	0x601
	.uleb128 0xe
	.long	0x16c
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF69
	.byte	0x1
	.byte	0x10
	.long	0x5f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	CONTROL
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x62
	.long	.LVL8
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL10
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE8
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
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
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL15
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
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"limit"
.LASF45:
	.string	"ArmingMode"
.LASF31:
	.string	"Error"
.LASF18:
	.string	"Rudder"
.LASF32:
	.string	"pid_state_t"
.LASF42:
	.string	"ACC_zero"
.LASF28:
	.string	"ILimit"
.LASF0:
	.string	"int8_t"
.LASF73:
	.string	"calcThrottle"
.LASF59:
	.string	"Camera"
.LASF65:
	.string	"index"
.LASF21:
	.string	"sizetype"
.LASF34:
	.string	"RollOffset"
.LASF44:
	.string	"SelfLevelMode"
.LASF29:
	.string	"pid_param_t"
.LASF61:
	.string	"value"
.LASF1:
	.string	"uint8_t"
.LASF12:
	.string	"IsMotor"
.LASF36:
	.string	"PitchOffset"
.LASF27:
	.string	"IGain"
.LASF52:
	.string	"LCDContrast"
.LASF20:
	.string	"Flags"
.LASF41:
	.string	"GYRO_zero"
.LASF10:
	.string	"long long int"
.LASF48:
	.string	"ReceiverMode"
.LASF40:
	.string	"RX_chmap"
.LASF8:
	.string	"long int"
.LASF62:
	.string	"high"
.LASF30:
	.string	"Integral"
.LASF67:
	.string	"ANGLE"
.LASF72:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF66:
	.string	"Config"
.LASF71:
	.string	"../src/controller.c"
.LASF35:
	.string	"PitchGain"
.LASF54:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"Aileron"
.LASF47:
	.string	"LinkRollPitch"
.LASF26:
	.string	"PLimit"
.LASF39:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF46:
	.string	"AutoDisarm"
.LASF6:
	.string	"unsigned int"
.LASF60:
	.string	"config_t"
.LASF5:
	.string	"uint16_t"
.LASF19:
	.string	"Offset"
.LASF51:
	.string	"MinThrottle"
.LASF23:
	.string	"char"
.LASF22:
	.string	"mixer_channel_t"
.LASF7:
	.string	"int32_t"
.LASF70:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF49:
	.string	"MixerIndex"
.LASF4:
	.string	"int16_t"
.LASF53:
	.string	"HeightDampening"
.LASF74:
	.string	"controllerCalculate"
.LASF56:
	.string	"PID_SelfLevel"
.LASF25:
	.string	"PGain"
.LASF9:
	.string	"long unsigned int"
.LASF64:
	.string	"calcChannel"
.LASF58:
	.string	"Mixer"
.LASF75:
	.string	"controllerReset"
.LASF37:
	.string	"camera_t"
.LASF24:
	.string	"mixer_t"
.LASF38:
	.string	"signature"
.LASF69:
	.string	"CONTROL"
.LASF33:
	.string	"RollGain"
.LASF13:
	.string	"IsServo"
.LASF14:
	.string	"IsHiRate"
.LASF43:
	.string	"CalibrateFlags"
.LASF55:
	.string	"ServoFilter"
.LASF50:
	.string	"StickScaling"
.LASF68:
	.string	"GYRO_RATE"
.LASF17:
	.string	"Elevator"
.LASF15:
	.string	"Throttle"
.LASF57:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
