	.file	"mixer.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mixerInit,"ax",@progbits
.global	mixerInit
	.type	mixerInit, @function
mixerInit:
.LFB8:
	.file 1 "../src/mixer.c"
	.loc 1 26 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE8:
	.size	mixerInit, .-mixerInit
	.section	.text.mixerLoadModel,"ax",@progbits
.global	mixerLoadModel
	.type	mixerLoadModel, @function
mixerLoadModel:
.LFB9:
	.loc 1 31 0
	.cfi_startproc
.LVL0:
	.loc 1 31 0
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
.LBB2:
	.loc 1 34 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
.LVL1:
	subi r30,lo8(-(modelTable))
	sbci r31,hi8(-(modelTable))
.LVL2:
/* #APP */
 ;  34 "../src/mixer.c" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE2:
.LBB3:
	.loc 1 35 0
	movw r30,r22
	adiw r30,2
.LVL4:
/* #APP */
 ;  35 "../src/mixer.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBE3:
	.loc 1 36 0
	ldi r24,lo8(48)
	ldi r18,lo8(Config+72)
	ldi r19,hi8(Config+72)
	movw r26,r18
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	.loc 1 37 0
	mov r20,r30
	lsl r20
	add r20,r30
	lsl r20
	ldi r21,0
	subi r22,-3
	sbci r23,-1
.LVL6:
	movw r24,r18
	call memcpy_P
.LVL7:
	.loc 1 38 0
	sts Config+55,r28
/* epilogue start */
	.loc 1 39 0
	pop r28
.LVL8:
	ret
	.cfi_endproc
.LFE9:
	.size	mixerLoadModel, .-mixerLoadModel
	.section	.text.mixerCalculate,"ax",@progbits
.global	mixerCalculate
	.type	mixerCalculate, @function
mixerCalculate:
.LFB10:
	.loc 1 42 0
	.cfi_startproc
	push r4
.LCFI1:
	.cfi_def_cfa_offset 3
	.cfi_offset 4, -2
	push r5
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 5, -3
	push r6
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 6, -4
	push r7
.LCFI4:
	.cfi_def_cfa_offset 6
	.cfi_offset 7, -5
	push r9
.LCFI5:
	.cfi_def_cfa_offset 7
	.cfi_offset 9, -6
	push r10
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 10, -7
	push r11
.LCFI7:
	.cfi_def_cfa_offset 9
	.cfi_offset 11, -8
	push r12
.LCFI8:
	.cfi_def_cfa_offset 10
	.cfi_offset 12, -9
	push r13
.LCFI9:
	.cfi_def_cfa_offset 11
	.cfi_offset 13, -10
	push r14
.LCFI10:
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -11
	push r15
.LCFI11:
	.cfi_def_cfa_offset 13
	.cfi_offset 15, -12
	push r16
.LCFI12:
	.cfi_def_cfa_offset 14
	.cfi_offset 16, -13
	push r17
.LCFI13:
	.cfi_def_cfa_offset 15
	.cfi_offset 17, -14
	push r28
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_offset 28, -15
	push r29
.LCFI15:
	.cfi_def_cfa_offset 17
	.cfi_offset 29, -16
/* prologue: function */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
.LVL9:
	ldi r28,lo8(Config+77)
	ldi r29,hi8(Config+77)
	ldi r19,lo8(MIXER)
	mov r10,r19
	ldi r19,hi8(MIXER)
	mov r11,r19
	.loc 1 42 0
	ldi r16,0
	ldi r17,0
.LBB4:
	.loc 1 51 0
	ldi r20,lo8(6)
	mov r9,r20
.LVL10:
.L8:
	.loc 1 47 0
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L4
	.loc 1 48 0
	movw r30,r10
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L5
.L4:
	.loc 1 51 0
	mul r9,r16
	movw r30,r0
	mul r9,r17
	add r31,r0
	clr __zero_reg__
	subi r30,lo8(-(Config+77))
	sbci r31,hi8(-(Config+77))
	ld r24,Z
	sbrs r24,1
	rjmp .L9
	.loc 1 52 0
	ldi r18,lo8(-92)
	mov r4,r18
	clr r5
	inc r5
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	rjmp .L6
.L9:
	.loc 1 54 0
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
.L6:
.LVL11:
	.loc 1 56 0
	lds r18,CONTROL
	lds r19,CONTROL+1
	movw r30,r28
	sbiw r30,4
	ld r26,Z
	clr r27
	sbrc r26,7
	com r27
	call __mulhisi3
	movw r12,r22
	movw r14,r24
	add r12,r4
	adc r13,r5
	adc r14,r6
	adc r15,r7
.LVL12:
	.loc 1 57 0
	lds r18,CONTROL+2
	lds r19,CONTROL+2+1
	adiw r30,1
	ld r26,Z
	clr r27
	sbrc r26,7
	com r27
	call __mulhisi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.LVL13:
	.loc 1 58 0
	lds r18,CONTROL+4
	lds r19,CONTROL+4+1
	adiw r30,1
	ld r26,Z
	clr r27
	sbrc r26,7
	com r27
	call __mulhisi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.LVL14:
	.loc 1 59 0
	lds r18,CONTROL+6
	lds r19,CONTROL+6+1
	sbiw r30,3
	ld r26,Z
	clr r27
	sbrc r26,7
	com r27
	call __mulhisi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.LVL15:
	adiw r30,4
	.loc 1 60 0
	ld r26,Z
	clr r27
	sbrc r26,7
	com r27
	ldi r18,lo8(12)
	ldi r19,lo8(1)
	call __usmulhisi3
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.LVL16:
	.loc 1 61 0
	ldi r25,5
	1:
	asr r15
	ror r14
	ror r13
	ror r12
	dec r25
	brne 1b
	movw r24,r12
	subi r24,-76
	sbci r25,-5
	ldi r20,lo8(52)
	ldi r21,lo8(8)
	ldi r22,lo8(-124)
	ldi r23,lo8(3)
	call limit
.LVL17:
	movw r30,r10
	std Z+1,r25
	st Z,r24
.L5:
.LVL18:
	subi r16,-1
	sbci r17,-1
.LVL19:
	adiw r28,6
	ldi r31,2
	add r10,r31
	adc r11,__zero_reg__
	.loc 1 45 0
	cpi r16,8
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L8
/* epilogue start */
.LBE4:
	.loc 1 64 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL20:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.cfi_endproc
.LFE10:
	.size	mixerCalculate, .-mixerCalculate
	.section	.text.mixerOutput,"ax",@progbits
.global	mixerOutput
	.type	mixerOutput, @function
mixerOutput:
.LFB11:
	.loc 1 67 0
	.cfi_startproc
	push r15
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI18:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI19:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI20:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL21:
	ldi r16,lo8(MIXER)
	ldi r17,hi8(MIXER)
	.loc 1 67 0
	ldi r28,0
	ldi r29,0
.LBB5:
	.loc 1 70 0
	ldi r21,lo8(6)
	mov r15,r21
.LVL22:
.L18:
	mov r24,r28
.LVL23:
	mul r15,r28
	movw r30,r0
	mul r15,r29
	add r31,r0
	clr __zero_reg__
	subi r30,lo8(-(Config+77))
	sbci r31,hi8(-(Config+77))
	ld r25,Z
	sbrs r25,1
	rjmp .L12
	.loc 1 71 0
	movw r30,r16
	ld r22,Z
	ldd r23,Z+1
	rjmp .L22
.L12:
	.loc 1 72 0
	sbrs r25,0
	rjmp .L14
	.loc 1 74 0
	lds r25,State
	tst r25
	breq .L15
	.loc 1 74 0 is_stmt 0 discriminator 1
	lds r25,State+1
	cpse r25,__zero_reg__
	rjmp .L15
	.loc 1 75 0 is_stmt 1
	lds r18,Config+60
	ldi r31,lo8(10)
	mul r18,r31
	movw r18,r0
	clr __zero_reg__
	subi r18,-76
	sbci r19,-5
	movw r30,r16
	ld r22,Z
	ldd r23,Z+1
	cp r22,r18
	cpc r23,r19
	brsh .L22
	movw r22,r18
	rjmp .L22
.L15:
	.loc 1 77 0
	ldi r22,lo8(76)
	ldi r23,lo8(4)
	rjmp .L22
.L14:
	.loc 1 80 0
	ldi r22,0
	ldi r23,0
	mov r24,r28
.L22:
	call pwmWrite
.LVL24:
	adiw r28,1
.LVL25:
	subi r16,-2
	sbci r17,-1
	.loc 1 68 0
	cpi r28,8
	cpc r29,__zero_reg__
	brne .L18
/* epilogue start */
.LBE5:
	.loc 1 82 0
	pop r29
	pop r28
.LVL26:
	pop r17
	pop r16
	pop r15
	ret
	.cfi_endproc
.LFE11:
	.size	mixerOutput, .-mixerOutput
	.comm	MIXER,16,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/mixer.h"
	.file 4 "../include/pid.h"
	.file 5 "../include/config.h"
	.file 6 "../include/global.h"
	.file 7 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h"
	.file 8 "../include/controller.h"
	.file 9 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.file 10 "../include/pwm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x766
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF88
	.byte	0x1
	.long	.LASF89
	.long	.LASF90
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
	.uleb128 0x5
	.byte	0x3
	.byte	0x3
	.byte	0x2b
	.long	0x1b1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x3
	.byte	0x2d
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x3
	.byte	0x2e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF25
	.byte	0x3
	.byte	0x2f
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x1b7
	.uleb128 0x10
	.long	0x1bc
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF26
	.uleb128 0xd
	.long	0x173
	.long	0x1d2
	.uleb128 0x11
	.long	0x16c
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x3
	.byte	0x30
	.long	0x17e
	.uleb128 0x2
	.long	.LASF28
	.byte	0x3
	.byte	0x33
	.long	0x1e8
	.uleb128 0xd
	.long	0x173
	.long	0x1f8
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0xe
	.long	0x239
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF32
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
	.long	0x252
	.uleb128 0x9
	.long	0x1f8
	.uleb128 0xc
	.string	"UI8"
	.byte	0x4
	.byte	0x15
	.long	0x252
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x262
	.uleb128 0xe
	.long	0x16c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x4
	.byte	0x16
	.long	0x239
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.long	0x2ae
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x5
	.byte	0x18
	.long	0x26d
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x1a
	.long	0x412
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x1d
	.long	0x412
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x1e
	.long	0x422
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x1f
	.long	0x432
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x20
	.long	0x432
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x21
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x12
	.string	"PID"
	.byte	0x5
	.byte	0x22
	.long	0x442
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF51
	.byte	0x5
	.byte	0x2e
	.long	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF52
	.byte	0x5
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF53
	.byte	0x5
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF55
	.byte	0x5
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x12
	.string	"LVA"
	.byte	0x5
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF56
	.byte	0x5
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF57
	.byte	0x5
	.byte	0x35
	.long	0x262
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF58
	.byte	0x5
	.byte	0x36
	.long	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF59
	.byte	0x5
	.byte	0x37
	.long	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF60
	.byte	0x5
	.byte	0x38
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x422
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x432
	.uleb128 0xe
	.long	0x16c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x5f
	.long	0x442
	.uleb128 0xe
	.long	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x262
	.long	0x452
	.uleb128 0xe
	.long	0x16c
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x462
	.uleb128 0xe
	.long	0x16c
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0x39
	.long	0x2b9
	.uleb128 0x5
	.byte	0xd
	.byte	0x6
	.byte	0x23
	.long	0x510
	.uleb128 0xa
	.long	.LASF62
	.byte	0x6
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF63
	.byte	0x6
	.byte	0x26
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF64
	.byte	0x6
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF65
	.byte	0x6
	.byte	0x28
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF66
	.byte	0x6
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF67
	.byte	0x6
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF69
	.byte	0x6
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF70
	.byte	0x6
	.byte	0x37
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF71
	.byte	0x6
	.byte	0x39
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF72
	.byte	0x6
	.byte	0x3a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x6
	.byte	0x3b
	.long	0x46d
	.uleb128 0x2
	.long	.LASF74
	.byte	0x7
	.byte	0xd4
	.long	0x6a
	.uleb128 0x13
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.byte	0x19
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.byte	0x1
	.long	0x5e4
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.byte	0x1e
	.long	0x3b
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.byte	0x20
	.long	0x3b
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x21
	.long	0x5e4
	.long	.LLST3
	.uleb128 0x17
	.long	.LBB2
	.long	.LBE2
	.long	0x5ae
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.byte	0x22
	.long	0x5f
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.byte	0x22
	.long	0x5f
	.long	.LLST3
	.byte	0
	.uleb128 0x17
	.long	.LBB3
	.long	.LBE3
	.long	0x5da
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.byte	0x23
	.long	0x5f
	.long	.LLST6
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.byte	0x23
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x18
	.long	.LVL7
	.long	0x706
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x1d2
	.uleb128 0x19
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x29
	.long	.LFB10
	.long	.LFE10
	.long	.LLST8
	.byte	0x1
	.long	0x656
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.byte	0x2b
	.long	0x71
	.long	.LLST9
	.uleb128 0x1b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.long	0x3b
	.long	.LLST10
	.uleb128 0x1c
	.long	.LVL17
	.long	0x732
	.uleb128 0x1d
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x7c
	.sleb128 1100
	.uleb128 0x1d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x384
	.uleb128 0x1d
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x834
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x42
	.long	.LFB11
	.long	.LFE11
	.long	.LLST11
	.byte	0x1
	.long	0x690
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x44
	.long	0x3b
	.long	.LLST12
	.uleb128 0x18
	.long	.LVL24
	.long	0x754
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6a0
	.long	0x6a0
	.uleb128 0xe
	.long	0x16c
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x6a6
	.uleb128 0x10
	.long	0x1d2
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x3
	.byte	0x36
	.long	0x6b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x690
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.byte	0x16
	.long	0x412
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	MIXER
	.uleb128 0x1e
	.long	.LASF83
	.byte	0x5
	.byte	0x3b
	.long	0x462
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF84
	.byte	0x6
	.byte	0x3d
	.long	0x510
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x4d
	.long	0x6f9
	.uleb128 0xe
	.long	0x16c
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x8
	.byte	0xc
	.long	0x6e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF86
	.byte	0x9
	.word	0x474
	.byte	0x1
	.long	0x729
	.byte	0x1
	.long	0x729
	.uleb128 0x21
	.long	0x729
	.uleb128 0x21
	.long	0x72b
	.uleb128 0x21
	.long	0x51b
	.byte	0
	.uleb128 0x22
	.byte	0x2
	.uleb128 0xf
	.byte	0x2
	.long	0x731
	.uleb128 0x23
	.uleb128 0x24
	.byte	0x1
	.long	.LASF87
	.byte	0x8
	.byte	0x10
	.byte	0x1
	.long	0x4d
	.byte	0x1
	.long	0x754
	.uleb128 0x21
	.long	0x4d
	.uleb128 0x21
	.long	0x4d
	.uleb128 0x21
	.long	0x4d
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF94
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	0x3b
	.uleb128 0x21
	.long	0x5f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB9
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL8
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL6
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7-1
	.word	0x3
	.byte	0x86
	.sleb128 -3
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL3
	.long	.LVL4
	.word	0x3
	.byte	0x86
	.sleb128 2
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x86
	.sleb128 2
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7-1
	.word	0x3
	.byte	0x86
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LFB10
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI15
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	0
	.long	0
.LLST9:
	.long	.LVL11
	.long	.LVL12
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL15
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
	.long	.LVL15
	.long	.LVL16
	.word	0x10
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0xa
	.word	0x10c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17-1
	.word	0xd
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0xa
	.word	0x10c
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL18
	.word	0x1
	.byte	0x60
	.long	.LVL18
	.long	.LVL19
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST11:
	.long	.LFB11
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
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x6c
	.long	.LVL24
	.long	.LVL25
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.LASF87:
	.string	"limit"
.LASF46:
	.string	"ArmingMode"
.LASF69:
	.string	"Error"
.LASF18:
	.string	"Rudder"
.LASF43:
	.string	"ACC_zero"
.LASF32:
	.string	"ILimit"
.LASF0:
	.string	"int8_t"
.LASF60:
	.string	"Camera"
.LASF93:
	.string	"index"
.LASF74:
	.string	"size_t"
.LASF21:
	.string	"sizetype"
.LASF62:
	.string	"Armed"
.LASF35:
	.string	"RollOffset"
.LASF45:
	.string	"SelfLevelMode"
.LASF23:
	.string	"Name"
.LASF33:
	.string	"pid_param_t"
.LASF75:
	.string	"channels"
.LASF79:
	.string	"mixerCalculate"
.LASF65:
	.string	"Aux1"
.LASF66:
	.string	"Aux2"
.LASF67:
	.string	"Aux3"
.LASF68:
	.string	"Aux4"
.LASF1:
	.string	"uint8_t"
.LASF12:
	.string	"IsMotor"
.LASF37:
	.string	"PitchOffset"
.LASF31:
	.string	"IGain"
.LASF86:
	.string	"memcpy_P"
.LASF53:
	.string	"LCDContrast"
.LASF20:
	.string	"Flags"
.LASF73:
	.string	"state_t"
.LASF42:
	.string	"GYRO_zero"
.LASF10:
	.string	"long long int"
.LASF49:
	.string	"ReceiverMode"
.LASF25:
	.string	"Channel"
.LASF89:
	.string	"../src/mixer.c"
.LASF41:
	.string	"RX_chmap"
.LASF76:
	.string	"pmodel"
.LASF8:
	.string	"long int"
.LASF71:
	.string	"CycleTime"
.LASF90:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF83:
	.string	"Config"
.LASF47:
	.string	"AutoDisarm"
.LASF84:
	.string	"State"
.LASF36:
	.string	"PitchGain"
.LASF27:
	.string	"model_t"
.LASF77:
	.string	"__addr16"
.LASF55:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"Aileron"
.LASF48:
	.string	"LinkRollPitch"
.LASF30:
	.string	"PLimit"
.LASF40:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF61:
	.string	"config_t"
.LASF5:
	.string	"uint16_t"
.LASF78:
	.string	"__result"
.LASF19:
	.string	"Offset"
.LASF81:
	.string	"modelTable"
.LASF82:
	.string	"MIXER"
.LASF24:
	.string	"Channels"
.LASF26:
	.string	"char"
.LASF22:
	.string	"mixer_channel_t"
.LASF7:
	.string	"int32_t"
.LASF88:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF50:
	.string	"MixerIndex"
.LASF4:
	.string	"int16_t"
.LASF91:
	.string	"mixerInit"
.LASF54:
	.string	"HeightDampening"
.LASF63:
	.string	"ThrottleOff"
.LASF52:
	.string	"MinThrottle"
.LASF57:
	.string	"PID_SelfLevel"
.LASF29:
	.string	"PGain"
.LASF94:
	.string	"pwmWrite"
.LASF9:
	.string	"long unsigned int"
.LASF72:
	.string	"CalculationTime"
.LASF64:
	.string	"SelfLevel"
.LASF92:
	.string	"mixerLoadModel"
.LASF59:
	.string	"Mixer"
.LASF38:
	.string	"camera_t"
.LASF28:
	.string	"mixer_t"
.LASF39:
	.string	"signature"
.LASF85:
	.string	"CONTROL"
.LASF34:
	.string	"RollGain"
.LASF13:
	.string	"IsServo"
.LASF14:
	.string	"IsHiRate"
.LASF70:
	.string	"Mode"
.LASF44:
	.string	"CalibrateFlags"
.LASF56:
	.string	"ServoFilter"
.LASF51:
	.string	"StickScaling"
.LASF80:
	.string	"mixerOutput"
.LASF17:
	.string	"Elevator"
.LASF15:
	.string	"Throttle"
.LASF58:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
