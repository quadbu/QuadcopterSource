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
	.long	0x76a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF2171
	.byte	0x1
	.long	.LASF2172
	.long	.LASF2173
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	.LASF2083
	.byte	0x2
	.byte	0x79
	.long	0x38
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2085
	.uleb128 0x2
	.long	.LASF2084
	.byte	0x2
	.byte	0x7a
	.long	0x4a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2086
	.uleb128 0x2
	.long	.LASF2087
	.byte	0x2
	.byte	0x7b
	.long	0x5c
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF2088
	.byte	0x2
	.byte	0x7c
	.long	0x6e
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2089
	.uleb128 0x2
	.long	.LASF2090
	.byte	0x2
	.byte	0x7d
	.long	0x80
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF2091
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF2092
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2093
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2094
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0x20
	.long	0xd8
	.uleb128 0x6
	.long	.LASF2095
	.byte	0x3
	.byte	0x22
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF2096
	.byte	0x3
	.byte	0x23
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF2097
	.byte	0x3
	.byte	0x24
	.long	0x3f
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
	.long	0xf1
	.uleb128 0x8
	.long	.LASF2103
	.byte	0x3
	.byte	0x1f
	.long	0x3f
	.uleb128 0x9
	.long	0x9c
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x3
	.byte	0x16
	.long	0x148
	.uleb128 0xa
	.long	.LASF2098
	.byte	0x3
	.byte	0x18
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF2099
	.byte	0x3
	.byte	0x19
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF2100
	.byte	0x3
	.byte	0x1a
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF2101
	.byte	0x3
	.byte	0x1b
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF2102
	.byte	0x3
	.byte	0x1c
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x3
	.byte	0x13
	.long	0x160
	.uleb128 0xc
	.string	"I8"
	.byte	0x3
	.byte	0x15
	.long	0x160
	.uleb128 0x9
	.long	0xf1
	.byte	0
	.uleb128 0xd
	.long	0x2d
	.long	0x170
	.uleb128 0xe
	.long	0x170
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2104
	.uleb128 0x2
	.long	.LASF2105
	.byte	0x3
	.byte	0x28
	.long	0x148
	.uleb128 0x5
	.byte	0x3
	.byte	0x3
	.byte	0x2b
	.long	0x1b5
	.uleb128 0xa
	.long	.LASF2106
	.byte	0x3
	.byte	0x2d
	.long	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF2107
	.byte	0x3
	.byte	0x2e
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF2108
	.byte	0x3
	.byte	0x2f
	.long	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x1bb
	.uleb128 0x10
	.long	0x1c0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2109
	.uleb128 0xd
	.long	0x177
	.long	0x1d6
	.uleb128 0x11
	.long	0x170
	.byte	0
	.uleb128 0x2
	.long	.LASF2110
	.byte	0x3
	.byte	0x30
	.long	0x182
	.uleb128 0x2
	.long	.LASF2111
	.byte	0x3
	.byte	0x33
	.long	0x1ec
	.uleb128 0xd
	.long	0x177
	.long	0x1fc
	.uleb128 0xe
	.long	0x170
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0xe
	.long	0x23d
	.uleb128 0xa
	.long	.LASF2112
	.byte	0x4
	.byte	0x10
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF2113
	.byte	0x4
	.byte	0x11
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF2114
	.byte	0x4
	.byte	0x12
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF2115
	.byte	0x4
	.byte	0x13
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.long	0x256
	.uleb128 0x9
	.long	0x1fc
	.uleb128 0xc
	.string	"UI8"
	.byte	0x4
	.byte	0x15
	.long	0x256
	.byte	0
	.uleb128 0xd
	.long	0x3f
	.long	0x266
	.uleb128 0xe
	.long	0x170
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF2116
	.byte	0x4
	.byte	0x16
	.long	0x23d
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.long	0x2b2
	.uleb128 0xa
	.long	.LASF2117
	.byte	0x5
	.byte	0x14
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF2118
	.byte	0x5
	.byte	0x15
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF2119
	.byte	0x5
	.byte	0x16
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF2120
	.byte	0x5
	.byte	0x17
	.long	0x2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF2121
	.byte	0x5
	.byte	0x18
	.long	0x271
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x1a
	.long	0x416
	.uleb128 0xa
	.long	.LASF2122
	.byte	0x5
	.byte	0x1c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF2123
	.byte	0x5
	.byte	0x1d
	.long	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF2124
	.byte	0x5
	.byte	0x1e
	.long	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF2125
	.byte	0x5
	.byte	0x1f
	.long	0x436
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF2126
	.byte	0x5
	.byte	0x20
	.long	0x436
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF2127
	.byte	0x5
	.byte	0x21
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x12
	.string	"PID"
	.byte	0x5
	.byte	0x22
	.long	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF2128
	.byte	0x5
	.byte	0x27
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF2129
	.byte	0x5
	.byte	0x29
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF2130
	.byte	0x5
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF2131
	.byte	0x5
	.byte	0x2b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF2132
	.byte	0x5
	.byte	0x2c
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF2133
	.byte	0x5
	.byte	0x2d
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF2134
	.byte	0x5
	.byte	0x2e
	.long	0x256
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF2135
	.byte	0x5
	.byte	0x2f
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF2136
	.byte	0x5
	.byte	0x30
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF2137
	.byte	0x5
	.byte	0x31
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF2138
	.byte	0x5
	.byte	0x32
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x12
	.string	"LVA"
	.byte	0x5
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF2139
	.byte	0x5
	.byte	0x34
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF2140
	.byte	0x5
	.byte	0x35
	.long	0x266
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF2141
	.byte	0x5
	.byte	0x36
	.long	0x456
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF2142
	.byte	0x5
	.byte	0x37
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF2143
	.byte	0x5
	.byte	0x38
	.long	0x2b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xd
	.long	0x63
	.long	0x426
	.uleb128 0xe
	.long	0x170
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x3f
	.long	0x436
	.uleb128 0xe
	.long	0x170
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x63
	.long	0x446
	.uleb128 0xe
	.long	0x170
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x266
	.long	0x456
	.uleb128 0xe
	.long	0x170
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x2d
	.long	0x466
	.uleb128 0xe
	.long	0x170
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF2144
	.byte	0x5
	.byte	0x39
	.long	0x2bd
	.uleb128 0x5
	.byte	0xd
	.byte	0x6
	.byte	0x23
	.long	0x514
	.uleb128 0xa
	.long	.LASF2145
	.byte	0x6
	.byte	0x25
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF2146
	.byte	0x6
	.byte	0x26
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF2147
	.byte	0x6
	.byte	0x27
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF2148
	.byte	0x6
	.byte	0x28
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF2149
	.byte	0x6
	.byte	0x29
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF2150
	.byte	0x6
	.byte	0x2a
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF2151
	.byte	0x6
	.byte	0x2b
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF2152
	.byte	0x6
	.byte	0x33
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.long	.LASF2153
	.byte	0x6
	.byte	0x37
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.long	.LASF2154
	.byte	0x6
	.byte	0x39
	.long	0x63
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.long	.LASF2155
	.byte	0x6
	.byte	0x3a
	.long	0x63
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF2156
	.byte	0x6
	.byte	0x3b
	.long	0x471
	.uleb128 0x2
	.long	.LASF2157
	.byte	0x7
	.byte	0xd4
	.long	0x6e
	.uleb128 0x13
	.byte	0x1
	.long	.LASF2174
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
	.long	.LASF2175
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.byte	0x1
	.long	0x5e8
	.uleb128 0x15
	.long	.LASF2176
	.byte	0x1
	.byte	0x1e
	.long	0x3f
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF2158
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF2159
	.byte	0x1
	.byte	0x21
	.long	0x5e8
	.long	.LLST3
	.uleb128 0x17
	.long	.LBB2
	.long	.LBE2
	.long	0x5b2
	.uleb128 0x16
	.long	.LASF2160
	.byte	0x1
	.byte	0x22
	.long	0x63
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF2161
	.byte	0x1
	.byte	0x22
	.long	0x63
	.long	.LLST3
	.byte	0
	.uleb128 0x17
	.long	.LBB3
	.long	.LBE3
	.long	0x5de
	.uleb128 0x16
	.long	.LASF2160
	.byte	0x1
	.byte	0x23
	.long	0x63
	.long	.LLST6
	.uleb128 0x16
	.long	.LASF2161
	.byte	0x1
	.byte	0x23
	.long	0x3f
	.long	.LLST2
	.byte	0
	.uleb128 0x18
	.long	.LVL7
	.long	0x70a
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x1d6
	.uleb128 0x19
	.byte	0x1
	.long	.LASF2162
	.byte	0x1
	.byte	0x29
	.long	.LFB10
	.long	.LFE10
	.long	.LLST8
	.byte	0x1
	.long	0x65a
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.byte	0x2b
	.long	0x75
	.long	.LLST9
	.uleb128 0x1b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.long	0x3f
	.long	.LLST10
	.uleb128 0x1c
	.long	.LVL17
	.long	0x736
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
	.long	.LASF2163
	.byte	0x1
	.byte	0x42
	.long	.LFB11
	.long	.LFE11
	.long	.LLST11
	.byte	0x1
	.long	0x694
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.long	.LLST12
	.uleb128 0x18
	.long	.LVL24
	.long	0x758
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x6a4
	.long	0x6a4
	.uleb128 0xe
	.long	0x170
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x6aa
	.uleb128 0x10
	.long	0x1d6
	.uleb128 0x1e
	.long	.LASF2164
	.byte	0x3
	.byte	0x36
	.long	0x6bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x694
	.uleb128 0x1f
	.long	.LASF2165
	.byte	0x1
	.byte	0x16
	.long	0x416
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	MIXER
	.uleb128 0x1e
	.long	.LASF2166
	.byte	0x5
	.byte	0x3b
	.long	0x466
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF2167
	.byte	0x6
	.byte	0x3d
	.long	0x514
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x51
	.long	0x6fd
	.uleb128 0xe
	.long	0x170
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF2168
	.byte	0x8
	.byte	0xc
	.long	0x6ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF2169
	.byte	0x9
	.word	0x474
	.byte	0x1
	.long	0x72d
	.byte	0x1
	.long	0x72d
	.uleb128 0x21
	.long	0x72d
	.uleb128 0x21
	.long	0x72f
	.uleb128 0x21
	.long	0x51f
	.byte	0
	.uleb128 0x22
	.byte	0x2
	.uleb128 0xf
	.byte	0x2
	.long	0x735
	.uleb128 0x23
	.uleb128 0x24
	.byte	0x1
	.long	.LASF2170
	.byte	0x8
	.byte	0x10
	.byte	0x1
	.long	0x51
	.byte	0x1
	.long	0x758
	.uleb128 0x21
	.long	0x51
	.uleb128 0x21
	.long	0x51
	.uleb128 0x21
	.long	0x51
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF2177
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	0x3f
	.uleb128 0x21
	.long	0x63
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
	.uleb128 0x2119
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
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro1
	.file 11 "../include/system.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x5
	.uleb128 0xc
	.long	.LASF447
	.file 12 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF509
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 13 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x23
	.long	.LASF520
	.file 14 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x61
	.long	.LASF521
	.file 15 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro4
	.file 16 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 17 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\iom324pa.h"
	.byte	0x3
	.uleb128 0xfe
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 18 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h"
	.byte	0x3
	.uleb128 0x268
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 19 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h"
	.byte	0x3
	.uleb128 0x26a
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 20 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h"
	.byte	0x3
	.uleb128 0x26c
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.file 21 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h"
	.byte	0x3
	.uleb128 0x273
	.uleb128 0x15
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 22 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h"
	.byte	0x3
	.uleb128 0x276
	.uleb128 0x16
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.file 23 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x17
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.file 24 "../include/hardware.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1990
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF1997
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.file 25 "../include/rx.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x19
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xa
	.long	.LASF2020
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xc
	.long	.LASF2021
	.byte	0x4
	.file 26 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\string.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.byte	0x5
	.uleb128 0x13
	.long	.LASF2082
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.global.h.12.2fc1979c5aa6b300089d0a6b06c067c7,comdat
.Ldebug_macro1:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF437
	.byte	0x5
	.uleb128 0xe
	.long	.LASF438
	.byte	0x5
	.uleb128 0x10
	.long	.LASF439
	.byte	0x5
	.uleb128 0x11
	.long	.LASF440
	.byte	0x5
	.uleb128 0x13
	.long	.LASF441
	.byte	0x5
	.uleb128 0x14
	.long	.LASF442
	.byte	0x5
	.uleb128 0x15
	.long	.LASF443
	.byte	0x5
	.uleb128 0x16
	.long	.LASF444
	.byte	0x5
	.uleb128 0x18
	.long	.LASF445
	.byte	0x5
	.uleb128 0x19
	.long	.LASF446
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.40.0b15bfb741d41c43341e80778c1245bf,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF448
	.byte	0x5
	.uleb128 0x39
	.long	.LASF449
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF450
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF451
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF452
	.byte	0x5
	.uleb128 0x131
	.long	.LASF453
	.byte	0x5
	.uleb128 0x136
	.long	.LASF454
	.byte	0x5
	.uleb128 0x147
	.long	.LASF455
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF456
	.byte	0x5
	.uleb128 0x151
	.long	.LASF457
	.byte	0x5
	.uleb128 0x156
	.long	.LASF458
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF459
	.byte	0x5
	.uleb128 0x160
	.long	.LASF460
	.byte	0x5
	.uleb128 0x167
	.long	.LASF461
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF462
	.byte	0x5
	.uleb128 0x171
	.long	.LASF463
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x180
	.long	.LASF465
	.byte	0x5
	.uleb128 0x185
	.long	.LASF466
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF467
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF468
	.byte	0x5
	.uleb128 0x194
	.long	.LASF469
	.byte	0x5
	.uleb128 0x199
	.long	.LASF470
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF471
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF472
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF475
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF476
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF477
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF478
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF479
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF480
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF481
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF482
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF483
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF484
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF485
	.byte	0x5
	.uleb128 0x1ef
	.long	.LASF486
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF487
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF488
	.byte	0x5
	.uleb128 0x204
	.long	.LASF489
	.byte	0x5
	.uleb128 0x209
	.long	.LASF490
	.byte	0x5
	.uleb128 0x214
	.long	.LASF491
	.byte	0x5
	.uleb128 0x219
	.long	.LASF492
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF493
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF494
	.byte	0x5
	.uleb128 0x230
	.long	.LASF495
	.byte	0x5
	.uleb128 0x239
	.long	.LASF496
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF497
	.byte	0x5
	.uleb128 0x244
	.long	.LASF498
	.byte	0x5
	.uleb128 0x261
	.long	.LASF499
	.byte	0x5
	.uleb128 0x266
	.long	.LASF500
	.byte	0x5
	.uleb128 0x275
	.long	.LASF501
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF502
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF503
	.byte	0x5
	.uleb128 0x284
	.long	.LASF504
	.byte	0x5
	.uleb128 0x28b
	.long	.LASF505
	.byte	0x5
	.uleb128 0x290
	.long	.LASF506
	.byte	0x5
	.uleb128 0x295
	.long	.LASF507
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF508
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.system.h.16.999768a985bfc59a0df48bf75c0362ca,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.long	.LASF510
	.byte	0x5
	.uleb128 0x11
	.long	.LASF511
	.byte	0x5
	.uleb128 0x12
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF514
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF515
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF516
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF517
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF518
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF519
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.36.473802ecbcb5d4d38de6c7efbfcd3c60,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF522
	.byte	0x5
	.uleb128 0x79
	.long	.LASF523
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.35.cc04cc1b98ea8ee6df5d06ef77f75e42,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x23
	.long	.LASF524
	.byte	0x5
	.uleb128 0x60
	.long	.LASF525
	.byte	0x5
	.uleb128 0x63
	.long	.LASF526
	.byte	0x5
	.uleb128 0x66
	.long	.LASF527
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF528
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF529
	.byte	0x5
	.uleb128 0x70
	.long	.LASF530
	.byte	0x5
	.uleb128 0x75
	.long	.LASF531
	.byte	0x5
	.uleb128 0x78
	.long	.LASF532
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF533
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF534
	.byte	0x5
	.uleb128 0x82
	.long	.LASF535
	.byte	0x5
	.uleb128 0x85
	.long	.LASF536
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF537
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF538
	.byte	0x5
	.uleb128 0x90
	.long	.LASF539
	.byte	0x5
	.uleb128 0x94
	.long	.LASF540
	.byte	0x5
	.uleb128 0x97
	.long	.LASF541
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF542
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF543
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF544
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF545
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF546
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF547
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF548
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF549
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF550
	.byte	0x5
	.uleb128 0xca
	.long	.LASF551
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF552
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF553
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF554
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF555
	.byte	0x5
	.uleb128 0xda
	.long	.LASF556
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF557
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF558
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF559
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF560
	.byte	0x5
	.uleb128 0xec
	.long	.LASF561
	.byte	0x5
	.uleb128 0xef
	.long	.LASF562
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF563
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF564
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF565
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF566
	.byte	0x5
	.uleb128 0x100
	.long	.LASF567
	.byte	0x5
	.uleb128 0x103
	.long	.LASF568
	.byte	0x5
	.uleb128 0x108
	.long	.LASF569
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF570
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF571
	.byte	0x5
	.uleb128 0x112
	.long	.LASF572
	.byte	0x5
	.uleb128 0x115
	.long	.LASF573
	.byte	0x5
	.uleb128 0x118
	.long	.LASF574
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF575
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF576
	.byte	0x5
	.uleb128 0x122
	.long	.LASF577
	.byte	0x5
	.uleb128 0x126
	.long	.LASF578
	.byte	0x5
	.uleb128 0x129
	.long	.LASF579
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF580
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF581
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF582
	.byte	0x5
	.uleb128 0x150
	.long	.LASF583
	.byte	0x5
	.uleb128 0x153
	.long	.LASF584
	.byte	0x5
	.uleb128 0x165
	.long	.LASF585
	.byte	0x5
	.uleb128 0x168
	.long	.LASF586
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF587
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF588
	.byte	0x5
	.uleb128 0x172
	.long	.LASF589
	.byte	0x5
	.uleb128 0x175
	.long	.LASF590
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF591
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF592
	.byte	0x5
	.uleb128 0x180
	.long	.LASF593
	.byte	0x5
	.uleb128 0x184
	.long	.LASF594
	.byte	0x5
	.uleb128 0x187
	.long	.LASF595
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF596
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF597
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF598
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF599
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF600
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF601
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF602
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF603
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF604
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF605
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF606
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF607
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF608
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF609
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF610
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF611
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF612
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF613
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF614
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF615
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF616
	.byte	0x5
	.uleb128 0x207
	.long	.LASF617
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF618
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF619
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.128.38ceebe2fb099c106e85a566519e0f1a,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x80
	.long	.LASF620
	.byte	0x5
	.uleb128 0x81
	.long	.LASF621
	.byte	0x5
	.uleb128 0x82
	.long	.LASF622
	.byte	0x5
	.uleb128 0xac
	.long	.LASF623
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF624
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF625
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF626
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF627
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF628
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF629
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF630
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF631
	.byte	0x5
	.uleb128 0xba
	.long	.LASF632
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF633
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF634
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF635
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF636
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF637
	.byte	0x5
	.uleb128 0xea
	.long	.LASF638
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF639
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF640
	.byte	0x5
	.uleb128 0x107
	.long	.LASF641
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.iom324pa.h.42.6bceee53c81bc755f0f88481d7a79307,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF642
	.byte	0x5
	.uleb128 0x31
	.long	.LASF643
	.byte	0x5
	.uleb128 0x36
	.long	.LASF644
	.byte	0x5
	.uleb128 0x37
	.long	.LASF645
	.byte	0x5
	.uleb128 0x38
	.long	.LASF646
	.byte	0x5
	.uleb128 0x39
	.long	.LASF647
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF648
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF649
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF650
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF651
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF652
	.byte	0x5
	.uleb128 0x40
	.long	.LASF653
	.byte	0x5
	.uleb128 0x41
	.long	.LASF654
	.byte	0x5
	.uleb128 0x42
	.long	.LASF655
	.byte	0x5
	.uleb128 0x43
	.long	.LASF656
	.byte	0x5
	.uleb128 0x44
	.long	.LASF657
	.byte	0x5
	.uleb128 0x45
	.long	.LASF658
	.byte	0x5
	.uleb128 0x46
	.long	.LASF659
	.byte	0x5
	.uleb128 0x47
	.long	.LASF660
	.byte	0x5
	.uleb128 0x48
	.long	.LASF661
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF662
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF663
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF664
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF665
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF666
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF667
	.byte	0x5
	.uleb128 0x50
	.long	.LASF668
	.byte	0x5
	.uleb128 0x51
	.long	.LASF669
	.byte	0x5
	.uleb128 0x52
	.long	.LASF670
	.byte	0x5
	.uleb128 0x54
	.long	.LASF671
	.byte	0x5
	.uleb128 0x55
	.long	.LASF672
	.byte	0x5
	.uleb128 0x56
	.long	.LASF673
	.byte	0x5
	.uleb128 0x57
	.long	.LASF674
	.byte	0x5
	.uleb128 0x58
	.long	.LASF675
	.byte	0x5
	.uleb128 0x59
	.long	.LASF676
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF677
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF678
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF679
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF680
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF681
	.byte	0x5
	.uleb128 0x60
	.long	.LASF682
	.byte	0x5
	.uleb128 0x61
	.long	.LASF683
	.byte	0x5
	.uleb128 0x62
	.long	.LASF684
	.byte	0x5
	.uleb128 0x63
	.long	.LASF685
	.byte	0x5
	.uleb128 0x64
	.long	.LASF686
	.byte	0x5
	.uleb128 0x65
	.long	.LASF687
	.byte	0x5
	.uleb128 0x66
	.long	.LASF688
	.byte	0x5
	.uleb128 0x68
	.long	.LASF689
	.byte	0x5
	.uleb128 0x69
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF693
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF694
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF695
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF696
	.byte	0x5
	.uleb128 0x70
	.long	.LASF697
	.byte	0x5
	.uleb128 0x72
	.long	.LASF698
	.byte	0x5
	.uleb128 0x73
	.long	.LASF699
	.byte	0x5
	.uleb128 0x74
	.long	.LASF700
	.byte	0x5
	.uleb128 0x75
	.long	.LASF701
	.byte	0x5
	.uleb128 0x76
	.long	.LASF702
	.byte	0x5
	.uleb128 0x77
	.long	.LASF703
	.byte	0x5
	.uleb128 0x78
	.long	.LASF704
	.byte	0x5
	.uleb128 0x79
	.long	.LASF705
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF706
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF707
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF708
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF709
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF710
	.byte	0x5
	.uleb128 0x80
	.long	.LASF711
	.byte	0x5
	.uleb128 0x81
	.long	.LASF712
	.byte	0x5
	.uleb128 0x82
	.long	.LASF713
	.byte	0x5
	.uleb128 0x83
	.long	.LASF714
	.byte	0x5
	.uleb128 0x84
	.long	.LASF715
	.byte	0x5
	.uleb128 0x86
	.long	.LASF716
	.byte	0x5
	.uleb128 0x87
	.long	.LASF717
	.byte	0x5
	.uleb128 0x88
	.long	.LASF718
	.byte	0x5
	.uleb128 0x89
	.long	.LASF719
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF720
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF721
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF722
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF723
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF724
	.byte	0x5
	.uleb128 0x90
	.long	.LASF725
	.byte	0x5
	.uleb128 0x91
	.long	.LASF726
	.byte	0x5
	.uleb128 0x92
	.long	.LASF727
	.byte	0x5
	.uleb128 0x93
	.long	.LASF728
	.byte	0x5
	.uleb128 0x94
	.long	.LASF729
	.byte	0x5
	.uleb128 0x95
	.long	.LASF730
	.byte	0x5
	.uleb128 0x96
	.long	.LASF731
	.byte	0x5
	.uleb128 0x97
	.long	.LASF732
	.byte	0x5
	.uleb128 0x98
	.long	.LASF733
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF734
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF735
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF736
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF737
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF738
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF739
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF740
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF741
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF742
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF743
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF744
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF745
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF746
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF747
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF748
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF749
	.byte	0x5
	.uleb128 0xab
	.long	.LASF750
	.byte	0x5
	.uleb128 0xac
	.long	.LASF751
	.byte	0x5
	.uleb128 0xae
	.long	.LASF752
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF753
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF754
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF755
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF756
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF757
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF758
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF759
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF760
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF761
	.byte	0x5
	.uleb128 0xba
	.long	.LASF762
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF763
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF764
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF765
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF766
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF767
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF768
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF769
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF770
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF771
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF772
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF773
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF774
	.byte	0x5
	.uleb128 0xca
	.long	.LASF775
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF776
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF777
	.byte	0x5
	.uleb128 0xce
	.long	.LASF778
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF779
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF780
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF781
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF782
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF783
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF784
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF785
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF786
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF787
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF788
	.byte	0x5
	.uleb128 0xda
	.long	.LASF789
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF790
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF791
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF792
	.byte	0x5
	.uleb128 0xde
	.long	.LASF793
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF794
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF795
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF796
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF797
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF798
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF799
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF800
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF801
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF802
	.byte	0x5
	.uleb128 0xea
	.long	.LASF803
	.byte	0x5
	.uleb128 0xec
	.long	.LASF804
	.byte	0x5
	.uleb128 0xed
	.long	.LASF805
	.byte	0x5
	.uleb128 0xee
	.long	.LASF806
	.byte	0x5
	.uleb128 0xef
	.long	.LASF807
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF808
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF809
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF810
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF811
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF812
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF813
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF814
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF815
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF816
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF817
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF818
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF819
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF820
	.byte	0x5
	.uleb128 0xff
	.long	.LASF821
	.byte	0x5
	.uleb128 0x101
	.long	.LASF822
	.byte	0x5
	.uleb128 0x102
	.long	.LASF823
	.byte	0x5
	.uleb128 0x103
	.long	.LASF824
	.byte	0x5
	.uleb128 0x104
	.long	.LASF825
	.byte	0x5
	.uleb128 0x105
	.long	.LASF826
	.byte	0x5
	.uleb128 0x106
	.long	.LASF827
	.byte	0x5
	.uleb128 0x107
	.long	.LASF828
	.byte	0x5
	.uleb128 0x109
	.long	.LASF829
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF830
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF831
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF832
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF833
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF834
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF835
	.byte	0x5
	.uleb128 0x111
	.long	.LASF836
	.byte	0x5
	.uleb128 0x112
	.long	.LASF837
	.byte	0x5
	.uleb128 0x113
	.long	.LASF838
	.byte	0x5
	.uleb128 0x114
	.long	.LASF839
	.byte	0x5
	.uleb128 0x115
	.long	.LASF840
	.byte	0x5
	.uleb128 0x116
	.long	.LASF841
	.byte	0x5
	.uleb128 0x117
	.long	.LASF842
	.byte	0x5
	.uleb128 0x118
	.long	.LASF843
	.byte	0x5
	.uleb128 0x119
	.long	.LASF844
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF845
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF846
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF847
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF848
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF849
	.byte	0x5
	.uleb128 0x120
	.long	.LASF850
	.byte	0x5
	.uleb128 0x121
	.long	.LASF851
	.byte	0x5
	.uleb128 0x122
	.long	.LASF852
	.byte	0x5
	.uleb128 0x123
	.long	.LASF853
	.byte	0x5
	.uleb128 0x125
	.long	.LASF854
	.byte	0x5
	.uleb128 0x126
	.long	.LASF855
	.byte	0x5
	.uleb128 0x127
	.long	.LASF856
	.byte	0x5
	.uleb128 0x128
	.long	.LASF857
	.byte	0x5
	.uleb128 0x129
	.long	.LASF858
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF859
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF860
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF861
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF862
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF863
	.byte	0x5
	.uleb128 0x130
	.long	.LASF864
	.byte	0x5
	.uleb128 0x131
	.long	.LASF865
	.byte	0x5
	.uleb128 0x132
	.long	.LASF866
	.byte	0x5
	.uleb128 0x133
	.long	.LASF867
	.byte	0x5
	.uleb128 0x134
	.long	.LASF868
	.byte	0x5
	.uleb128 0x135
	.long	.LASF869
	.byte	0x5
	.uleb128 0x136
	.long	.LASF870
	.byte	0x5
	.uleb128 0x137
	.long	.LASF871
	.byte	0x5
	.uleb128 0x139
	.long	.LASF872
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF873
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF874
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF875
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF876
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF877
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF878
	.byte	0x5
	.uleb128 0x140
	.long	.LASF879
	.byte	0x5
	.uleb128 0x141
	.long	.LASF880
	.byte	0x5
	.uleb128 0x143
	.long	.LASF881
	.byte	0x5
	.uleb128 0x144
	.long	.LASF882
	.byte	0x5
	.uleb128 0x145
	.long	.LASF883
	.byte	0x5
	.uleb128 0x146
	.long	.LASF884
	.byte	0x5
	.uleb128 0x147
	.long	.LASF885
	.byte	0x5
	.uleb128 0x148
	.long	.LASF886
	.byte	0x5
	.uleb128 0x149
	.long	.LASF887
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF888
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF889
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF890
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF891
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF892
	.byte	0x5
	.uleb128 0x150
	.long	.LASF893
	.byte	0x5
	.uleb128 0x152
	.long	.LASF894
	.byte	0x5
	.uleb128 0x153
	.long	.LASF895
	.byte	0x5
	.uleb128 0x154
	.long	.LASF896
	.byte	0x5
	.uleb128 0x155
	.long	.LASF897
	.byte	0x5
	.uleb128 0x156
	.long	.LASF898
	.byte	0x5
	.uleb128 0x157
	.long	.LASF899
	.byte	0x5
	.uleb128 0x158
	.long	.LASF900
	.byte	0x5
	.uleb128 0x159
	.long	.LASF901
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF902
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF903
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF904
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF905
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF906
	.byte	0x5
	.uleb128 0x160
	.long	.LASF907
	.byte	0x5
	.uleb128 0x161
	.long	.LASF908
	.byte	0x5
	.uleb128 0x162
	.long	.LASF909
	.byte	0x5
	.uleb128 0x163
	.long	.LASF910
	.byte	0x5
	.uleb128 0x164
	.long	.LASF911
	.byte	0x5
	.uleb128 0x166
	.long	.LASF912
	.byte	0x5
	.uleb128 0x167
	.long	.LASF913
	.byte	0x5
	.uleb128 0x168
	.long	.LASF914
	.byte	0x5
	.uleb128 0x169
	.long	.LASF915
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF916
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF917
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF918
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF919
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF920
	.byte	0x5
	.uleb128 0x170
	.long	.LASF921
	.byte	0x5
	.uleb128 0x171
	.long	.LASF922
	.byte	0x5
	.uleb128 0x172
	.long	.LASF923
	.byte	0x5
	.uleb128 0x173
	.long	.LASF924
	.byte	0x5
	.uleb128 0x174
	.long	.LASF925
	.byte	0x5
	.uleb128 0x176
	.long	.LASF926
	.byte	0x5
	.uleb128 0x177
	.long	.LASF927
	.byte	0x5
	.uleb128 0x178
	.long	.LASF928
	.byte	0x5
	.uleb128 0x179
	.long	.LASF929
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF930
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF931
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF932
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF933
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF934
	.byte	0x5
	.uleb128 0x180
	.long	.LASF935
	.byte	0x5
	.uleb128 0x181
	.long	.LASF936
	.byte	0x5
	.uleb128 0x182
	.long	.LASF937
	.byte	0x5
	.uleb128 0x183
	.long	.LASF938
	.byte	0x5
	.uleb128 0x185
	.long	.LASF939
	.byte	0x5
	.uleb128 0x186
	.long	.LASF940
	.byte	0x5
	.uleb128 0x187
	.long	.LASF941
	.byte	0x5
	.uleb128 0x188
	.long	.LASF942
	.byte	0x5
	.uleb128 0x189
	.long	.LASF943
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF944
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF945
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF946
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF947
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF948
	.byte	0x5
	.uleb128 0x190
	.long	.LASF949
	.byte	0x5
	.uleb128 0x191
	.long	.LASF950
	.byte	0x5
	.uleb128 0x192
	.long	.LASF951
	.byte	0x5
	.uleb128 0x193
	.long	.LASF952
	.byte	0x5
	.uleb128 0x194
	.long	.LASF953
	.byte	0x5
	.uleb128 0x195
	.long	.LASF954
	.byte	0x5
	.uleb128 0x196
	.long	.LASF955
	.byte	0x5
	.uleb128 0x197
	.long	.LASF956
	.byte	0x5
	.uleb128 0x199
	.long	.LASF957
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF958
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF959
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF960
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF961
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF962
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF963
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF964
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF965
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF966
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF967
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF968
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF969
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF970
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF971
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF972
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF973
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF974
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF975
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF976
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF977
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF978
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF979
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF980
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF981
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF982
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF983
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF984
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF985
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF986
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF987
	.byte	0x5
	.uleb128 0x1bc
	.long	.LASF988
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF989
	.byte	0x5
	.uleb128 0x1be
	.long	.LASF990
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF991
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF992
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF993
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF994
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF995
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF996
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF997
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF998
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF999
	.byte	0x5
	.uleb128 0x1c9
	.long	.LASF1000
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF1001
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF1002
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF1003
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF1004
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF1005
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF1006
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF1007
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1008
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF1009
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1010
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1011
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1012
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF1013
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF1014
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF1015
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF1016
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1017
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF1027
	.byte	0x5
	.uleb128 0x1e9
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1032
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x1f2
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x1f8
	.long	.LASF1041
	.byte	0x5
	.uleb128 0x1fb
	.long	.LASF1042
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1043
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF1044
	.byte	0x5
	.uleb128 0x200
	.long	.LASF1045
	.byte	0x5
	.uleb128 0x201
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x202
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x203
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x204
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x205
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x206
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x209
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x20c
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x20e
	.long	.LASF1058
	.byte	0x5
	.uleb128 0x20f
	.long	.LASF1059
	.byte	0x5
	.uleb128 0x210
	.long	.LASF1060
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x213
	.long	.LASF1062
	.byte	0x5
	.uleb128 0x214
	.long	.LASF1063
	.byte	0x5
	.uleb128 0x215
	.long	.LASF1064
	.byte	0x5
	.uleb128 0x216
	.long	.LASF1065
	.byte	0x5
	.uleb128 0x217
	.long	.LASF1066
	.byte	0x5
	.uleb128 0x218
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x219
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x21a
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x21b
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF1073
	.byte	0x5
	.uleb128 0x220
	.long	.LASF1074
	.byte	0x5
	.uleb128 0x221
	.long	.LASF1075
	.byte	0x5
	.uleb128 0x223
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x224
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x225
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x226
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x227
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x228
	.long	.LASF1081
	.byte	0x5
	.uleb128 0x229
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x22a
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x22d
	.long	.LASF1085
	.byte	0x5
	.uleb128 0x22e
	.long	.LASF1086
	.byte	0x5
	.uleb128 0x22f
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x230
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x231
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x232
	.long	.LASF1090
	.byte	0x5
	.uleb128 0x233
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x234
	.long	.LASF1092
	.byte	0x5
	.uleb128 0x235
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x237
	.long	.LASF1094
	.byte	0x5
	.uleb128 0x238
	.long	.LASF1095
	.byte	0x5
	.uleb128 0x239
	.long	.LASF1096
	.byte	0x5
	.uleb128 0x23b
	.long	.LASF1097
	.byte	0x5
	.uleb128 0x23c
	.long	.LASF1098
	.byte	0x5
	.uleb128 0x23d
	.long	.LASF1099
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1100
	.byte	0x5
	.uleb128 0x23f
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x241
	.long	.LASF1103
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1104
	.byte	0x5
	.uleb128 0x244
	.long	.LASF1105
	.byte	0x5
	.uleb128 0x245
	.long	.LASF1106
	.byte	0x5
	.uleb128 0x246
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x247
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x248
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x249
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x24a
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x24c
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x250
	.long	.LASF1115
	.byte	0x5
	.uleb128 0x252
	.long	.LASF1116
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1117
	.byte	0x5
	.uleb128 0x254
	.long	.LASF1118
	.byte	0x5
	.uleb128 0x255
	.long	.LASF1119
	.byte	0x5
	.uleb128 0x256
	.long	.LASF1120
	.byte	0x5
	.uleb128 0x257
	.long	.LASF1121
	.byte	0x5
	.uleb128 0x258
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x259
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x25c
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x25d
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x260
	.long	.LASF1129
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x262
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x263
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x268
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x26b
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1139
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF1140
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1141
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1142
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1143
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1144
	.byte	0x5
	.uleb128 0x273
	.long	.LASF1145
	.byte	0x5
	.uleb128 0x274
	.long	.LASF1146
	.byte	0x5
	.uleb128 0x275
	.long	.LASF1147
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x278
	.long	.LASF1150
	.byte	0x5
	.uleb128 0x279
	.long	.LASF1151
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x280
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x281
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x282
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x283
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x284
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x286
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x288
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x28a
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x28b
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x28c
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x290
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x292
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x294
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x295
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x296
	.long	.LASF1175
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1176
	.byte	0x5
	.uleb128 0x298
	.long	.LASF1177
	.byte	0x5
	.uleb128 0x299
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x29f
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x2a4
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x2a5
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x2a8
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x2a9
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x2aa
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x2ab
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x2ad
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x2b2
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x2b4
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x2b8
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x2bb
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF1216
	.byte	0x5
	.uleb128 0x2c5
	.long	.LASF1217
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF1218
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF1219
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF1220
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF1221
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF1222
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF1223
	.byte	0x5
	.uleb128 0x2cd
	.long	.LASF1224
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF1225
	.byte	0x5
	.uleb128 0x2cf
	.long	.LASF1226
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF1227
	.byte	0x5
	.uleb128 0x2d1
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x2d2
	.long	.LASF1229
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF1230
	.byte	0x5
	.uleb128 0x2d4
	.long	.LASF1231
	.byte	0x5
	.uleb128 0x2d6
	.long	.LASF1232
	.byte	0x5
	.uleb128 0x2d7
	.long	.LASF1233
	.byte	0x5
	.uleb128 0x2d8
	.long	.LASF1234
	.byte	0x5
	.uleb128 0x2d9
	.long	.LASF1235
	.byte	0x5
	.uleb128 0x2da
	.long	.LASF1236
	.byte	0x5
	.uleb128 0x2db
	.long	.LASF1237
	.byte	0x5
	.uleb128 0x2dc
	.long	.LASF1238
	.byte	0x5
	.uleb128 0x2dd
	.long	.LASF1239
	.byte	0x5
	.uleb128 0x2df
	.long	.LASF1240
	.byte	0x5
	.uleb128 0x2e0
	.long	.LASF1241
	.byte	0x5
	.uleb128 0x2e1
	.long	.LASF1242
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF1243
	.byte	0x5
	.uleb128 0x2e3
	.long	.LASF1244
	.byte	0x5
	.uleb128 0x2e4
	.long	.LASF1245
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF1246
	.byte	0x5
	.uleb128 0x2e6
	.long	.LASF1247
	.byte	0x5
	.uleb128 0x2e7
	.long	.LASF1248
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF1249
	.byte	0x5
	.uleb128 0x2ea
	.long	.LASF1250
	.byte	0x5
	.uleb128 0x2eb
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x2ec
	.long	.LASF1252
	.byte	0x5
	.uleb128 0x2ed
	.long	.LASF1253
	.byte	0x5
	.uleb128 0x2ee
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x2ef
	.long	.LASF1255
	.byte	0x5
	.uleb128 0x2f0
	.long	.LASF1256
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF1257
	.byte	0x5
	.uleb128 0x2f3
	.long	.LASF1258
	.byte	0x5
	.uleb128 0x2f4
	.long	.LASF1259
	.byte	0x5
	.uleb128 0x2f5
	.long	.LASF1260
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF1261
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF1262
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF1263
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF1264
	.byte	0x5
	.uleb128 0x2fa
	.long	.LASF1265
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x300
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x301
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x302
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x303
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x304
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x306
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x307
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x308
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x309
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x30a
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x30c
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x30d
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x30f
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x310
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x311
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x312
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x313
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x314
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x315
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x316
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x318
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x319
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x31a
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x31d
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x31e
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x31f
	.long	.LASF1298
	.byte	0x5
	.uleb128 0x320
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x322
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x323
	.long	.LASF1301
	.byte	0x5
	.uleb128 0x324
	.long	.LASF1302
	.byte	0x5
	.uleb128 0x325
	.long	.LASF1303
	.byte	0x5
	.uleb128 0x326
	.long	.LASF1304
	.byte	0x5
	.uleb128 0x327
	.long	.LASF1305
	.byte	0x5
	.uleb128 0x328
	.long	.LASF1306
	.byte	0x5
	.uleb128 0x329
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x32e
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x330
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x331
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x332
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x333
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x334
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x336
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x338
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x339
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x33a
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x33d
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x340
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x342
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x343
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x344
	.long	.LASF1330
	.byte	0x5
	.uleb128 0x345
	.long	.LASF1331
	.byte	0x5
	.uleb128 0x346
	.long	.LASF1332
	.byte	0x5
	.uleb128 0x348
	.long	.LASF1333
	.byte	0x5
	.uleb128 0x349
	.long	.LASF1334
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF1335
	.byte	0x5
	.uleb128 0x34b
	.long	.LASF1336
	.byte	0x5
	.uleb128 0x34c
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x34e
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x34f
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x350
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x352
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x353
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x354
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x355
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x356
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x358
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x359
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x35a
	.long	.LASF1350
	.byte	0x5
	.uleb128 0x35c
	.long	.LASF1351
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF1352
	.byte	0x5
	.uleb128 0x35e
	.long	.LASF1353
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x360
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x361
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x362
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x363
	.long	.LASF1358
	.byte	0x5
	.uleb128 0x364
	.long	.LASF1359
	.byte	0x5
	.uleb128 0x366
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x367
	.long	.LASF1361
	.byte	0x5
	.uleb128 0x368
	.long	.LASF1362
	.byte	0x5
	.uleb128 0x369
	.long	.LASF1363
	.byte	0x5
	.uleb128 0x36a
	.long	.LASF1364
	.byte	0x5
	.uleb128 0x36b
	.long	.LASF1365
	.byte	0x5
	.uleb128 0x36c
	.long	.LASF1366
	.byte	0x5
	.uleb128 0x36d
	.long	.LASF1367
	.byte	0x5
	.uleb128 0x36e
	.long	.LASF1368
	.byte	0x5
	.uleb128 0x370
	.long	.LASF1369
	.byte	0x5
	.uleb128 0x372
	.long	.LASF1370
	.byte	0x5
	.uleb128 0x373
	.long	.LASF1371
	.byte	0x5
	.uleb128 0x374
	.long	.LASF1372
	.byte	0x5
	.uleb128 0x375
	.long	.LASF1373
	.byte	0x5
	.uleb128 0x376
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x377
	.long	.LASF1375
	.byte	0x5
	.uleb128 0x378
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x379
	.long	.LASF1377
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x37c
	.long	.LASF1379
	.byte	0x5
	.uleb128 0x37d
	.long	.LASF1380
	.byte	0x5
	.uleb128 0x37e
	.long	.LASF1381
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF1382
	.byte	0x5
	.uleb128 0x380
	.long	.LASF1383
	.byte	0x5
	.uleb128 0x382
	.long	.LASF1384
	.byte	0x5
	.uleb128 0x383
	.long	.LASF1385
	.byte	0x5
	.uleb128 0x384
	.long	.LASF1386
	.byte	0x5
	.uleb128 0x385
	.long	.LASF1387
	.byte	0x5
	.uleb128 0x386
	.long	.LASF1388
	.byte	0x5
	.uleb128 0x387
	.long	.LASF1389
	.byte	0x5
	.uleb128 0x388
	.long	.LASF1390
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1391
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1392
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF1393
	.byte	0x5
	.uleb128 0x390
	.long	.LASF1394
	.byte	0x5
	.uleb128 0x391
	.long	.LASF1395
	.byte	0x5
	.uleb128 0x392
	.long	.LASF1396
	.byte	0x5
	.uleb128 0x393
	.long	.LASF1397
	.byte	0x5
	.uleb128 0x394
	.long	.LASF1398
	.byte	0x5
	.uleb128 0x395
	.long	.LASF1399
	.byte	0x5
	.uleb128 0x396
	.long	.LASF1400
	.byte	0x5
	.uleb128 0x397
	.long	.LASF1401
	.byte	0x5
	.uleb128 0x398
	.long	.LASF1402
	.byte	0x5
	.uleb128 0x399
	.long	.LASF1403
	.byte	0x5
	.uleb128 0x39a
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x39b
	.long	.LASF1405
	.byte	0x5
	.uleb128 0x39c
	.long	.LASF1406
	.byte	0x5
	.uleb128 0x39d
	.long	.LASF1407
	.byte	0x5
	.uleb128 0x39e
	.long	.LASF1408
	.byte	0x5
	.uleb128 0x39f
	.long	.LASF1409
	.byte	0x5
	.uleb128 0x3a0
	.long	.LASF1410
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF1411
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF1412
	.byte	0x5
	.uleb128 0x3a3
	.long	.LASF1413
	.byte	0x5
	.uleb128 0x3a4
	.long	.LASF1414
	.byte	0x5
	.uleb128 0x3a5
	.long	.LASF1415
	.byte	0x5
	.uleb128 0x3a6
	.long	.LASF1416
	.byte	0x5
	.uleb128 0x3a7
	.long	.LASF1417
	.byte	0x5
	.uleb128 0x3a8
	.long	.LASF1418
	.byte	0x5
	.uleb128 0x3a9
	.long	.LASF1419
	.byte	0x5
	.uleb128 0x3aa
	.long	.LASF1420
	.byte	0x5
	.uleb128 0x3ab
	.long	.LASF1421
	.byte	0x5
	.uleb128 0x3ac
	.long	.LASF1422
	.byte	0x5
	.uleb128 0x3ad
	.long	.LASF1423
	.byte	0x5
	.uleb128 0x3ae
	.long	.LASF1424
	.byte	0x5
	.uleb128 0x3af
	.long	.LASF1425
	.byte	0x5
	.uleb128 0x3b0
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x3b2
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x3b3
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x3b4
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x3b5
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x3b6
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x3b7
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x3b8
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x3b9
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x3ba
	.long	.LASF1436
	.byte	0x5
	.uleb128 0x3bb
	.long	.LASF1437
	.byte	0x5
	.uleb128 0x3bc
	.long	.LASF1438
	.byte	0x5
	.uleb128 0x3bd
	.long	.LASF1439
	.byte	0x5
	.uleb128 0x3be
	.long	.LASF1440
	.byte	0x5
	.uleb128 0x3bf
	.long	.LASF1441
	.byte	0x5
	.uleb128 0x3c0
	.long	.LASF1442
	.byte	0x5
	.uleb128 0x3c1
	.long	.LASF1443
	.byte	0x5
	.uleb128 0x3c2
	.long	.LASF1444
	.byte	0x5
	.uleb128 0x3c3
	.long	.LASF1445
	.byte	0x5
	.uleb128 0x3c4
	.long	.LASF1446
	.byte	0x5
	.uleb128 0x3c5
	.long	.LASF1447
	.byte	0x5
	.uleb128 0x3c6
	.long	.LASF1448
	.byte	0x5
	.uleb128 0x3c7
	.long	.LASF1449
	.byte	0x5
	.uleb128 0x3c8
	.long	.LASF1450
	.byte	0x5
	.uleb128 0x3c9
	.long	.LASF1451
	.byte	0x5
	.uleb128 0x3ca
	.long	.LASF1452
	.byte	0x5
	.uleb128 0x3cc
	.long	.LASF1453
	.byte	0x5
	.uleb128 0x3cd
	.long	.LASF1454
	.byte	0x5
	.uleb128 0x3d1
	.long	.LASF1455
	.byte	0x5
	.uleb128 0x3d2
	.long	.LASF1456
	.byte	0x5
	.uleb128 0x3d3
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x3d4
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x3d5
	.long	.LASF1459
	.byte	0x5
	.uleb128 0x3d6
	.long	.LASF1460
	.byte	0x5
	.uleb128 0x3d7
	.long	.LASF1461
	.byte	0x5
	.uleb128 0x3d8
	.long	.LASF1462
	.byte	0x5
	.uleb128 0x3d9
	.long	.LASF1463
	.byte	0x5
	.uleb128 0x3da
	.long	.LASF1464
	.byte	0x5
	.uleb128 0x3de
	.long	.LASF1465
	.byte	0x5
	.uleb128 0x3e1
	.long	.LASF1466
	.byte	0x5
	.uleb128 0x3e2
	.long	.LASF1467
	.byte	0x5
	.uleb128 0x3e3
	.long	.LASF1468
	.byte	0x5
	.uleb128 0x3e4
	.long	.LASF1469
	.byte	0x5
	.uleb128 0x3e5
	.long	.LASF1470
	.byte	0x5
	.uleb128 0x3e6
	.long	.LASF1471
	.byte	0x5
	.uleb128 0x3e7
	.long	.LASF1472
	.byte	0x5
	.uleb128 0x3e8
	.long	.LASF1473
	.byte	0x5
	.uleb128 0x3e9
	.long	.LASF1474
	.byte	0x5
	.uleb128 0x3ec
	.long	.LASF1475
	.byte	0x5
	.uleb128 0x3ed
	.long	.LASF1476
	.byte	0x5
	.uleb128 0x3ee
	.long	.LASF1477
	.byte	0x5
	.uleb128 0x3ef
	.long	.LASF1478
	.byte	0x5
	.uleb128 0x3f0
	.long	.LASF1479
	.byte	0x5
	.uleb128 0x3f1
	.long	.LASF1480
	.byte	0x5
	.uleb128 0x3f2
	.long	.LASF1481
	.byte	0x5
	.uleb128 0x3f3
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x3f4
	.long	.LASF1483
	.byte	0x5
	.uleb128 0x3f7
	.long	.LASF1484
	.byte	0x5
	.uleb128 0x3f8
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x3f9
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x3fa
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x3fe
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x3ff
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x400
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x404
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x405
	.long	.LASF1492
	.byte	0x5
	.uleb128 0x406
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x40a
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x40b
	.long	.LASF1495
	.byte	0x5
	.uleb128 0x40c
	.long	.LASF1496
	.byte	0x5
	.uleb128 0x40d
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x40f
	.long	.LASF1498
	.byte	0x5
	.uleb128 0x410
	.long	.LASF1499
	.byte	0x5
	.uleb128 0x411
	.long	.LASF1500
	.byte	0x5
	.uleb128 0x412
	.long	.LASF1501
	.byte	0x5
	.uleb128 0x414
	.long	.LASF1502
	.byte	0x5
	.uleb128 0x415
	.long	.LASF1503
	.byte	0x5
	.uleb128 0x416
	.long	.LASF1504
	.byte	0x5
	.uleb128 0x417
	.long	.LASF1505
	.byte	0x5
	.uleb128 0x419
	.long	.LASF1506
	.byte	0x5
	.uleb128 0x41a
	.long	.LASF1507
	.byte	0x5
	.uleb128 0x41b
	.long	.LASF1508
	.byte	0x5
	.uleb128 0x41c
	.long	.LASF1509
	.byte	0x5
	.uleb128 0x41e
	.long	.LASF1510
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF1511
	.byte	0x5
	.uleb128 0x420
	.long	.LASF1512
	.byte	0x5
	.uleb128 0x421
	.long	.LASF1513
	.byte	0x5
	.uleb128 0x423
	.long	.LASF1514
	.byte	0x5
	.uleb128 0x424
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x425
	.long	.LASF1516
	.byte	0x5
	.uleb128 0x426
	.long	.LASF1517
	.byte	0x5
	.uleb128 0x428
	.long	.LASF1518
	.byte	0x5
	.uleb128 0x429
	.long	.LASF1519
	.byte	0x5
	.uleb128 0x42a
	.long	.LASF1520
	.byte	0x5
	.uleb128 0x42b
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x42d
	.long	.LASF1522
	.byte	0x5
	.uleb128 0x42e
	.long	.LASF1523
	.byte	0x5
	.uleb128 0x42f
	.long	.LASF1524
	.byte	0x5
	.uleb128 0x430
	.long	.LASF1525
	.byte	0x5
	.uleb128 0x432
	.long	.LASF1526
	.byte	0x5
	.uleb128 0x433
	.long	.LASF1527
	.byte	0x5
	.uleb128 0x434
	.long	.LASF1528
	.byte	0x5
	.uleb128 0x435
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x437
	.long	.LASF1530
	.byte	0x5
	.uleb128 0x438
	.long	.LASF1531
	.byte	0x5
	.uleb128 0x439
	.long	.LASF1532
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF1533
	.byte	0x5
	.uleb128 0x43c
	.long	.LASF1534
	.byte	0x5
	.uleb128 0x43d
	.long	.LASF1535
	.byte	0x5
	.uleb128 0x43e
	.long	.LASF1536
	.byte	0x5
	.uleb128 0x43f
	.long	.LASF1537
	.byte	0x5
	.uleb128 0x441
	.long	.LASF1538
	.byte	0x5
	.uleb128 0x442
	.long	.LASF1539
	.byte	0x5
	.uleb128 0x443
	.long	.LASF1540
	.byte	0x5
	.uleb128 0x444
	.long	.LASF1541
	.byte	0x5
	.uleb128 0x446
	.long	.LASF1542
	.byte	0x5
	.uleb128 0x447
	.long	.LASF1543
	.byte	0x5
	.uleb128 0x448
	.long	.LASF1544
	.byte	0x5
	.uleb128 0x449
	.long	.LASF1545
	.byte	0x5
	.uleb128 0x44b
	.long	.LASF1546
	.byte	0x5
	.uleb128 0x44c
	.long	.LASF1547
	.byte	0x5
	.uleb128 0x44d
	.long	.LASF1548
	.byte	0x5
	.uleb128 0x44e
	.long	.LASF1549
	.byte	0x5
	.uleb128 0x450
	.long	.LASF1550
	.byte	0x5
	.uleb128 0x451
	.long	.LASF1551
	.byte	0x5
	.uleb128 0x452
	.long	.LASF1552
	.byte	0x5
	.uleb128 0x453
	.long	.LASF1553
	.byte	0x5
	.uleb128 0x455
	.long	.LASF1554
	.byte	0x5
	.uleb128 0x456
	.long	.LASF1555
	.byte	0x5
	.uleb128 0x457
	.long	.LASF1556
	.byte	0x5
	.uleb128 0x458
	.long	.LASF1557
	.byte	0x5
	.uleb128 0x45a
	.long	.LASF1558
	.byte	0x5
	.uleb128 0x45b
	.long	.LASF1559
	.byte	0x5
	.uleb128 0x45c
	.long	.LASF1560
	.byte	0x5
	.uleb128 0x45d
	.long	.LASF1561
	.byte	0x5
	.uleb128 0x45f
	.long	.LASF1562
	.byte	0x5
	.uleb128 0x460
	.long	.LASF1563
	.byte	0x5
	.uleb128 0x461
	.long	.LASF1564
	.byte	0x5
	.uleb128 0x462
	.long	.LASF1565
	.byte	0x5
	.uleb128 0x464
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x465
	.long	.LASF1567
	.byte	0x5
	.uleb128 0x466
	.long	.LASF1568
	.byte	0x5
	.uleb128 0x467
	.long	.LASF1569
	.byte	0x5
	.uleb128 0x469
	.long	.LASF1570
	.byte	0x5
	.uleb128 0x46a
	.long	.LASF1571
	.byte	0x5
	.uleb128 0x46b
	.long	.LASF1572
	.byte	0x5
	.uleb128 0x46c
	.long	.LASF1573
	.byte	0x5
	.uleb128 0x46e
	.long	.LASF1574
	.byte	0x5
	.uleb128 0x46f
	.long	.LASF1575
	.byte	0x5
	.uleb128 0x470
	.long	.LASF1576
	.byte	0x5
	.uleb128 0x471
	.long	.LASF1577
	.byte	0x5
	.uleb128 0x473
	.long	.LASF1578
	.byte	0x5
	.uleb128 0x474
	.long	.LASF1579
	.byte	0x5
	.uleb128 0x475
	.long	.LASF1580
	.byte	0x5
	.uleb128 0x476
	.long	.LASF1581
	.byte	0x5
	.uleb128 0x478
	.long	.LASF1582
	.byte	0x5
	.uleb128 0x479
	.long	.LASF1583
	.byte	0x5
	.uleb128 0x47a
	.long	.LASF1584
	.byte	0x5
	.uleb128 0x47b
	.long	.LASF1585
	.byte	0x5
	.uleb128 0x47d
	.long	.LASF1586
	.byte	0x5
	.uleb128 0x47e
	.long	.LASF1587
	.byte	0x5
	.uleb128 0x47f
	.long	.LASF1588
	.byte	0x5
	.uleb128 0x480
	.long	.LASF1589
	.byte	0x5
	.uleb128 0x482
	.long	.LASF1590
	.byte	0x5
	.uleb128 0x483
	.long	.LASF1591
	.byte	0x5
	.uleb128 0x484
	.long	.LASF1592
	.byte	0x5
	.uleb128 0x485
	.long	.LASF1593
	.byte	0x5
	.uleb128 0x487
	.long	.LASF1594
	.byte	0x5
	.uleb128 0x488
	.long	.LASF1595
	.byte	0x5
	.uleb128 0x489
	.long	.LASF1596
	.byte	0x5
	.uleb128 0x48a
	.long	.LASF1597
	.byte	0x5
	.uleb128 0x48c
	.long	.LASF1598
	.byte	0x5
	.uleb128 0x48d
	.long	.LASF1599
	.byte	0x5
	.uleb128 0x48e
	.long	.LASF1600
	.byte	0x5
	.uleb128 0x48f
	.long	.LASF1601
	.byte	0x5
	.uleb128 0x491
	.long	.LASF1602
	.byte	0x5
	.uleb128 0x492
	.long	.LASF1603
	.byte	0x5
	.uleb128 0x493
	.long	.LASF1604
	.byte	0x5
	.uleb128 0x494
	.long	.LASF1605
	.byte	0x5
	.uleb128 0x496
	.long	.LASF1606
	.byte	0x5
	.uleb128 0x497
	.long	.LASF1607
	.byte	0x5
	.uleb128 0x498
	.long	.LASF1608
	.byte	0x5
	.uleb128 0x499
	.long	.LASF1609
	.byte	0x5
	.uleb128 0x49b
	.long	.LASF1610
	.byte	0x5
	.uleb128 0x49c
	.long	.LASF1611
	.byte	0x5
	.uleb128 0x49d
	.long	.LASF1612
	.byte	0x5
	.uleb128 0x49e
	.long	.LASF1613
	.byte	0x5
	.uleb128 0x4a0
	.long	.LASF1614
	.byte	0x5
	.uleb128 0x4a1
	.long	.LASF1615
	.byte	0x5
	.uleb128 0x4a2
	.long	.LASF1616
	.byte	0x5
	.uleb128 0x4a3
	.long	.LASF1617
	.byte	0x5
	.uleb128 0x4a5
	.long	.LASF1618
	.byte	0x5
	.uleb128 0x4a6
	.long	.LASF1619
	.byte	0x5
	.uleb128 0x4a7
	.long	.LASF1620
	.byte	0x5
	.uleb128 0x4a8
	.long	.LASF1621
	.byte	0x5
	.uleb128 0x4aa
	.long	.LASF1622
	.byte	0x5
	.uleb128 0x4ab
	.long	.LASF1623
	.byte	0x5
	.uleb128 0x4ac
	.long	.LASF1624
	.byte	0x5
	.uleb128 0x4ad
	.long	.LASF1625
	.byte	0x5
	.uleb128 0x4af
	.long	.LASF1626
	.byte	0x5
	.uleb128 0x4b0
	.long	.LASF1627
	.byte	0x5
	.uleb128 0x4b1
	.long	.LASF1628
	.byte	0x5
	.uleb128 0x4b2
	.long	.LASF1629
	.byte	0x5
	.uleb128 0x4b4
	.long	.LASF1630
	.byte	0x5
	.uleb128 0x4b5
	.long	.LASF1631
	.byte	0x5
	.uleb128 0x4b6
	.long	.LASF1632
	.byte	0x5
	.uleb128 0x4b7
	.long	.LASF1633
	.byte	0x5
	.uleb128 0x4b9
	.long	.LASF1634
	.byte	0x5
	.uleb128 0x4ba
	.long	.LASF1635
	.byte	0x5
	.uleb128 0x4bb
	.long	.LASF1636
	.byte	0x5
	.uleb128 0x4bc
	.long	.LASF1637
	.byte	0x5
	.uleb128 0x4be
	.long	.LASF1638
	.byte	0x5
	.uleb128 0x4bf
	.long	.LASF1639
	.byte	0x5
	.uleb128 0x4c0
	.long	.LASF1640
	.byte	0x5
	.uleb128 0x4c1
	.long	.LASF1641
	.byte	0x5
	.uleb128 0x4c3
	.long	.LASF1642
	.byte	0x5
	.uleb128 0x4c4
	.long	.LASF1643
	.byte	0x5
	.uleb128 0x4c5
	.long	.LASF1644
	.byte	0x5
	.uleb128 0x4c6
	.long	.LASF1645
	.byte	0x5
	.uleb128 0x4c8
	.long	.LASF1646
	.byte	0x5
	.uleb128 0x4c9
	.long	.LASF1647
	.byte	0x5
	.uleb128 0x4ca
	.long	.LASF1648
	.byte	0x5
	.uleb128 0x4cb
	.long	.LASF1649
	.byte	0x5
	.uleb128 0x4cd
	.long	.LASF1650
	.byte	0x5
	.uleb128 0x4ce
	.long	.LASF1651
	.byte	0x5
	.uleb128 0x4cf
	.long	.LASF1652
	.byte	0x5
	.uleb128 0x4d0
	.long	.LASF1653
	.byte	0x5
	.uleb128 0x4d2
	.long	.LASF1654
	.byte	0x5
	.uleb128 0x4d3
	.long	.LASF1655
	.byte	0x5
	.uleb128 0x4d4
	.long	.LASF1656
	.byte	0x5
	.uleb128 0x4d5
	.long	.LASF1657
	.byte	0x5
	.uleb128 0x4d7
	.long	.LASF1658
	.byte	0x5
	.uleb128 0x4d8
	.long	.LASF1659
	.byte	0x5
	.uleb128 0x4d9
	.long	.LASF1660
	.byte	0x5
	.uleb128 0x4da
	.long	.LASF1661
	.byte	0x5
	.uleb128 0x4dc
	.long	.LASF1662
	.byte	0x5
	.uleb128 0x4dd
	.long	.LASF1663
	.byte	0x5
	.uleb128 0x4de
	.long	.LASF1664
	.byte	0x5
	.uleb128 0x4df
	.long	.LASF1665
	.byte	0x5
	.uleb128 0x4e1
	.long	.LASF1666
	.byte	0x5
	.uleb128 0x4e2
	.long	.LASF1667
	.byte	0x5
	.uleb128 0x4e3
	.long	.LASF1668
	.byte	0x5
	.uleb128 0x4e4
	.long	.LASF1669
	.byte	0x5
	.uleb128 0x4e6
	.long	.LASF1670
	.byte	0x5
	.uleb128 0x4e7
	.long	.LASF1671
	.byte	0x5
	.uleb128 0x4e8
	.long	.LASF1672
	.byte	0x5
	.uleb128 0x4e9
	.long	.LASF1673
	.byte	0x5
	.uleb128 0x4eb
	.long	.LASF1674
	.byte	0x5
	.uleb128 0x4ec
	.long	.LASF1675
	.byte	0x5
	.uleb128 0x4ed
	.long	.LASF1676
	.byte	0x5
	.uleb128 0x4ee
	.long	.LASF1677
	.byte	0x5
	.uleb128 0x4f0
	.long	.LASF1678
	.byte	0x5
	.uleb128 0x4f1
	.long	.LASF1679
	.byte	0x5
	.uleb128 0x4f2
	.long	.LASF1680
	.byte	0x5
	.uleb128 0x4f3
	.long	.LASF1681
	.byte	0x5
	.uleb128 0x4f5
	.long	.LASF1682
	.byte	0x5
	.uleb128 0x4f6
	.long	.LASF1683
	.byte	0x5
	.uleb128 0x4f7
	.long	.LASF1684
	.byte	0x5
	.uleb128 0x4f8
	.long	.LASF1685
	.byte	0x5
	.uleb128 0x4fa
	.long	.LASF1686
	.byte	0x5
	.uleb128 0x4fb
	.long	.LASF1687
	.byte	0x5
	.uleb128 0x4fc
	.long	.LASF1688
	.byte	0x5
	.uleb128 0x4fd
	.long	.LASF1689
	.byte	0x5
	.uleb128 0x4ff
	.long	.LASF1690
	.byte	0x5
	.uleb128 0x500
	.long	.LASF1691
	.byte	0x5
	.uleb128 0x501
	.long	.LASF1692
	.byte	0x5
	.uleb128 0x502
	.long	.LASF1693
	.byte	0x5
	.uleb128 0x504
	.long	.LASF1694
	.byte	0x5
	.uleb128 0x505
	.long	.LASF1695
	.byte	0x5
	.uleb128 0x506
	.long	.LASF1696
	.byte	0x5
	.uleb128 0x507
	.long	.LASF1697
	.byte	0x5
	.uleb128 0x509
	.long	.LASF1698
	.byte	0x5
	.uleb128 0x50a
	.long	.LASF1699
	.byte	0x5
	.uleb128 0x50b
	.long	.LASF1700
	.byte	0x5
	.uleb128 0x50c
	.long	.LASF1701
	.byte	0x5
	.uleb128 0x50e
	.long	.LASF1702
	.byte	0x5
	.uleb128 0x50f
	.long	.LASF1703
	.byte	0x5
	.uleb128 0x510
	.long	.LASF1704
	.byte	0x5
	.uleb128 0x511
	.long	.LASF1705
	.byte	0x5
	.uleb128 0x513
	.long	.LASF1706
	.byte	0x5
	.uleb128 0x514
	.long	.LASF1707
	.byte	0x5
	.uleb128 0x515
	.long	.LASF1708
	.byte	0x5
	.uleb128 0x516
	.long	.LASF1709
	.byte	0x5
	.uleb128 0x518
	.long	.LASF1710
	.byte	0x5
	.uleb128 0x519
	.long	.LASF1711
	.byte	0x5
	.uleb128 0x51a
	.long	.LASF1712
	.byte	0x5
	.uleb128 0x51b
	.long	.LASF1713
	.byte	0x5
	.uleb128 0x51d
	.long	.LASF1714
	.byte	0x5
	.uleb128 0x51e
	.long	.LASF1715
	.byte	0x5
	.uleb128 0x51f
	.long	.LASF1716
	.byte	0x5
	.uleb128 0x520
	.long	.LASF1717
	.byte	0x5
	.uleb128 0x522
	.long	.LASF1718
	.byte	0x5
	.uleb128 0x523
	.long	.LASF1719
	.byte	0x5
	.uleb128 0x524
	.long	.LASF1720
	.byte	0x5
	.uleb128 0x525
	.long	.LASF1721
	.byte	0x5
	.uleb128 0x527
	.long	.LASF1722
	.byte	0x5
	.uleb128 0x528
	.long	.LASF1723
	.byte	0x5
	.uleb128 0x529
	.long	.LASF1724
	.byte	0x5
	.uleb128 0x52a
	.long	.LASF1725
	.byte	0x5
	.uleb128 0x52c
	.long	.LASF1726
	.byte	0x5
	.uleb128 0x52d
	.long	.LASF1727
	.byte	0x5
	.uleb128 0x52e
	.long	.LASF1728
	.byte	0x5
	.uleb128 0x52f
	.long	.LASF1729
	.byte	0x5
	.uleb128 0x531
	.long	.LASF1730
	.byte	0x5
	.uleb128 0x532
	.long	.LASF1731
	.byte	0x5
	.uleb128 0x533
	.long	.LASF1732
	.byte	0x5
	.uleb128 0x534
	.long	.LASF1733
	.byte	0x5
	.uleb128 0x536
	.long	.LASF1734
	.byte	0x5
	.uleb128 0x537
	.long	.LASF1735
	.byte	0x5
	.uleb128 0x538
	.long	.LASF1736
	.byte	0x5
	.uleb128 0x539
	.long	.LASF1737
	.byte	0x5
	.uleb128 0x53b
	.long	.LASF1738
	.byte	0x5
	.uleb128 0x53c
	.long	.LASF1739
	.byte	0x5
	.uleb128 0x53d
	.long	.LASF1740
	.byte	0x5
	.uleb128 0x53e
	.long	.LASF1741
	.byte	0x5
	.uleb128 0x540
	.long	.LASF1742
	.byte	0x5
	.uleb128 0x541
	.long	.LASF1743
	.byte	0x5
	.uleb128 0x542
	.long	.LASF1744
	.byte	0x5
	.uleb128 0x543
	.long	.LASF1745
	.byte	0x5
	.uleb128 0x545
	.long	.LASF1746
	.byte	0x5
	.uleb128 0x546
	.long	.LASF1747
	.byte	0x5
	.uleb128 0x547
	.long	.LASF1748
	.byte	0x5
	.uleb128 0x548
	.long	.LASF1749
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portpins.h.34.ea328448b55f2ce92efd2518b51bb214,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1750
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1751
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1752
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1753
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1754
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1755
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1756
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1757
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1758
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1759
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1760
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1761
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1762
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1763
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1764
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1765
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1766
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1767
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1768
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1769
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1770
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1771
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1772
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1773
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1774
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1775
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1776
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1777
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1778
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1779
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1780
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1781
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1782
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1783
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1784
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1785
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1786
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1787
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1788
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1789
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1790
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1791
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1792
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1793
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1794
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1795
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1796
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1797
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1798
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1799
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1800
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1801
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1802
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1803
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1804
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1805
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1806
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.35.c7e66042b2128622b9d3bddccc9a39f4,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1807
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1808
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1809
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1810
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1811
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1812
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1813
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1814
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1815
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1816
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1817
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1818
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1819
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1820
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1821
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1822
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1823
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1824
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1825
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1826
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1827
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1828
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1829
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1830
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1831
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1832
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1833
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1834
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.version.h.54.cceee89158cf4f97a4615a49702b3742,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1835
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1836
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1837
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1838
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1839
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1840
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1841
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1842
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fuse.h.36.5c373c650020c0efef2cbaa98ea802c3,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1843
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1844
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1845
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.36.f40126c031c14ca4311c8dcce861c2c3,comdat
.Ldebug_macro12:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1846
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1847
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1848
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1849
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1850
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1851
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1852
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1853
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1854
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1855
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1856
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1857
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1858
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1859
	.byte	0x5
	.uleb128 0xed
	.long	.LASF1860
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.36.b2193b640edda749ea0a45a8be5976c8,comdat
.Ldebug_macro13:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1861
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1862
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1863
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1864
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1865
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1866
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1867
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1868
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1869
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1870
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1871
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1872
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1873
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1874
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1875
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.atomic.h.205.88929679e1286d8c76c23352e0ed69d9,comdat
.Ldebug_macro14:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1876
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1877
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF1878
	.byte	0x5
	.uleb128 0x109
	.long	.LASF1879
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF1880
	.byte	0x5
	.uleb128 0x130
	.long	.LASF1881
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.hardware.h.12.03b30cf510bb7e4427f14cd032ed5a00,comdat
.Ldebug_macro15:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1882
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF1883
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1884
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF1885
	.byte	0x5
	.uleb128 0x20
	.long	.LASF1886
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1887
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1888
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1889
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1890
	.byte	0x5
	.uleb128 0x27
	.long	.LASF1891
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1892
	.byte	0x5
	.uleb128 0x29
	.long	.LASF1893
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1894
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1895
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1896
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1897
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1898
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1899
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1900
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1901
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1902
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1903
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1904
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1905
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1906
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1907
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1908
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1909
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1910
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1911
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1912
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1913
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1914
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1915
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1916
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1917
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1918
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1919
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1920
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1921
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1922
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1923
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1924
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1925
	.byte	0x5
	.uleb128 0x52
	.long	.LASF1926
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1927
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1928
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1929
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1930
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1931
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1932
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1933
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1934
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1935
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1936
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1937
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1938
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1939
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1940
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1941
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1942
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1943
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1944
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1945
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1946
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1947
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF1948
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF1949
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1950
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1951
	.byte	0x5
	.uleb128 0x70
	.long	.LASF1952
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1953
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1954
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1955
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1956
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1957
	.byte	0x5
	.uleb128 0x78
	.long	.LASF1958
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1959
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1960
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1961
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1962
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1963
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF1964
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1965
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1966
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1967
	.byte	0x5
	.uleb128 0x82
	.long	.LASF1968
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1969
	.byte	0x5
	.uleb128 0x84
	.long	.LASF1970
	.byte	0x5
	.uleb128 0x85
	.long	.LASF1971
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1972
	.byte	0x5
	.uleb128 0x87
	.long	.LASF1973
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1974
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1975
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1976
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1977
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1978
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1979
	.byte	0x5
	.uleb128 0x91
	.long	.LASF1980
	.byte	0x5
	.uleb128 0x94
	.long	.LASF1981
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1982
	.byte	0x5
	.uleb128 0x96
	.long	.LASF1983
	.byte	0x5
	.uleb128 0x97
	.long	.LASF1984
	.byte	0x5
	.uleb128 0x98
	.long	.LASF1985
	.byte	0x5
	.uleb128 0x99
	.long	.LASF1986
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1987
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF1988
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF1989
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mixer.h.12.a1db8b83249747a7432df579235d950a,comdat
.Ldebug_macro16:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1991
	.byte	0x5
	.uleb128 0xe
	.long	.LASF1992
	.byte	0x5
	.uleb128 0xf
	.long	.LASF1993
	.byte	0x5
	.uleb128 0x10
	.long	.LASF1994
	.byte	0x5
	.uleb128 0x11
	.long	.LASF1995
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1996
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.36.9f5700ad4301e1636116f1a1ade2d757,comdat
.Ldebug_macro17:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1998
	.byte	0x5
	.uleb128 0x25
	.long	.LASF1999
	.byte	0x5
	.uleb128 0x26
	.long	.LASF2000
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.global.h.33.832b1fa3cf694c3fa58490d7b7f4ac1a,comdat
.Ldebug_macro18:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.long	.LASF2001
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF2002
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF2003
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF2004
	.byte	0x5
	.uleb128 0x30
	.long	.LASF2005
	.byte	0x5
	.uleb128 0x31
	.long	.LASF2006
	.byte	0x5
	.uleb128 0x32
	.long	.LASF2007
	.byte	0x5
	.uleb128 0x35
	.long	.LASF2008
	.byte	0x5
	.uleb128 0x36
	.long	.LASF2009
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.rx.h.12.7cbdbe9eac0fc32b6350184c0805d4fe,comdat
.Ldebug_macro19:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.long	.LASF2010
	.byte	0x5
	.uleb128 0x12
	.long	.LASF2011
	.byte	0x5
	.uleb128 0x13
	.long	.LASF2012
	.byte	0x5
	.uleb128 0x15
	.long	.LASF2013
	.byte	0x5
	.uleb128 0x16
	.long	.LASF2014
	.byte	0x5
	.uleb128 0x17
	.long	.LASF2015
	.byte	0x5
	.uleb128 0x18
	.long	.LASF444
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
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.41.adab7e6dcc4d6376af4646fccbf62a81,comdat
.Ldebug_macro20:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF2022
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF2023
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF2024
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.184.159df79b4ca79c76561572a55985524c,comdat
.Ldebug_macro21:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF2025
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF2026
	.byte	0x5
	.uleb128 0xba
	.long	.LASF2027
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF2028
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF2029
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF2030
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF2031
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF2032
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF2033
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF2034
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF2035
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF2036
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF2037
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF2038
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF2039
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF2040
	.byte	0x5
	.uleb128 0xce
	.long	.LASF2041
	.byte	0x6
	.uleb128 0xea
	.long	.LASF2042
	.byte	0x6
	.uleb128 0x18d
	.long	.LASF2043
	.byte	0x5
	.uleb128 0x192
	.long	.LASF2044
	.byte	0x6
	.uleb128 0x198
	.long	.LASF2045
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.48.ce63499b71e9564b3d424a68725fbb5d,comdat
.Ldebug_macro22:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x30
	.long	.LASF2046
	.byte	0x5
	.uleb128 0x34
	.long	.LASF2047
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF2048
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.83.f733e4c5dcfb33a192ad6b47d9b443d0,comdat
.Ldebug_macro23:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.long	.LASF2049
	.byte	0x5
	.uleb128 0x55
	.long	.LASF2024
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.234.7b49b621169e2007451b8fadbcc644ca,comdat
.Ldebug_macro24:
	.word	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xea
	.long	.LASF2042
	.byte	0x6
	.uleb128 0x198
	.long	.LASF2045
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pgmspace.h.95.4b1f290dcac8567fba23d5be3ddbb2aa,comdat
.Ldebug_macro25:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF2050
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF2051
	.byte	0x5
	.uleb128 0x176
	.long	.LASF2052
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF2053
	.byte	0x5
	.uleb128 0x194
	.long	.LASF2054
	.byte	0x5
	.uleb128 0x197
	.long	.LASF2055
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF2056
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF2057
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF2058
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF2059
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF2060
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF2061
	.byte	0x5
	.uleb128 0x206
	.long	.LASF2062
	.byte	0x5
	.uleb128 0x216
	.long	.LASF2063
	.byte	0x5
	.uleb128 0x226
	.long	.LASF2064
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF2065
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF2066
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF2067
	.byte	0x5
	.uleb128 0x260
	.long	.LASF2068
	.byte	0x5
	.uleb128 0x261
	.long	.LASF2069
	.byte	0x5
	.uleb128 0x262
	.long	.LASF2070
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF2071
	.byte	0x5
	.uleb128 0x286
	.long	.LASF2072
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF2073
	.byte	0x5
	.uleb128 0x297
	.long	.LASF2074
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF2075
	.byte	0x5
	.uleb128 0x416
	.long	.LASF2076
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF2077
	.byte	0x5
	.uleb128 0x428
	.long	.LASF2078
	.byte	0x5
	.uleb128 0x431
	.long	.LASF2079
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF2080
	.byte	0x5
	.uleb128 0x45d
	.long	.LASF2081
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1169:
	.string	"OCR1AH5 5"
.LASF253:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF1929:
	.string	"RX_THR_DDR DDRD"
.LASF1713:
	.string	"PCINT9_BIT 1"
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
.LASF1502:
	.string	"MISO_DDR DDRB"
.LASF1725:
	.string	"PCINT10_BIT 2"
.LASF1225:
	.string	"OCR2B_1 1"
.LASF33:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF653:
	.string	"DDRA _SFR_IO8(0x01)"
.LASF1808:
	.string	"SPL _SFR_IO8(0x3D)"
.LASF436:
	.string	"SIMULATOR 1"
.LASF1416:
	.string	"TIMER1_CAPT_vect _VECTOR(12)"
.LASF878:
	.string	"GPIOR25 5"
.LASF1898:
	.string	"LCD_RST_BIT 6"
.LASF1499:
	.string	"PCINT13_PORT PORTB"
.LASF1683:
	.string	"ADC0_PORT PORTA"
.LASF1971:
	.string	"OUT7 _REG_BIT(OUT_PORT, OUT7_BIT)"
.LASF1079:
	.string	"MUX2 2"
.LASF763:
	.string	"OCF2A 1"
.LASF1125:
	.string	"TCNT1H _SFR_MEM8(0x85)"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF1809:
	.string	"SP _SFR_IO16(0x3D)"
.LASF1151:
	.string	"ICR1H6 6"
.LASF1875:
	.string	"ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
.LASF1276:
	.string	"TWIE 0"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF1734:
	.string	"PCINT11_DDR DDRB"
.LASF803:
	.string	"EEAR _SFR_IO16(0x21)"
.LASF555:
	.string	"PRIXLEAST8 \"X\""
.LASF870:
	.string	"GPIOR16 6"
.LASF613:
	.string	"SCNuFAST32 \"lu\""
.LASF121:
	.string	"__INTPTR_MAX__ 32767"
.LASF1226:
	.string	"OCR2B_2 2"
.LASF984:
	.string	"PCIE2 2"
.LASF1770:
	.string	"PIN4 4"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1308:
	.string	"RXCIE0 7"
.LASF2143:
	.string	"Camera"
.LASF1698:
	.string	"PCINT8_DDR DDRB"
.LASF1554:
	.string	"PCINT28_DDR DDRD"
.LASF2074:
	.string	"pgm_read_float_near(address_short) __LPM_float((uint16_t)(address_short))"
.LASF929:
	.string	"BORF 2"
.LASF675:
	.string	"PINB3 3"
.LASF1303:
	.string	"UCSZ02 2"
.LASF512:
	.string	"TICKSTOMICRO(t) ((t) / TICKSPERMICRO)"
.LASF1016:
	.string	"PCINT20 4"
.LASF1534:
	.string	"INT0_DDR DDRD"
.LASF1769:
	.string	"PIN5 5"
.LASF1185:
	.string	"OCR1BH2 2"
.LASF1010:
	.string	"PCINT15 7"
.LASF889:
	.string	"SPIE0 7"
.LASF1391:
	.string	"UDR1_6 6"
.LASF521:
	.string	"_AVR_IO_H_ "
.LASF489:
	.string	"INTPTR_MIN INT16_MIN"
.LASF469:
	.string	"UINT_LEAST16_MAX UINT16_MAX"
.LASF1613:
	.string	"PCINT20_BIT 4"
.LASF1161:
	.string	"OCR1AL6 6"
.LASF2164:
	.string	"modelTable"
.LASF1925:
	.string	"RX_ELE_PIN PIND"
.LASF450:
	.string	"__CONCATenate(left,right) left ## right"
.LASF935:
	.string	"PUD 4"
.LASF1109:
	.string	"WGM13 4"
.LASF451:
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF0:
	.string	"__STDC__ 1"
.LASF2147:
	.string	"SelfLevel"
.LASF1928:
	.string	"RX_ELE_DIR _REG_BIT(RX_ELE_DDR, RX_ELE_BIT)"
.LASF773:
	.string	"INTF2 2"
.LASF41:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF1378:
	.string	"UBRR_7 7"
.LASF1404:
	.string	"PCINT2_vect _VECTOR(6)"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF957:
	.string	"CLKPR _SFR_MEM8(0x61)"
.LASF1841:
	.string	"__AVR_LIBC_MINOR__ 8"
.LASF1090:
	.string	"ADC4D 4"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF1057:
	.string	"ADCH3 3"
.LASF1976:
	.string	"KEYBOARD_PIN PINB"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF1207:
	.string	"TCNT2_1 1"
.LASF520:
	.string	"_UTIL_ATOMIC_H_ 1"
.LASF2017:
	.string	"AX2 5"
.LASF1481:
	.string	"FUSE_JTAGEN (unsigned char)~_BV(6)"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF1930:
	.string	"RX_THR_PIN PIND"
.LASF51:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF1143:
	.string	"ICR1L7 7"
.LASF905:
	.string	"ACIS1 1"
.LASF1504:
	.string	"MISO_PIN PINB"
.LASF443:
	.string	"YAW 2"
.LASF864:
	.string	"GPIOR10 0"
.LASF331:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF790:
	.string	"EEMPE 2"
.LASF1370:
	.string	"UBRR1L _SFR_MEM8(0xCC)"
.LASF591:
	.string	"SCNd32 \"ld\""
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF1399:
	.string	"PCINT0_vect_num 4"
.LASF148:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF302:
	.string	"__UDA_IBIT__ 32"
.LASF1123:
	.string	"TCNT1L6 6"
.LASF434:
	.string	"__ELF__ 1"
.LASF707:
	.string	"DDRC _SFR_IO8(0x07)"
.LASF20:
	.string	"__SIZEOF_LONG__ 4"
.LASF552:
	.string	"PRIxLEAST8 \"x\""
.LASF1846:
	.string	"_AVR_LOCK_H_ 1"
.LASF2044:
	.string	"NULL ((void *)0)"
.LASF1704:
	.string	"T1_PIN PINB"
.LASF1408:
	.string	"WDT_vect _VECTOR(8)"
.LASF1986:
	.string	"BUZZER _REG_BIT(BUZZER_PORT, BUZZER_BIT)"
.LASF1733:
	.string	"OC0A_BIT 3"
.LASF1113:
	.string	"FOC1B 6"
.LASF1177:
	.string	"OCR1BL3 3"
.LASF642:
	.string	"_AVR_IOXXX_H_ \"iom324pa.h\""
.LASF1577:
	.string	"PCINT30_BIT 6"
.LASF536:
	.string	"PRIiFAST16 \"i\""
.LASF1251:
	.string	"TWPS1 1"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 255"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF744:
	.string	"PORTD0 0"
.LASF1816:
	.string	"SREG_S (4)"
.LASF739:
	.string	"DDD4 4"
.LASF983:
	.string	"PCIE1 1"
.LASF59:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF2124:
	.string	"RX_chmap"
.LASF722:
	.string	"PORTC5 5"
.LASF142:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF1272:
	.string	"TWD5 5"
.LASF1837:
	.string	"__AVR_LIBC_VERSION__ 10800UL"
.LASF491:
	.string	"INTMAX_MAX INT64_MAX"
.LASF1365:
	.string	"UPM10 4"
.LASF2168:
	.string	"CONTROL"
.LASF68:
	.string	"__INTPTR_TYPE__ int"
.LASF1453:
	.string	"_VECTOR_SIZE 4"
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF248:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF1049:
	.string	"ADCL4 4"
.LASF486:
	.string	"INT_FAST64_MIN INT64_MIN"
.LASF1237:
	.string	"TCN2UB 4"
.LASF475:
	.string	"UINT_LEAST64_MAX UINT64_MAX"
.LASF138:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF2175:
	.string	"mixerLoadModel"
.LASF595:
	.string	"SCNiLEAST32 \"li\""
.LASF99:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1267:
	.string	"TWD0 0"
.LASF1710:
	.string	"PCINT9_DDR DDRB"
.LASF1352:
	.string	"TXB81 0"
.LASF361:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF356:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF2106:
	.string	"Name"
.LASF1094:
	.string	"DIDR1 _SFR_MEM8(0x7F)"
.LASF1033:
	.string	"PCMSK3 _SFR_MEM8(0x73)"
.LASF1088:
	.string	"ADC2D 2"
.LASF1889:
	.string	"LED_PIN PINB"
.LASF1561:
	.string	"OC1A_BIT 5"
.LASF265:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF493:
	.string	"UINTMAX_MAX UINT64_MAX"
.LASF1062:
	.string	"ADCSRA _SFR_MEM8(0x7A)"
.LASF1714:
	.string	"AIN0_DDR DDRB"
.LASF1596:
	.string	"SDA_PIN PINC"
.LASF944:
	.string	"RWWSRE 4"
.LASF1663:
	.string	"PCINT3_PORT PORTA"
.LASF1648:
	.string	"PCINT5_PIN PINA"
.LASF455:
	.string	"INT16_MAX 0x7fff"
.LASF1860:
	.string	"LOCKBITS_DEFAULT (0xFF)"
.LASF482:
	.string	"INT_FAST32_MAX INT32_MAX"
.LASF1220:
	.string	"OCR2A_5 5"
.LASF1275:
	.string	"TWCR _SFR_MEM8(0xBC)"
.LASF754:
	.string	"OCF0A 1"
.LASF758:
	.string	"OCF1A 1"
.LASF861:
	.string	"OCR0B_6 6"
.LASF2008:
	.string	"MODE_NORMAL 0"
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF730:
	.string	"PIND4 4"
.LASF603:
	.string	"SCNuLEAST16 \"u\""
.LASF85:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF1439:
	.string	"ADC_vect_num 24"
.LASF1652:
	.string	"ADC4_PIN PINA"
.LASF934:
	.string	"IVSEL 1"
.LASF1940:
	.string	"RX_AUX_PIN PINB"
.LASF815:
	.string	"EEAR9 1"
.LASF1197:
	.string	"COM2A1 7"
.LASF1241:
	.string	"TWBR0 0"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF690:
	.string	"PORTB0 0"
.LASF1477:
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
.LASF685:
	.string	"DDB4 4"
.LASF2102:
	.string	"Offset"
.LASF618:
	.string	"SCNuPTR SCNu16"
.LASF1894:
	.string	"LCD_PORT PORTD"
.LASF668:
	.string	"PORTA5 5"
.LASF1657:
	.string	"PCINT4_BIT 4"
.LASF1844:
	.string	"FUSEMEM __attribute__((__used__, __section__ (\".fuse\")))"
.LASF417:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF363:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF1454:
	.string	"_VECTORS_SIZE (31 * _VECTOR_SIZE)"
.LASF954:
	.string	"WDP3 5"
.LASF911:
	.string	"ACD 7"
.LASF537:
	.string	"PRId32 \"ld\""
.LASF1437:
	.string	"ANALOG_COMP_vect_num 23"
.LASF920:
	.string	"OCDR7 7"
.LASF872:
	.string	"GPIOR2 _SFR_IO8(0x2B)"
.LASF1319:
	.string	"UBRR0L _SFR_MEM8(0xC4)"
.LASF1581:
	.string	"OC2A_BIT 7"
.LASF1305:
	.string	"RXEN0 4"
.LASF1874:
	.string	"ISR_NAKED __attribute__((naked))"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF1688:
	.string	"PCINT0_PIN PINA"
.LASF1598:
	.string	"PCINT17_DDR DDRC"
.LASF1367:
	.string	"UMSEL10 6"
.LASF1252:
	.string	"TWS3 3"
.LASF522:
	.string	"_AVR_SFR_DEFS_H_ 1"
.LASF582:
	.string	"PRIuPTR PRIu16"
.LASF656:
	.string	"DDA2 2"
.LASF1607:
	.string	"PCINT19_PORT PORTC"
.LASF1422:
	.string	"TIMER1_OVF_vect _VECTOR(15)"
.LASF268:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF2114:
	.string	"IGain"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF65:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF340:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF804:
	.string	"EEARL _SFR_IO8(0x21)"
.LASF66:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF998:
	.string	"PCINT4 4"
.LASF1887:
	.string	"LED_PORT PORTB"
.LASF19:
	.string	"__SIZEOF_INT__ 2"
.LASF2110:
	.string	"model_t"
.LASF2062:
	.ascii	"__LPM_dword_tiny__(addr) (__ext"
	.string	"ension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint32_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1625:
	.string	"PCINT23_BIT 7"
.LASF879:
	.string	"GPIOR26 6"
.LASF778:
	.string	"GPIOR0 _SFR_IO8(0x1E)"
.LASF1425:
	.string	"TIMER0_COMPB_vect_num 17"
.LASF1924:
	.string	"RX_ELE_DDR DDRD"
.LASF1881:
	.string	"NONATOMIC_FORCEOFF uint8_t sreg_save __attribute__((__cleanup__(__iCliParam))) = 0"
.LASF1080:
	.string	"MUX3 3"
.LASF2036:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF397:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF504:
	.string	"UINT32_C(value) __CONCAT(value, UL)"
.LASF1897:
	.string	"LCD_CS_BIT 5"
.LASF1152:
	.string	"ICR1H7 7"
.LASF1643:
	.string	"ADC5_PORT PORTA"
.LASF1223:
	.string	"OCR2B _SFR_MEM8(0xB4)"
.LASF2078:
	.string	"pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
.LASF1552:
	.string	"OC1B_PIN PIND"
.LASF1555:
	.string	"PCINT28_PORT PORTD"
.LASF2167:
	.string	"State"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF1823:
	.string	"YH r29"
.LASF321:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF55:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF2090:
	.string	"int32_t"
.LASF1132:
	.string	"TCNT1H6 6"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF496:
	.string	"SIG_ATOMIC_MAX INT8_MAX"
.LASF326:
	.string	"__AVR__ 1"
.LASF676:
	.string	"PINB4 4"
.LASF1501:
	.string	"PCINT13_BIT 5"
.LASF1662:
	.string	"PCINT3_DDR DDRA"
.LASF952:
	.string	"WDE 3"
.LASF1012:
	.string	"PCINT16 0"
.LASF1031:
	.string	"OCIE2A 1"
.LASF1063:
	.string	"ADPS0 0"
.LASF1186:
	.string	"OCR1BH3 3"
.LASF150:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF1015:
	.string	"PCINT19 3"
.LASF1232:
	.string	"ASSR _SFR_MEM8(0xB6)"
.LASF2022:
	.string	"_STRING_H_ 1"
.LASF269:
	.string	"__QQ_FBIT__ 7"
.LASF1259:
	.string	"TWA0 1"
.LASF1162:
	.string	"OCR1AL7 7"
.LASF1746:
	.string	"PCINT12_DDR DDRB"
.LASF1727:
	.string	"AIN1_PORT PORTB"
.LASF1492:
	.string	"SIGNATURE_1 0x95"
.LASF1838:
	.string	"__AVR_LIBC_DATE_STRING__ \"20111229\""
.LASF28:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF1380:
	.string	"UBRR_8 0"
.LASF1979:
	.string	"KEY_S3_BIT 5"
.LASF418:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF600:
	.string	"SCNoLEAST16 \"o\""
.LASF1529:
	.string	"TXD_BIT 1"
.LASF1334:
	.string	"UDR0_0 0"
.LASF1789:
	.string	"PB6 PORTB6"
.LASF1751:
	.string	"PORT7 7"
.LASF1058:
	.string	"ADCH4 4"
.LASF1775:
	.string	"PA0 PORTA0"
.LASF939:
	.string	"SPMCSR _SFR_IO8(0x37)"
.LASF1208:
	.string	"TCNT2_2 2"
.LASF908:
	.string	"ACI 4"
.LASF83:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF2127:
	.string	"CalibrateFlags"
.LASF40:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF36:
	.string	"__PTRDIFF_TYPE__ int"
.LASF1766:
	.string	"DD0 0"
.LASF250:
	.string	"__LACCUM_IBIT__ 32"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF865:
	.string	"GPIOR11 1"
.LASF303:
	.string	"__UTA_FBIT__ 48"
.LASF1942:
	.string	"RX_AUX _REG_BIT(RX_AUX_PIN, RX_AUX_BIT)"
.LASF2054:
	.string	"PSTR(s) (__extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
.LASF1053:
	.string	"ADCH _SFR_MEM8(0x79)"
.LASF1659:
	.string	"ADC3_PORT PORTA"
.LASF1629:
	.string	"ADC7_BIT 7"
.LASF818:
	.string	"GTCCR _SFR_IO8(0x23)"
.LASF785:
	.string	"GPIOR06 6"
.LASF498:
	.string	"SIZE_MAX (__CONCAT(INT16_MAX, U))"
.LASF1124:
	.string	"TCNT1L7 7"
.LASF1277:
	.string	"TWEN 2"
.LASF527:
	.string	"PRIdFAST8 \"d\""
.LASF619:
	.string	"SCNxPTR SCNx16"
.LASF562:
	.string	"PRIuFAST16 \"u\""
.LASF650:
	.string	"PINA5 5"
.LASF1866:
	.string	"ISR(vector,...) void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF1990:
	.string	"CONFIG_H_ "
.LASF2070:
	.string	"__LPM_float(addr) __LPM_float_enhanced__(addr)"
.LASF1873:
	.string	"ISR_NOBLOCK __attribute__((interrupt))"
.LASF322:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF1605:
	.string	"PCINT18_BIT 2"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF1545:
	.string	"INT1_BIT 3"
.LASF1178:
	.string	"OCR1BL4 4"
.LASF1974:
	.string	"KEYBOARD_PORT PORTB"
.LASF1064:
	.string	"ADPS1 1"
.LASF1549:
	.string	"PCINT27_BIT 3"
.LASF488:
	.string	"INTPTR_MAX INT16_MAX"
.LASF745:
	.string	"PORTD1 1"
.LASF740:
	.string	"DDD5 5"
.LASF1895:
	.string	"LCD_DDR DDRD"
.LASF723:
	.string	"PORTC6 6"
.LASF2091:
	.string	"long int"
.LASF1273:
	.string	"TWD6 6"
.LASF1618:
	.string	"PCINT22_DDR DDRC"
.LASF1664:
	.string	"PCINT3_PIN PINA"
.LASF795:
	.string	"EEDR0 0"
.LASF820:
	.string	"PSRASY 1"
.LASF2073:
	.string	"pgm_read_dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
.LASF1022:
	.string	"OCIE0A 1"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF473:
	.string	"INT_LEAST64_MAX INT64_MAX"
.LASF1433:
	.string	"USART0_UDRE_vect_num 21"
.LASF1100:
	.string	"COM1B0 4"
.LASF2176:
	.string	"index"
.LASF1214:
	.string	"OCR2A _SFR_MEM8(0xB3)"
.LASF495:
	.string	"PTRDIFF_MIN INT16_MIN"
.LASF2111:
	.string	"mixer_t"
.LASF1978:
	.string	"KEY_S2_BIT 6"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF2039:
	.string	"_GCC_SIZE_T "
.LASF1419:
	.string	"TIMER1_COMPB_vect_num 14"
.LASF1939:
	.string	"RX_AUX_DDR DDRB"
.LASF1802:
	.string	"PD3 PORTD3"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF592:
	.string	"SCNdLEAST32 \"ld\""
.LASF327:
	.string	"AVR 1"
.LASF570:
	.string	"PRIoLEAST32 \"lo\""
.LASF1331:
	.string	"UBRR10 2"
.LASF1557:
	.string	"PCINT28_BIT 4"
.LASF2005:
	.string	"ERR_NO_YAW 0x04"
.LASF2068:
	.string	"__LPM_word(addr) __LPM_word_enhanced__(addr)"
.LASF428:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF645:
	.string	"PINA0 0"
.LASF1249:
	.string	"TWSR _SFR_MEM8(0xB9)"
.LASF689:
	.string	"PORTB _SFR_IO8(0x05)"
.LASF672:
	.string	"PINB0 0"
.LASF2007:
	.string	"ERR_NO_RX (ERR_NO_ROLL | ERR_NO_PITCH | ERR_NO_YAW | ERR_NO_THR)"
.LASF2137:
	.string	"HeightDampening"
.LASF1494:
	.string	"MOSI_DDR DDRB"
.LASF1949:
	.string	"PWM_CAL_RANGE 100"
.LASF463:
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
.LASF423:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF1221:
	.string	"OCR2A_6 6"
.LASF2077:
	.string	"pgm_read_word(address_short) pgm_read_word_near(address_short)"
.LASF1530:
	.string	"PCINT25_DDR DDRD"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF862:
	.string	"OCR0B_7 7"
.LASF731:
	.string	"PIND5 5"
.LASF1447:
	.string	"USART1_RX_vect_num 28"
.LASF979:
	.string	"CAL6 6"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF1488:
	.string	"__LOCK_BITS_EXIST "
.LASF575:
	.string	"PRIx32 \"lx\""
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
.LASF1426:
	.string	"TIMER0_COMPB_vect _VECTOR(17)"
.LASF1737:
	.string	"PCINT11_BIT 3"
.LASF1242:
	.string	"TWBR1 1"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1465:
	.string	"FUSE_MEMORY_SIZE 3"
.LASF691:
	.string	"PORTB1 1"
.LASF1322:
	.string	"UBRR2 2"
.LASF1810:
	.string	"SPH _SFR_IO8(0x3E)"
.LASF774:
	.string	"EIMSK _SFR_IO8(0x1D)"
.LASF846:
	.string	"OCR0A_0 0"
.LASF1896:
	.string	"LCD_PIN PIND"
.LASF2136:
	.string	"LCDContrast"
.LASF821:
	.string	"TSM 7"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF578:
	.string	"PRIX32 \"lX\""
.LASF1654:
	.string	"PCINT4_DDR DDRA"
.LASF459:
	.string	"INT32_MIN (-INT32_MAX - 1L)"
.LASF1356:
	.string	"RXEN1 4"
.LASF912:
	.string	"OCDR _SFR_IO8(0x31)"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF1957:
	.string	"OUT_DDR DDRC"
.LASF1368:
	.string	"UMSEL11 7"
.LASF1253:
	.string	"TWS4 4"
.LASF1379:
	.string	"UBRR1H _SFR_MEM8(0xCD)"
.LASF2081:
	.string	"pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __volatile__( \"ldi\t%A0, lo8(%1)\" \"\\n\\t\" \"ldi\t%B0, hi8(%1)\" \"\\n\\t\" \"ldi\t%C0, hh8(%1)\" \"\\n\\t\" \"clr\t%D0\" \"\\n\\t\" : \"=d\" (tmp) : \"p\" (&(var)) ); tmp; })"
.LASF359:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF895:
	.string	"SPDRB0 0"
.LASF1171:
	.string	"OCR1AH7 7"
.LASF2174:
	.string	"mixerInit"
.LASF2119:
	.string	"PitchGain"
.LASF883:
	.string	"SPR10 1"
.LASF2004:
	.string	"ERR_NO_PITCH 0x02"
.LASF936:
	.string	"BODSE 5"
.LASF379:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF319:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF999:
	.string	"PCINT5 5"
.LASF1919:
	.string	"RX_AIL_DDR DDRD"
.LASF426:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF1571:
	.string	"OC2B_PORT PORTD"
.LASF880:
	.string	"GPIOR27 7"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF1542:
	.string	"INT1_DDR DDRD"
.LASF1689:
	.string	"PCINT0_BIT 0"
.LASF1434:
	.string	"USART0_UDRE_vect _VECTOR(21)"
.LASF374:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF1409:
	.string	"TIMER2_COMPA_vect_num 9"
.LASF1081:
	.string	"MUX4 4"
.LASF964:
	.string	"PRADC 0"
.LASF1744:
	.string	"OC0B_PIN PINB"
.LASF1120:
	.string	"TCNT1L3 3"
.LASF1093:
	.string	"ADC7D 7"
.LASF432:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF906:
	.string	"ACIC 2"
.LASF1995:
	.string	"FLAG_HIGH 4"
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF1442:
	.string	"EE_READY_vect _VECTOR(25)"
.LASF1768:
	.string	"PIN6 6"
.LASF1133:
	.string	"TCNT1H7 7"
.LASF1227:
	.string	"OCR2B_3 3"
.LASF699:
	.string	"PINC0 0"
.LASF490:
	.string	"UINTPTR_MAX UINT16_MAX"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF2012:
	.string	"RX_MODE_CPPM 1"
.LASF2130:
	.string	"AutoDisarm"
.LASF1105:
	.string	"CS10 0"
.LASF1748:
	.string	"PCINT12_PIN PINB"
.LASF805:
	.string	"EEAR0 0"
.LASF677:
	.string	"PINB5 5"
.LASF1257:
	.string	"TWAR _SFR_MEM8(0xBA)"
.LASF1018:
	.string	"PCINT22 6"
.LASF760:
	.string	"ICF1 5"
.LASF501:
	.string	"INT16_C(value) value"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF1187:
	.string	"OCR1BH4 4"
.LASF654:
	.string	"DDA0 0"
.LASF535:
	.string	"PRIiLEAST16 \"i\""
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF910:
	.string	"ACBG 6"
.LASF1192:
	.string	"WGM20 0"
.LASF550:
	.string	"PRIuFAST8 \"u\""
.LASF1570:
	.string	"OC2B_DDR DDRD"
.LASF556:
	.string	"PRIXFAST8 \"X\""
.LASF1411:
	.string	"TIMER2_COMPB_vect_num 10"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF1728:
	.string	"AIN1_PIN PINB"
.LASF1535:
	.string	"INT0_PORT PORTD"
.LASF2041:
	.string	"__size_t "
.LASF1464:
	.string	"FLASHEND (0x7FFF)"
.LASF1460:
	.string	"XRAMSIZE (0)"
.LASF1097:
	.string	"TCCR1A _SFR_MEM8(0x80)"
.LASF1531:
	.string	"PCINT25_PORT PORTD"
.LASF1597:
	.string	"SDA_BIT 1"
.LASF909:
	.string	"ACO 5"
.LASF1869:
	.string	"ISR_ALIAS(vector,tgt) void vector (void) __attribute__((signal, naked, __INTR_ATTRS)); void vector (void) { asm volatile (\"jmp \" __STRINGIFY(tgt) ::); }"
.LASF1335:
	.string	"UDR0_1 1"
.LASF1336:
	.string	"UDR0_2 2"
.LASF517:
	.string	"EVERYUS(us) static uint32_t __CONCAT(_t,__LINE__); for(uint32_t _m = ticks(); _m - __CONCAT(_t,__LINE__) >= MICROTOTICKS(us); __CONCAT(_t,__LINE__) = _m)"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF1796:
	.string	"PC5 PORTC5"
.LASF1209:
	.string	"TCNT2_3 3"
.LASF318:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF50:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF2019:
	.string	"AX4 7"
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF791:
	.string	"EERIE 3"
.LASF604:
	.string	"SCNuFAST16 \"u\""
.LASF1107:
	.string	"CS12 2"
.LASF2163:
	.string	"mixerOutput"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF1201:
	.string	"CS22 2"
.LASF1392:
	.string	"UDR1_7 7"
.LASF866:
	.string	"GPIOR12 2"
.LASF1962:
	.string	"OUT3_BIT 2"
.LASF1154:
	.string	"OCR1AL _SFR_MEM8(0x88)"
.LASF1369:
	.string	"UBRR1 _SFR_MEM16(0xCC)"
.LASF1911:
	.string	"LCD_SDA_DIR _REG_BIT(LCD_DDR, LCD_SDA_BIT)"
.LASF594:
	.string	"SCNi32 \"li\""
.LASF786:
	.string	"GPIOR07 7"
.LASF1084:
	.string	"REFS1 7"
.LASF1858:
	.string	"BLB1_MODE_3 (0xCF)"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF947:
	.string	"SPMIE 7"
.LASF483:
	.string	"INT_FAST32_MIN INT32_MIN"
.LASF226:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF940:
	.string	"SPMEN 0"
.LASF337:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF2002:
	.string	"ERR_NOT_CALIBRATED 0x80"
.LASF2033:
	.string	"_BSD_SIZE_T_ "
.LASF427:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF1351:
	.string	"UCSR1B _SFR_MEM8(0xC9)"
.LASF2086:
	.string	"unsigned char"
.LASF631:
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
.LASF1179:
	.string	"OCR1BL5 5"
.LASF390:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF76:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF1296:
	.string	"FE0 4"
.LASF624:
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
.LASF1328:
	.string	"UBRR0H _SFR_MEM8(0xC5)"
.LASF746:
	.string	"PORTD2 2"
.LASF29:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1020:
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
.LASF741:
	.string	"DDD6 6"
.LASF1822:
	.string	"YL r28"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF2031:
	.string	"__SIZE_T "
.LASF764:
	.string	"OCF2B 2"
.LASF2101:
	.string	"Rudder"
.LASF1274:
	.string	"TWD7 7"
.LASF1696:
	.string	"T0_PIN PINB"
.LASF1021:
	.string	"TOIE0 0"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF796:
	.string	"EEDR1 1"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF1398:
	.string	"INT2_vect _VECTOR(3)"
.LASF1701:
	.string	"PCINT8_BIT 0"
.LASF2172:
	.string	"../src/mixer.c"
.LASF1471:
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
.LASF1622:
	.string	"PCINT23_DDR DDRC"
.LASF1101:
	.string	"COM1B1 5"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF2009:
	.string	"MODE_ESC_CAL 1"
.LASF1468:
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
.LASF823:
	.string	"WGM00 0"
.LASF669:
	.string	"PORTA6 6"
.LASF1633:
	.string	"PCINT7_BIT 7"
.LASF973:
	.string	"CAL0 0"
.LASF1640:
	.string	"PCINT6_PIN PINA"
.LASF1945:
	.string	"PWM_MIN 900"
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF1933:
	.string	"RX_THR_DIR _REG_BIT(RX_THR_DDR, RX_THR_BIT)"
.LASF26:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF526:
	.string	"PRIdLEAST8 \"d\""
.LASF1907:
	.string	"LCD_CS_DIR _REG_BIT(LCD_DDR, LCD_CS_BIT)"
.LASF186:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF1496:
	.string	"MOSI_PIN PINB"
.LASF2063:
	.ascii	"__LPM_dword_enhanced_"
	.string	"_(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF1635:
	.string	"ADC6_PORT PORTA"
.LASF2126:
	.string	"ACC_zero"
.LASF2122:
	.string	"signature"
.LASF1967:
	.string	"OUT5 _REG_BIT(OUT_PORT, OUT5_BIT)"
.LASF1332:
	.string	"UBRR11 3"
.LASF765:
	.string	"PCIFR _SFR_IO8(0x1B)"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF2029:
	.string	"_T_SIZE_ "
.LASF1961:
	.string	"OUT2 _REG_BIT(OUT_PORT, OUT2_BIT)"
.LASF2021:
	.string	"PWM_H_ "
.LASF1899:
	.string	"LCD_A0_BIT 7"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF924:
	.string	"SM1 2"
.LASF1722:
	.string	"PCINT10_DDR DDRB"
.LASF412:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF1451:
	.string	"USART1_TX_vect_num 30"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF1948:
	.string	"PWM_MAX 2100"
.LASF1280:
	.string	"TWSTA 5"
.LASF372:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF759:
	.string	"OCF1B 2"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF732:
	.string	"PIND6 6"
.LASF1418:
	.string	"TIMER1_COMPA_vect _VECTOR(13)"
.LASF980:
	.string	"CAL7 7"
.LASF539:
	.string	"PRIdFAST32 \"ld\""
.LASF1739:
	.string	"SS_PORT PORTB"
.LASF2051:
	.string	"PROGMEM __ATTR_PROGMEM__"
.LASF21:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF525:
	.string	"PRId8 \"d\""
.LASF557:
	.string	"PRIo16 \"o\""
.LASF709:
	.string	"DDC1 1"
.LASF937:
	.string	"BODS 6"
.LASF1243:
	.string	"TWBR2 2"
.LASF1013:
	.string	"PCINT17 1"
.LASF2128:
	.string	"SelfLevelMode"
.LASF687:
	.string	"DDB6 6"
.LASF847:
	.string	"OCR0A_1 1"
.LASF1294:
	.string	"UPE0 2"
.LASF2010:
	.string	"RX_H_ "
.LASF755:
	.string	"OCF0B 2"
.LASF997:
	.string	"PCINT3 3"
.LASF338:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF1511:
	.string	"SCK_PORT PORTB"
.LASF1067:
	.string	"ADIF 4"
.LASF993:
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
.LASF1135:
	.string	"ICR1L _SFR_MEM8(0x86)"
.LASF95:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF1936:
	.string	"RX_RUD_BIT 2"
.LASF1711:
	.string	"PCINT9_PORT PORTB"
.LASF1965:
	.string	"OUT4 _REG_BIT(OUT_PORT, OUT4_BIT)"
.LASF894:
	.string	"SPDR0 _SFR_IO8(0x2E)"
.LASF497:
	.string	"SIG_ATOMIC_MIN INT8_MIN"
.LASF1687:
	.string	"PCINT0_PORT PORTA"
.LASF1716:
	.string	"AIN0_PIN PINB"
.LASF1342:
	.string	"UCSR1A _SFR_MEM8(0xC8)"
.LASF2112:
	.string	"PGain"
.LASF896:
	.string	"SPDRB1 1"
.LASF2097:
	.string	"IsHiRate"
.LASF2132:
	.string	"ReceiverMode"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF2026:
	.string	"__SIZE_T__ "
.LASF1228:
	.string	"OCR2B_4 4"
.LASF1000:
	.string	"PCINT6 6"
.LASF254:
	.string	"__ULACCUM_FBIT__ 32"
.LASF1116:
	.string	"TCNT1L _SFR_MEM8(0x84)"
.LASF113:
	.string	"__INT_FAST8_MAX__ 127"
.LASF553:
	.string	"PRIxFAST8 \"x\""
.LASF1254:
	.string	"TWS5 5"
.LASF1890:
	.string	"LED_BIT 3"
.LASF1642:
	.string	"ADC5_DDR DDRA"
.LASF586:
	.string	"SCNdLEAST16 \"d\""
.LASF1396:
	.string	"INT1_vect _VECTOR(2)"
.LASF1671:
	.string	"PCINT2_PORT PORTA"
.LASF1583:
	.string	"PCINT31_PORT PORTD"
.LASF1916:
	.string	"ADC_ACC_Y 6"
.LASF394:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF766:
	.string	"PCIF0 0"
.LASF304:
	.string	"__UTA_IBIT__ 16"
.LASF1985:
	.string	"BUZZER_DIR _REG_BIT(BUZZER_DDR, BUZZER_BIT)"
.LASF1573:
	.string	"OC2B_BIT 6"
.LASF2003:
	.string	"ERR_NO_ROLL 0x01"
.LASF171:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF128:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF1969:
	.string	"OUT6 _REG_BIT(OUT_PORT, OUT6_BIT)"
.LASF700:
	.string	"PINC1 1"
.LASF2138:
	.string	"HeightDampeningLimit"
.LASF2050:
	.string	"__ATTR_PROGMEM__ __attribute__((__progmem__))"
.LASF32:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1590:
	.string	"PCINT16_DDR DDRC"
.LASF1106:
	.string	"CS11 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF806:
	.string	"EEAR1 1"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF1612:
	.string	"PCINT20_PIN PINC"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF1901:
	.string	"LCD_SDA_BIT 1"
.LASF1019:
	.string	"PCINT23 7"
.LASF1014:
	.string	"PCINT18 2"
.LASF913:
	.string	"OCDR0 0"
.LASF1723:
	.string	"PCINT10_PORT PORTB"
.LASF1065:
	.string	"ADPS2 2"
.LASF1188:
	.string	"OCR1BH5 5"
.LASF388:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF655:
	.string	"DDA1 1"
.LASF1667:
	.string	"ADC2_PORT PORTA"
.LASF1525:
	.string	"PCINT24_BIT 0"
.LASF775:
	.string	"INT0 0"
.LASF1432:
	.string	"USART0_RX_vect _VECTOR(20)"
.LASF615:
	.string	"SCNxLEAST32 \"lx\""
.LASF1193:
	.string	"WGM21 1"
.LASF94:
	.string	"__UINT16_MAX__ 65535U"
.LASF2049:
	.string	"__PGMSPACE_H_ 1"
.LASF1261:
	.string	"TWA2 3"
.LASF531:
	.string	"PRId16 \"d\""
.LASF362:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF1730:
	.string	"OC0A_DDR DDRB"
.LASF1914:
	.string	"ADC_GYR_Z 2"
.LASF819:
	.string	"PSRSYNC 0"
.LASF1783:
	.string	"PB0 PORTB0"
.LASF813:
	.string	"EEARH _SFR_IO8(0x22)"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF627:
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF1603:
	.string	"PCINT18_PORT PORTC"
.LASF632:
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
.LASF743:
	.string	"PORTD _SFR_IO8(0x0B)"
.LASF1695:
	.string	"T0_PORT PORTB"
.LASF989:
	.string	"ISC10 2"
.LASF1060:
	.string	"ADCH6 6"
.LASF2088:
	.string	"uint16_t"
.LASF1210:
	.string	"TCNT2_4 4"
.LASF174:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF92:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF74:
	.string	"__INT_MAX__ 32767"
.LASF1333:
	.string	"UDR0 _SFR_MEM8(0xC6)"
.LASF146:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF1478:
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
.LASF1973:
	.string	"OUT8 _REG_BIT(OUT_PORT, OUT8_BIT)"
.LASF2152:
	.string	"Error"
.LASF1764:
	.string	"DD2 2"
.LASF64:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF1620:
	.string	"PCINT22_PIN PINC"
.LASF867:
	.string	"GPIOR13 3"
.LASF1075:
	.string	"ACME 6"
.LASF2020:
	.string	"CONTROLLER_H_ "
.LASF567:
	.string	"PRIXLEAST16 \"X\""
.LASF1558:
	.string	"OC1A_DDR DDRD"
.LASF1656:
	.string	"PCINT4_PIN PINA"
.LASF1002:
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
.LASF470:
	.string	"INT_LEAST32_MAX INT32_MAX"
.LASF513:
	.string	"WAITMS(ms) "
.LASF518:
	.string	"FIXEDUS(us) for(uint32_t __m = ticks(); ticks() - __m < MICROTOTICKS(us); __iWaitForTicks(__m, MICROTOTICKS(us)))"
.LASF1475:
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
.LASF485:
	.string	"INT_FAST64_MAX INT64_MAX"
.LASF1619:
	.string	"PCINT22_PORT PORTC"
.LASF1851:
	.string	"LB_MODE_3 (0xFC)"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF1466:
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
.LASF1436:
	.string	"USART0_TX_vect _VECTOR(22)"
.LASF2014:
	.string	"ELE 1"
.LASF528:
	.string	"PRIi8 \"i\""
.LASF1553:
	.string	"OC1B_BIT 4"
.LASF942:
	.string	"PGWRT 2"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF1849:
	.string	"LB_MODE_1 (0xFF)"
.LASF1347:
	.string	"FE1 4"
.LASF452:
	.string	"INT8_MAX 0x7f"
.LASF1784:
	.string	"PB1 PORTB1"
.LASF747:
	.string	"PORTD3 3"
.LASF1082:
	.string	"ADLAR 5"
.LASF742:
	.string	"DDD7 7"
.LASF1518:
	.string	"RXD_DDR DDRD"
.LASF1717:
	.string	"AIN0_BIT 2"
.LASF646:
	.string	"PINA1 1"
.LASF1781:
	.string	"PA6 PORTA6"
.LASF1069:
	.string	"ADSC 6"
.LASF931:
	.string	"JTRF 4"
.LASF1777:
	.string	"PA2 PORTA2"
.LASF1025:
	.string	"TOIE1 0"
.LASF1850:
	.string	"LB_MODE_2 (0xFE)"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF1164:
	.string	"OCR1AH0 0"
.LASF474:
	.string	"INT_LEAST64_MIN INT64_MIN"
.LASF577:
	.string	"PRIxFAST32 \"lx\""
.LASF1052:
	.string	"ADCL7 7"
.LASF1323:
	.string	"UBRR3 3"
.LASF2157:
	.string	"size_t"
.LASF316:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF824:
	.string	"WGM01 1"
.LASF1371:
	.string	"UBRR_0 0"
.LASF1403:
	.string	"PCINT2_vect_num 6"
.LASF1872:
	.string	"ISR_BLOCK "
.LASF429:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF681:
	.string	"DDB0 0"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF2084:
	.string	"uint8_t"
.LASF1910:
	.string	"LCD_SCL_DIR _REG_BIT(LCD_DDR, LCD_SCL_BIT)"
.LASF1415:
	.string	"TIMER1_CAPT_vect_num 12"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF480:
	.string	"INT_FAST16_MIN INT16_MIN"
.LASF1799:
	.string	"PD0 PORTD0"
.LASF446:
	.string	"length(array) (sizeof(array)/sizeof(*array))"
.LASF1721:
	.string	"INT2_BIT 2"
.LASF1136:
	.string	"ICR1L0 0"
.LASF184:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1309:
	.string	"UCSR0C _SFR_MEM8(0xC2)"
.LASF1877:
	.string	"NONATOMIC_BLOCK(type) for ( type, __ToDo = __iSeiRetVal(); __ToDo ; __ToDo = 0 )"
.LASF399:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF1864:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF1479:
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
.LASF1792:
	.string	"PC1 PORTC1"
.LASF1284:
	.string	"TWAM0 1"
.LASF827:
	.string	"COM0A0 6"
.LASF332:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF678:
	.string	"PINB6 6"
.LASF1044:
	.string	"ADCL _SFR_MEM8(0x78)"
.LASF2156:
	.string	"state_t"
.LASF346:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF673:
	.string	"PINB1 1"
.LASF1785:
	.string	"PB2 PORTB2"
.LASF1951:
	.string	"LO_RATE_CYCLE 20"
.LASF444:
	.string	"THR 3"
.LASF415:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF2047:
	.string	"__ATTR_CONST__ __attribute__((__const__))"
.LASF585:
	.string	"SCNd16 \"d\""
.LASF1861:
	.string	"_AVR_INTERRUPT_H_ "
.LASF925:
	.string	"SM2 3"
.LASF1563:
	.string	"PCINT29_PORT PORTD"
.LASF1972:
	.string	"OUT8_BIT 7"
.LASF101:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF1584:
	.string	"PCINT31_PIN PIND"
.LASF1927:
	.string	"RX_ELE _REG_BIT(RX_ELE_PIN, RX_ELE_BIT)"
.LASF2038:
	.string	"___int_size_t_h "
.LASF1072:
	.string	"ADTS0 0"
.LASF733:
	.string	"PIND7 7"
.LASF351:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF392:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF606:
	.string	"SCNxLEAST16 \"x\""
.LASF1498:
	.string	"PCINT13_DDR DDRB"
.LASF350:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF1279:
	.string	"TWSTO 4"
.LASF710:
	.string	"DDC2 2"
.LASF841:
	.string	"TCNT0_4 4"
.LASF1244:
	.string	"TWBR3 3"
.LASF2024:
	.string	"__need_size_t "
.LASF693:
	.string	"PORTB3 3"
.LASF625:
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
.LASF1324:
	.string	"UBRR4 4"
.LASF1463:
	.string	"E2PAGESIZE (4)"
.LASF308:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF848:
	.string	"OCR0A_2 2"
.LASF1401:
	.string	"PCINT1_vect_num 5"
.LASF1800:
	.string	"PD1 PORTD1"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF1565:
	.string	"PCINT29_BIT 5"
.LASF1430:
	.string	"SPI_STC_vect _VECTOR(19)"
.LASF395:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF1183:
	.string	"OCR1BH0 0"
.LASF1086:
	.string	"ADC0D 0"
.LASF511:
	.string	"MICROTOTICKS(us) ((us) * TICKSPERMICRO)"
.LASF320:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1793:
	.string	"PC2 PORTC2"
.LASF2155:
	.string	"CalculationTime"
.LASF8:
	.string	"__VERSION__ \"4.8.1\""
.LASF421:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF1345:
	.string	"UPE1 2"
.LASF1255:
	.string	"TWS6 6"
.LASF1091:
	.string	"ADC5D 5"
.LASF1786:
	.string	"PB3 PORTB3"
.LASF2042:
	.string	"__need_size_t"
.LASF897:
	.string	"SPDRB2 2"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF360:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF1229:
	.string	"OCR2B_5 5"
.LASF289:
	.string	"__HA_FBIT__ 7"
.LASF1001:
	.string	"PCINT7 7"
.LASF605:
	.string	"SCNx16 \"x\""
.LASF246:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF396:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF569:
	.string	"PRIo32 \"lo\""
.LASF1473:
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF1486:
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
.LASF596:
	.string	"SCNiFAST32 \"li\""
.LASF437:
	.string	"GLOBAL_H_ "
.LASF1862:
	.string	"__STRINGIFY(x) #x"
.LASF1497:
	.string	"MOSI_BIT 5"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF2060:
	.string	"__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF139:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1917:
	.string	"ADC_ACC_Z 7"
.LASF1878:
	.string	"ATOMIC_RESTORESTATE uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = SREG"
.LASF509:
	.string	"_GCC_WRAP_STDINT_H "
.LASF1362:
	.string	"UCSZ10 1"
.LASF1639:
	.string	"PCINT6_PORT PORTA"
.LASF1705:
	.string	"T1_BIT 1"
.LASF607:
	.string	"SCNxFAST16 \"x\""
.LASF1674:
	.string	"ADC1_DDR DDRA"
.LASF907:
	.string	"ACIE 3"
.LASF116:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF1298:
	.string	"TXC0 6"
.LASF1801:
	.string	"PD2 PORTD2"
.LASF601:
	.string	"SCNoFAST16 \"o\""
.LASF932:
	.string	"MCUCR _SFR_IO8(0x35)"
.LASF1165:
	.string	"OCR1AH1 1"
.LASF1709:
	.string	"CLKO_BIT 1"
.LASF701:
	.string	"PINC2 2"
.LASF1987:
	.string	"BUZZER_TOGGLE (_REG_BIT(BUZZER_PIN, BUZZER_BIT) = 1)"
.LASF1363:
	.string	"UCSZ11 2"
.LASF1794:
	.string	"PC3 PORTC3"
.LASF1198:
	.string	"TCCR2B _SFR_MEM8(0xB1)"
.LASF1034:
	.string	"PCINT24 0"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF807:
	.string	"EEAR2 2"
.LASF838:
	.string	"TCNT0_1 1"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF31:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF1474:
	.string	"LFUSE_DEFAULT (FUSE_CKDIV8 & FUSE_SUT1 & FUSE_SUT0 & FUSE_CKSEL3 & FUSE_CKSEL2 & FUSE_CKSEL0)"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF914:
	.string	"OCDR1 1"
.LASF2057:
	.string	"__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm %0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF1189:
	.string	"OCR1BH6 6"
.LASF771:
	.string	"INTF0 0"
.LASF1551:
	.string	"OC1B_PORT PORTD"
.LASF776:
	.string	"INT1 1"
.LASF63:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF1202:
	.string	"WGM22 3"
.LASF574:
	.string	"PRIuFAST32 \"lu\""
.LASF2016:
	.string	"AX1 4"
.LASF1262:
	.string	"TWA3 4"
.LASF1983:
	.string	"BUZZER_PIN PINB"
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF626:
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
.LASF1736:
	.string	"PCINT11_PIN PINB"
.LASF1470:
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
.LASF2056:
	.string	"__LPM_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint8_t __result; __asm__ ( \"ld %0, z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF1337:
	.string	"UDR0_3 3"
.LASF2131:
	.string	"LinkRollPitch"
.LASF990:
	.string	"ISC11 3"
.LASF1306:
	.string	"UDRIE0 5"
.LASF1061:
	.string	"ADCH7 7"
.LASF240:
	.string	"__ACCUM_IBIT__ 16"
.LASF638:
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
.LASF2113:
	.string	"PLimit"
.LASF2145:
	.string	"Armed"
.LASF1868:
	.string	"EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF1579:
	.string	"OC2A_PORT PORTD"
.LASF339:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF499:
	.string	"INT8_C(value) ((int8_t) value)"
.LASF2144:
	.string	"config_t"
.LASF1920:
	.string	"RX_AIL_PIN PIND"
.LASF1310:
	.string	"UCPOL0 0"
.LASF868:
	.string	"GPIOR14 4"
.LASF639:
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
.LASF1153:
	.string	"OCR1A _SFR_MEM16(0x88)"
.LASF1428:
	.string	"TIMER0_OVF_vect _VECTOR(18)"
.LASF609:
	.string	"SCNoLEAST32 \"lo\""
.LASF1145:
	.string	"ICR1H0 0"
.LASF1749:
	.string	"PCINT12_BIT 4"
.LASF405:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF1299:
	.string	"RXC0 7"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF885:
	.string	"CPOL0 3"
.LASF212:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF863:
	.string	"GPIOR1 _SFR_IO8(0x2A)"
.LASF1204:
	.string	"FOC2A 7"
.LASF329:
	.string	"__AVR_ATmega324PA__ 1"
.LASF1684:
	.string	"ADC0_PIN PINA"
.LASF1515:
	.string	"PCINT15_PORT PORTB"
.LASF79:
	.string	"__WINT_MAX__ 32767"
.LASF494:
	.string	"PTRDIFF_MAX INT16_MAX"
.LASF515:
	.string	"EVERYMS(ms) static uint16_t __CONCAT(_t,__LINE__); for(uint16_t _m = millis(); _m - __CONCAT(_t,__LINE__) >= ms; __CONCAT(_t,__LINE__) = _m)"
.LASF1632:
	.string	"PCINT7_PIN PINA"
.LASF231:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF1181:
	.string	"OCR1BL7 7"
.LASF48:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF1144:
	.string	"ICR1H _SFR_MEM8(0x87)"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF1821:
	.string	"XH r27"
.LASF202:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF647:
	.string	"PINA2 2"
.LASF1999:
	.string	"SELFLEVEL_AUX 1"
.LASF1445:
	.string	"SPM_READY_vect_num 27"
.LASF985:
	.string	"PCIE3 3"
.LASF1385:
	.string	"UDR1_0 0"
.LASF2120:
	.string	"PitchOffset"
.LASF1030:
	.string	"TOIE2 0"
.LASF798:
	.string	"EEDR3 3"
.LASF1155:
	.string	"OCR1AL0 0"
.LASF1114:
	.string	"FOC1A 7"
.LASF205:
	.string	"__UFRACT_IBIT__ 0"
.LASF1493:
	.string	"SIGNATURE_2 0x11"
.LASF1421:
	.string	"TIMER1_OVF_vect_num 15"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF75:
	.string	"__LONG_MAX__ 2147483647L"
.LASF487:
	.string	"UINT_FAST64_MAX UINT64_MAX"
.LASF833:
	.string	"WGM02 3"
.LASF1372:
	.string	"UBRR_1 1"
.LASF670:
	.string	"PORTA7 7"
.LASF756:
	.string	"TIFR1 _SFR_IO8(0x16)"
.LASF724:
	.string	"PORTC7 7"
.LASF965:
	.string	"PRUSART0 1"
.LASF467:
	.string	"INT_LEAST16_MAX INT16_MAX"
.LASF438:
	.string	"F_CPU 20000000"
.LASF1621:
	.string	"PCINT22_BIT 6"
.LASF357:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF958:
	.string	"CLKPS0 0"
.LASF1606:
	.string	"PCINT19_DDR DDRC"
.LASF1191:
	.string	"TCCR2A _SFR_MEM8(0xB0)"
.LASF1883:
	.string	"_REG_BIT2(r,b) ((*(_bitreg8*)&r).bit ## b)"
.LASF1904:
	.string	"LCD_A0 _REG_BIT(LCD_PORT, LCD_A0_BIT)"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF2139:
	.string	"ServoFilter"
.LASF955:
	.string	"WDIE 6"
.LASF1278:
	.string	"TWWC 3"
.LASF1758:
	.string	"PORT0 0"
.LASF1285:
	.string	"TWAM1 2"
.LASF70:
	.string	"__GXX_ABI_VERSION 1002"
.LASF986:
	.string	"EICRA _SFR_MEM8(0x69)"
.LASF1865:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF1117:
	.string	"TCNT1L0 0"
.LASF1991:
	.string	"MIXER_H_ "
.LASF981:
	.string	"PCICR _SFR_MEM8(0x68)"
.LASF49:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF61:
	.string	"__INT_FAST16_TYPE__ int"
.LASF946:
	.string	"RWWSB 6"
.LASF206:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF2072:
	.string	"pgm_read_word_near(address_short) __LPM_word((uint16_t)(address_short))"
.LASF1440:
	.string	"ADC_vect _VECTOR(24)"
.LASF612:
	.string	"SCNuLEAST32 \"lu\""
.LASF541:
	.string	"PRIiLEAST32 \"li\""
.LASF1708:
	.string	"CLKO_PIN PINB"
.LASF2121:
	.string	"camera_t"
.LASF323:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF2055:
	.string	"__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); uint8_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) : \"r0\" ); __result; }))"
.LASF835:
	.string	"FOC0A 7"
.LASF1073:
	.string	"ADTS1 1"
.LASF1194:
	.string	"COM2B0 4"
.LASF1083:
	.string	"REFS0 6"
.LASF1888:
	.string	"LED_DDR DDRB"
.LASF2080:
	.string	"pgm_read_ptr(address_short) pgm_read_ptr_near(address_short)"
.LASF1617:
	.string	"PCINT21_BIT 5"
.LASF711:
	.string	"DDC3 3"
.LASF1245:
	.string	"TWBR4 4"
.LASF694:
	.string	"PORTB4 4"
.LASF1791:
	.string	"PC0 PORTC0"
.LASF1760:
	.string	"DD6 6"
.LASF1325:
	.string	"UBRR5 5"
.LASF52:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF514:
	.string	"WAITUS(ms) "
.LASF849:
	.string	"OCR0A_3 3"
.LASF665:
	.string	"PORTA2 2"
.LASF692:
	.string	"PORTB2 2"
.LASF1646:
	.string	"PCINT5_DDR DDRA"
.LASF1715:
	.string	"AIN0_PORT PORTB"
.LASF1484:
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF348:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF1697:
	.string	"T0_BIT 0"
.LASF1343:
	.string	"MPCM1 0"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF1934:
	.string	"RX_RUD_DDR DDRB"
.LASF519:
	.string	"LOOPUS(us) for(uint32_t _cycleStart = ticks(); 1; __iWaitForTicks(_cycleStart, MICROTOTICKS(us)), _cycleStart += MICROTOTICKS(us))"
.LASF237:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF1256:
	.string	"TWS7 7"
.LASF391:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF1491:
	.string	"SIGNATURE_0 0x1E"
.LASF898:
	.string	"SPDRB3 3"
.LASF1059:
	.string	"ADCH5 5"
.LASF1519:
	.string	"RXD_PORT PORTD"
.LASF2061:
	.ascii	"__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint32_t __result; __asm__ __volatile"
	.ascii	"__ ( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1003:
	.string	"PCINT8 0"
.LASF1050:
	.string	"ADCL5 5"
.LASF1732:
	.string	"OC0A_PIN PINB"
.LASF1230:
	.string	"OCR2B_6 6"
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF1115:
	.string	"TCNT1 _SFR_MEM16(0x84)"
.LASF1960:
	.string	"OUT2_BIT 4"
.LASF1110:
	.string	"ICES1 6"
.LASF1616:
	.string	"PCINT21_PIN PINC"
.LASF1818:
	.string	"SREG_T (6)"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF251:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF1918:
	.string	"ADC_VBAT 3"
.LASF409:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF67:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF922:
	.string	"SE 0"
.LASF548:
	.string	"PRIu8 \"u\""
.LASF481:
	.string	"UINT_FAST16_MAX UINT16_MAX"
.LASF768:
	.string	"PCIF2 2"
.LASF855:
	.string	"OCR0B_0 0"
.LASF1349:
	.string	"TXC1 6"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF1886:
	.string	"INPUT 0"
.LASF792:
	.string	"EEPM0 4"
.LASF352:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF410:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF702:
	.string	"PINC3 3"
.LASF2083:
	.string	"int8_t"
.LASF1765:
	.string	"DD1 1"
.LASF1450:
	.string	"USART1_UDRE_vect _VECTOR(29)"
.LASF1040:
	.string	"PCINT30 6"
.LASF1035:
	.string	"PCINT25 1"
.LASF808:
	.string	"EEAR3 3"
.LASF839:
	.string	"TCNT0_2 2"
.LASF623:
	.string	"__SFR_OFFSET 0x20"
.LASF264:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF554:
	.string	"PRIX8 \"X\""
.LASF915:
	.string	"OCDR2 2"
.LASF1517:
	.string	"PCINT15_BIT 7"
.LASF1190:
	.string	"OCR1BH7 7"
.LASF1024:
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
.LASF772:
	.string	"INTF1 1"
.LASF2177:
	.string	"pwmWrite"
.LASF777:
	.string	"INT2 2"
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF425:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF1459:
	.string	"XRAMSTART (0x0)"
.LASF1260:
	.string	"TWA1 2"
.LASF1263:
	.string	"TWA4 5"
.LASF1931:
	.string	"RX_THR_BIT 0"
.LASF1550:
	.string	"OC1B_DDR DDRD"
.LASF1699:
	.string	"PCINT8_PORT PORTB"
.LASF1427:
	.string	"TIMER0_OVF_vect_num 18"
.LASF1236:
	.string	"OCR2AUB 3"
.LASF1580:
	.string	"OC2A_PIN PIND"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF1863:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF588:
	.string	"SCNi16 \"i\""
.LASF1467:
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
.LASF1636:
	.string	"ADC6_PIN PINA"
.LASF1767:
	.string	"PIN7 7"
.LASF53:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF454:
	.string	"UINT8_MAX (__CONCAT(INT8_MAX, U) * 2U + 1U)"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF1170:
	.string	"OCR1AH6 6"
.LASF637:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF1338:
	.string	"UDR0_4 4"
.LASF1825:
	.string	"ZH r31"
.LASF1402:
	.string	"PCINT1_vect _VECTOR(5)"
.LASF1357:
	.string	"UDRIE1 5"
.LASF445:
	.string	"noinit __attribute__((section(\".noinit\")))"
.LASF256:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF1212:
	.string	"TCNT2_6 6"
.LASF1304:
	.string	"TXEN0 3"
.LASF341:
	.string	"__WITH_AVRLIBC__ 1"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF873:
	.string	"GPIOR20 0"
.LASF378:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF978:
	.string	"CAL5 5"
.LASF1913:
	.string	"ADC_GYR_Y 1"
.LASF1970:
	.string	"OUT7_BIT 5"
.LASF869:
	.string	"GPIOR15 5"
.LASF1472:
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
.LASF1394:
	.string	"INT0_vect _VECTOR(1)"
.LASF1759:
	.string	"DD7 7"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF558:
	.string	"PRIoLEAST16 \"o\""
.LASF1397:
	.string	"INT2_vect_num 3"
.LASF2104:
	.string	"sizetype"
.LASF1350:
	.string	"RXC1 7"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF1487:
	.string	"EFUSE_DEFAULT (0xFF)"
.LASF2045:
	.string	"__need_NULL"
.LASF1068:
	.string	"ADATE 5"
.LASF1203:
	.string	"FOC2B 6"
.LASF1996:
	.string	"MODEL_TABLE_LEN 22"
.LASF652:
	.string	"PINA7 7"
.LASF679:
	.string	"PINB7 7"
.LASF1126:
	.string	"TCNT1H0 0"
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF1909:
	.string	"LCD_A0_DIR _REG_BIT(LCD_DDR, LCD_A0_BIT)"
.LASF441:
	.string	"ROL 0"
.LASF2135:
	.string	"MinThrottle"
.LASF458:
	.string	"INT32_MAX 0x7fffffffL"
.LASF2087:
	.string	"int16_t"
.LASF749:
	.string	"PORTD5 5"
.LASF1546:
	.string	"PCINT27_DDR DDRD"
.LASF648:
	.string	"PINA3 3"
.LASF2001:
	.string	"THROTTLE_OFF 5"
.LASF1005:
	.string	"PCINT10 2"
.LASF2085:
	.string	"signed char"
.LASF1386:
	.string	"UDR1_1 1"
.LASF1366:
	.string	"UPM11 5"
.LASF1994:
	.string	"FLAG_ESC 1"
.LASF1959:
	.string	"OUT1 _REG_BIT(OUT_PORT, OUT1_BIT)"
.LASF507:
	.string	"INTMAX_C(value) __CONCAT(value, LL)"
.LASF799:
	.string	"EEDR4 4"
.LASF1156:
	.string	"OCR1AL1 1"
.LASF2069:
	.string	"__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
.LASF1672:
	.string	"PCINT2_PIN PINA"
.LASF2025:
	.string	"__size_t__ "
.LASF1302:
	.string	"RXB80 1"
.LASF2075:
	.string	"pgm_read_ptr_near(address_short) (void*)__LPM_word((uint16_t)(address_short))"
.LASF377:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF141:
	.string	"__DBL_DIG__ 6"
.LASF476:
	.string	"INT_FAST8_MAX INT8_MAX"
.LASF1373:
	.string	"UBRR_2 2"
.LASF584:
	.string	"PRIXPTR PRIX16"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF1599:
	.string	"PCINT17_PORT PORTC"
.LASF27:
	.string	"__CHAR_BIT__ 8"
.LASF39:
	.string	"__INTMAX_TYPE__ long long int"
.LASF968:
	.string	"PRUSART1 4"
.LASF621:
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
.LASF1981:
	.string	"BUZZER_PORT PORTB"
.LASF1089:
	.string	"ADC3D 3"
.LASF959:
	.string	"CLKPS1 1"
.LASF1180:
	.string	"OCR1BL6 6"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF2116:
	.string	"pid_param_t"
.LASF1572:
	.string	"OC2B_PIN PIND"
.LASF90:
	.string	"__INT16_MAX__ 32767"
.LASF1138:
	.string	"ICR1L2 2"
.LASF881:
	.string	"SPCR0 _SFR_IO8(0x2C)"
.LASF956:
	.string	"WDIF 7"
.LASF1286:
	.string	"TWAM2 3"
.LASF2134:
	.string	"StickScaling"
.LASF1847:
	.string	"LOCKMEM __attribute__((__used__, __section__ (\".lock\")))"
.LASF2079:
	.string	"pgm_read_float(address_short) pgm_read_float_near(address_short)"
.LASF147:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF779:
	.string	"GPIOR00 0"
.LASF686:
	.string	"DDB5 5"
.LASF1836:
	.string	"__AVR_LIBC_VERSION_STRING__ \"1.8.0svn\""
.LASF1118:
	.string	"TCNT1L1 1"
.LASF969:
	.string	"PRTIM0 5"
.LASF464:
	.string	"INT_LEAST8_MAX INT8_MAX"
.LASF1520:
	.string	"RXD_PIN PIND"
.LASF1856:
	.string	"BLB1_MODE_1 (0xFF)"
.LASF1615:
	.string	"PCINT21_PORT PORTC"
.LASF1845:
	.string	"FUSES __fuse_t __fuse FUSEMEM"
.LASF1566:
	.string	"ICP_DDR DDRD"
.LASF953:
	.string	"WDCE 4"
.LASF223:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF2066:
	.ascii	"__LPM_float_enhanc"
	.string	"ed__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr); float __result; __asm__ __volatile__ ( \"lpm %A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF566:
	.string	"PRIX16 \"X\""
.LASF927:
	.string	"PORF 0"
.LASF834:
	.string	"FOC0B 6"
.LASF549:
	.string	"PRIuLEAST8 \"u\""
.LASF1074:
	.string	"ADTS2 2"
.LASF1400:
	.string	"PCINT0_vect _VECTOR(4)"
.LASF1195:
	.string	"COM2B1 5"
.LASF948:
	.string	"WDTCSR _SFR_MEM8(0x60)"
.LASF1313:
	.string	"USBS0 3"
.LASF431:
	.string	"__INT24_MAX__ 8388607L"
.LASF717:
	.string	"PORTC0 0"
.LASF2096:
	.string	"IsServo"
.LASF712:
	.string	"DDC4 4"
.LASF1017:
	.string	"PCINT21 5"
.LASF892:
	.string	"WCOL0 6"
.LASF1246:
	.string	"TWBR5 5"
.LASF635:
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF695:
	.string	"PORTB5 5"
.LASF1247:
	.string	"TWBR6 6"
.LASF1548:
	.string	"PCINT27_PIN PIND"
.LASF1326:
	.string	"UBRR6 6"
.LASF433:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF408:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF1992:
	.string	"FLAG_NONE 0"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF1314:
	.string	"UPM00 4"
.LASF115:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF165:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF1575:
	.string	"PCINT30_PORT PORTD"
.LASF611:
	.string	"SCNu32 \"lu\""
.LASF1871:
	.string	"BADISR_vect __vector_default"
.LASF1891:
	.string	"LED _REG_BIT(LED_PORT, LED_BIT)"
.LASF1429:
	.string	"SPI_STC_vect_num 19"
.LASF2129:
	.string	"ArmingMode"
.LASF2052:
	.string	"PGM_P const char *"
.LASF1510:
	.string	"SCK_DDR DDRB"
.LASF315:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF899:
	.string	"SPDRB4 4"
.LASF1870:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF393:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF1435:
	.string	"USART0_TX_vect_num 22"
.LASF1004:
	.string	"PCINT9 1"
.LASF1129:
	.string	"TCNT1H3 3"
.LASF1087:
	.string	"ADC1D 1"
.LASF1568:
	.string	"ICP_PIN PIND"
.LASF1231:
	.string	"OCR2B_7 7"
.LASF324:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF1023:
	.string	"OCIE0B 2"
.LASF197:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF1032:
	.string	"OCIE2B 2"
.LASF1361:
	.string	"UCPOL1 0"
.LASF335:
	.string	"__AVR_MEGA__ 1"
.LASF1508:
	.string	"PCINT14_PIN PINB"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF644:
	.string	"PINA _SFR_IO8(0x00)"
.LASF2095:
	.string	"IsMotor"
.LASF1131:
	.string	"TCNT1H5 5"
.LASF376:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF1111:
	.string	"ICNC1 7"
.LASF1215:
	.string	"OCR2A_0 0"
.LASF1384:
	.string	"UDR1 _SFR_MEM8(0xCE)"
.LASF1307:
	.string	"TXCIE0 6"
.LASF1807:
	.string	"_AVR_COMMON_H "
.LASF769:
	.string	"PCIF3 3"
.LASF856:
	.string	"OCR0B_1 1"
.LASF1812:
	.string	"SREG_C (0)"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF837:
	.string	"TCNT0_0 0"
.LASF793:
	.string	"EEPM1 5"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
.LASF703:
	.string	"PINC4 4"
.LASF1839:
	.string	"__AVR_LIBC_DATE_ 20111229UL"
.LASF416:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF1041:
	.string	"PCINT31 7"
.LASF1036:
	.string	"PCINT26 2"
.LASF2118:
	.string	"RollOffset"
.LASF809:
	.string	"EEAR4 4"
.LASF840:
	.string	"TCNT0_3 3"
.LASF1455:
	.string	"SPM_PAGESIZE (128)"
.LASF1761:
	.string	"DD5 5"
.LASF916:
	.string	"OCDR3 3"
.LASF663:
	.string	"PORTA0 0"
.LASF941:
	.string	"PGERS 1"
.LASF658:
	.string	"DDA4 4"
.LASF484:
	.string	"UINT_FAST32_MAX UINT32_MAX"
.LASF181:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF62:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF1457:
	.string	"RAMSIZE (2048)"
.LASF660:
	.string	"DDA6 6"
.LASF1594:
	.string	"SDA_DDR DDRC"
.LASF430:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF1264:
	.string	"TWA5 6"
.LASF1085:
	.string	"DIDR0 _SFR_MEM8(0x7E)"
.LASF523:
	.string	"_SFR_ASM_COMPAT 0"
.LASF1500:
	.string	"PCINT13_PIN PINB"
.LASF546:
	.string	"PRIoLEAST8 \"o\""
.LASF545:
	.string	"PRIo8 \"o\""
.LASF449:
	.string	"__USING_MINT8 0"
.LASF1848:
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
.LASF1604:
	.string	"PCINT18_PIN PINC"
.LASF1293:
	.string	"U2X0 1"
.LASF1316:
	.string	"UMSEL00 6"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF468:
	.string	"INT_LEAST16_MIN INT16_MIN"
.LASF2046:
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
.LASF1339:
	.string	"UDR0_5 5"
.LASF1676:
	.string	"ADC1_PIN PINA"
.LASF903:
	.string	"ACSR _SFR_IO8(0x30)"
.LASF1649:
	.string	"PCINT5_BIT 5"
.LASF587:
	.string	"SCNdFAST16 \"d\""
.LASF1586:
	.string	"SCL_DDR DDRC"
.LASF1355:
	.string	"TXEN1 3"
.LASF1700:
	.string	"PCINT8_PIN PINB"
.LASF1359:
	.string	"RXCIE1 7"
.LASF1042:
	.string	"ADC _SFR_MEM16(0x78)"
.LASF1458:
	.string	"RAMEND (RAMSTART + RAMSIZE - 1)"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF1567:
	.string	"ICP_PORT PORTD"
.LASF874:
	.string	"GPIOR21 1"
.LASF1921:
	.string	"RX_AIL_BIT 3"
.LASF1943:
	.string	"RX_AUX_DIR _REG_BIT(RX_AUX_DDR, RX_AUX_BIT)"
.LASF307:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1374:
	.string	"UBRR_3 3"
.LASF2170:
	.string	"limit"
.LASF1521:
	.string	"RXD_BIT 0"
.LASF1817:
	.string	"SREG_H (5)"
.LASF1884:
	.string	"_REG_BIT(r,b) _REG_BIT2(r,b)"
.LASF1743:
	.string	"OC0B_PORT PORTB"
.LASF1726:
	.string	"AIN1_DDR DDRB"
.LASF1147:
	.string	"ICR1H2 2"
.LASF1238:
	.string	"AS2 5"
.LASF1752:
	.string	"PORT6 6"
.LASF1647:
	.string	"PCINT5_PORT PORTA"
.LASF1718:
	.string	"INT2_DDR DDRB"
.LASF572:
	.string	"PRIu32 \"lu\""
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF2171:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g3 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF1283:
	.string	"TWAMR _SFR_MEM8(0xBD)"
.LASF1127:
	.string	"TCNT1H1 1"
.LASF1677:
	.string	"ADC1_BIT 1"
.LASF2034:
	.string	"_SIZE_T_DEFINED_ "
.LASF89:
	.string	"__INT8_MAX__ 127"
.LASF698:
	.string	"PINC _SFR_IO8(0x06)"
.LASF1993:
	.string	"FLAG_SERVO 2"
.LASF1892:
	.string	"LED_DIR _REG_BIT(LED_DDR, LED_BIT)"
.LASF816:
	.string	"EEAR10 2"
.LASF1742:
	.string	"OC0B_DDR DDRB"
.LASF750:
	.string	"PORTD6 6"
.LASF479:
	.string	"INT_FAST16_MAX INT16_MAX"
.LASF1240:
	.string	"TWBR _SFR_MEM8(0xB8)"
.LASF1880:
	.string	"NONATOMIC_RESTORESTATE uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = SREG"
.LASF1538:
	.string	"PCINT26_DDR DDRD"
.LASF649:
	.string	"PINA4 4"
.LASF1006:
	.string	"PCINT11 3"
.LASF1833:
	.string	"AVR_STACK_POINTER_LO_REG SPL"
.LASF1387:
	.string	"UDR1_2 2"
.LASF1574:
	.string	"PCINT30_DDR DDRD"
.LASF1026:
	.string	"OCIE1A 1"
.LASF1536:
	.string	"INT0_PIN PIND"
.LASF643:
	.string	"_AVR_ATmega324PA_H_ 1"
.LASF1211:
	.string	"TCNT2_5 5"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
.LASF800:
	.string	"EEDR5 5"
.LASF1157:
	.string	"OCR1AL2 2"
.LASF1258:
	.string	"TWGCE 0"
.LASF1540:
	.string	"PCINT26_PIN PIND"
.LASF448:
	.string	"__STDINT_H_ "
.LASF1353:
	.string	"RXB81 1"
.LASF347:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF1755:
	.string	"PORT3 3"
.LASF1537:
	.string	"INT0_BIT 2"
.LASF928:
	.string	"EXTRF 1"
.LASF42:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF2013:
	.string	"AIL 0"
.LASF2059:
	.string	"__LPM_word_tiny__(addr) (__extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; uint16_t __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF314:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF406:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF1462:
	.string	"E2END (0x3FF)"
.LASF1527:
	.string	"TXD_PORT PORTD"
.LASF447:
	.string	"SYSTEM_H_ "
.LASF154:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF1980:
	.string	"KEY_S4_BIT 4"
.LASF34:
	.string	"__SIZEOF_POINTER__ 2"
.LASF960:
	.string	"CLKPS2 2"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF1139:
	.string	"ICR1L3 3"
.LASF1448:
	.string	"USART1_RX_vect _VECTOR(28)"
.LASF787:
	.string	"EECR _SFR_IO8(0x1F)"
.LASF460:
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
.LASF1287:
	.string	"TWAM3 4"
.LASF1757:
	.string	"PORT1 1"
.LASF1879:
	.string	"ATOMIC_FORCEON uint8_t sreg_save __attribute__((__cleanup__(__iSeiParam))) = 0"
.LASF933:
	.string	"IVCE 0"
.LASF780:
	.string	"GPIOR01 1"
.LASF967:
	.string	"PRTIM1 3"
.LASF1119:
	.string	"TCNT1L2 2"
.LASF560:
	.string	"PRIu16 \"u\""
.LASF354:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF1485:
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
.LASF761:
	.string	"TIFR2 _SFR_IO8(0x17)"
.LASF1756:
	.string	"PORT2 2"
.LASF1070:
	.string	"ADEN 7"
.LASF580:
	.string	"PRIXFAST32 \"lX\""
.LASF1638:
	.string	"PCINT6_DDR DDRA"
.LASF1505:
	.string	"MISO_BIT 6"
.LASF1626:
	.string	"ADC7_DDR DDRA"
.LASF1852:
	.string	"BLB0_MODE_1 (0xFF)"
.LASF2092:
	.string	"long unsigned int"
.LASF571:
	.string	"PRIoFAST32 \"lo\""
.LASF1703:
	.string	"T1_PORT PORTB"
.LASF1358:
	.string	"TXCIE1 6"
.LASF401:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF411:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF1988:
	.string	"PRR1 _SFR_MEM8(0x65)"
.LASF735:
	.string	"DDD0 0"
.LASF1955:
	.string	"OUTPUTS 8"
.LASF2015:
	.string	"RUD 2"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF718:
	.string	"PORTC1 1"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF713:
	.string	"DDC5 5"
.LASF1268:
	.string	"TWD1 1"
.LASF938:
	.string	"JTD 7"
.LASF2105:
	.string	"mixer_channel_t"
.LASF1923:
	.string	"RX_AIL_DIR _REG_BIT(RX_AIL_DDR, RX_AIL_BIT)"
.LASF828:
	.string	"COM0A1 7"
.LASF696:
	.string	"PORTB6 6"
.LASF1998:
	.string	"SELFLEVEL_STICK 0"
.LASF1327:
	.string	"UBRR7 7"
.LASF1651:
	.string	"ADC4_PORT PORTA"
.LASF1482:
	.string	"FUSE_OCDEN (unsigned char)~_BV(7)"
.LASF851:
	.string	"OCR0A_5 5"
.LASF1315:
	.string	"UPM01 5"
.LASF1045:
	.string	"ADCL0 0"
.LASF317:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF1882:
	.string	"HARDWARE_H_ "
.LASF500:
	.string	"UINT8_C(value) ((uint8_t) __CONCAT(value, U))"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF1102:
	.string	"COM1A0 6"
.LASF1719:
	.string	"INT2_PORT PORTB"
.LASF342:
	.string	"__FLASH 1"
.LASF1806:
	.string	"PD7 PORTD7"
.LASF1977:
	.string	"KEY_S1_BIT 7"
.LASF2109:
	.string	"char"
.LASF1798:
	.string	"PC7 PORTC7"
.LASF900:
	.string	"SPDRB5 5"
.LASF2162:
	.string	"mixerCalculate"
.LASF628:
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF752:
	.string	"TIFR0 _SFR_IO8(0x15)"
.LASF1051:
	.string	"ADCL6 6"
.LASF407:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF77:
	.string	"__WCHAR_MAX__ 32767"
.LASF2154:
	.string	"CycleTime"
.LASF559:
	.string	"PRIoFAST16 \"o\""
.LASF530:
	.string	"PRIiFAST8 \"i\""
.LASF16:
	.string	"__OPTIMIZE__ 1"
.LASF1735:
	.string	"PCINT11_PORT PORTB"
.LASF1112:
	.string	"TCCR1C _SFR_MEM8(0x82)"
.LASF2027:
	.string	"_SIZE_T "
.LASF1216:
	.string	"OCR2A_1 1"
.LASF1741:
	.string	"SS_BIT 4"
.LASF1946:
	.string	"PWM_LOW 1100"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ 0"
.LASF614:
	.string	"SCNx32 \"lx\""
.LASF857:
	.string	"OCR0B_2 2"
.LASF1297:
	.string	"UDRE0 5"
.LASF168:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF726:
	.string	"PIND0 0"
.LASF2098:
	.string	"Throttle"
.LASF974:
	.string	"CAL1 1"
.LASF1628:
	.string	"ADC7_PIN PINA"
.LASF583:
	.string	"PRIxPTR PRIx16"
.LASF1199:
	.string	"CS20 0"
.LASF114:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF704:
	.string	"PINC5 5"
.LASF224:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF276:
	.string	"__DQ_IBIT__ 0"
.LASF1037:
	.string	"PCINT27 3"
.LASF1281:
	.string	"TWEA 6"
.LASF810:
	.string	"EEAR5 5"
.LASF532:
	.string	"PRIdLEAST16 \"d\""
.LASF91:
	.string	"__INT32_MAX__ 2147483647L"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF1585:
	.string	"PCINT31_BIT 7"
.LASF2035:
	.string	"_SIZE_T_DEFINED "
.LASF917:
	.string	"OCDR4 4"
.LASF664:
	.string	"PORTA1 1"
.LASF2058:
	.ascii	"__LPM_word_classic__(addr) (__ex"
	.string	"tension__({ uint16_t __addr16 = (uint16_t)(addr); uint16_t __result; __asm__ __volatile__ ( \"lpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF330:
	.string	"__AVR_DEVICE_NAME__ atmega324pa"
.LASF659:
	.string	"DDA5 5"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF375:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF2169:
	.string	"memcpy_P"
.LASF602:
	.string	"SCNu16 \"u\""
.LASF767:
	.string	"PCIF1 1"
.LASF1265:
	.string	"TWA6 7"
.LASF610:
	.string	"SCNoFAST32 \"lo\""
.LASF1522:
	.string	"PCINT24_DDR DDRD"
.LASF1903:
	.string	"LCD_RST _REG_BIT(LCD_PORT, LCD_RST_BIT)"
.LASF1885:
	.string	"OUTPUT 1"
.LASF2023:
	.string	"__need_NULL "
.LASF1382:
	.string	"UBRR_10 2"
.LASF1344:
	.string	"U2X1 1"
.LASF1166:
	.string	"OCR1AH2 2"
.LASF1317:
	.string	"UMSEL01 7"
.LASF1340:
	.string	"UDR0_6 6"
.LASF1320:
	.string	"_UBRR0 0"
.LASF2043:
	.string	"NULL"
.LASF1811:
	.string	"SREG _SFR_IO8(0x3F)"
.LASF963:
	.string	"PRR0 _SFR_MEM8(0x64)"
.LASF882:
	.string	"SPR00 0"
.LASF994:
	.string	"PCINT0 0"
.LASF1984:
	.string	"BUZZER_BIT 1"
.LASF1776:
	.string	"PA1 PORTA1"
.LASF1066:
	.string	"ADIE 3"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF72:
	.string	"__SCHAR_MAX__ 127"
.LASF875:
	.string	"GPIOR22 2"
.LASF404:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF30:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF1506:
	.string	"PCINT14_DDR DDRB"
.LASF477:
	.string	"INT_FAST8_MIN INT8_MIN"
.LASF871:
	.string	"GPIOR17 7"
.LASF1142:
	.string	"ICR1L6 6"
.LASF1532:
	.string	"PCINT25_PIN PIND"
.LASF576:
	.string	"PRIxLEAST32 \"lx\""
.LASF2064:
	.ascii	"__LPM_float_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); float __result; __asm__ __volatile__ "
	.ascii	"( \"lpm\" \"\\n\\t\" \"mov "
	.string	"%A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
.LASF1148:
	.string	"ICR1H3 3"
.LASF926:
	.string	"MCUSR _SFR_IO8(0x34)"
.LASF1159:
	.string	"OCR1AL4 4"
.LASF1902:
	.string	"LCD_CS _REG_BIT(LCD_PORT, LCD_CS_BIT)"
.LASF2006:
	.string	"ERR_NO_THR 0x08"
.LASF1292:
	.string	"MPCM0 0"
.LASF1694:
	.string	"T0_DDR DDRB"
.LASF540:
	.string	"PRIi32 \"li\""
.LASF1318:
	.string	"UBRR0 _SFR_MEM16(0xC4)"
.LASF1773:
	.string	"PIN1 1"
.LASF1128:
	.string	"TCNT1H2 2"
.LASF829:
	.string	"TCCR0B _SFR_IO8(0x25)"
.LASF1576:
	.string	"PCINT30_PIN PIND"
.LASF373:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF57:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF1729:
	.string	"AIN1_BIT 3"
.LASF579:
	.string	"PRIXLEAST32 \"lX\""
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF817:
	.string	"EEAR11 3"
.LASF46:
	.string	"__INT32_TYPE__ long int"
.LASF751:
	.string	"PORTD7 7"
.LASF1953:
	.string	"ARM_DELAY 2000"
.LASF533:
	.string	"PRIdFAST16 \"d\""
.LASF472:
	.string	"UINT_LEAST32_MAX UINT32_MAX"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF1562:
	.string	"PCINT29_DDR DDRD"
.LASF1007:
	.string	"PCINT12 4"
.LASF465:
	.string	"INT_LEAST8_MIN INT8_MIN"
.LASF1388:
	.string	"UDR1_3 3"
.LASF1452:
	.string	"USART1_TX_vect _VECTOR(30)"
.LASF1027:
	.string	"OCIE1B 2"
.LASF1514:
	.string	"PCINT15_DDR DDRB"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF801:
	.string	"EEDR6 6"
.LASF1158:
	.string	"OCR1AL3 3"
.LASF1637:
	.string	"ADC6_BIT 6"
.LASF640:
	.string	"loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
.LASF45:
	.string	"__INT16_TYPE__ int"
.LASF1098:
	.string	"WGM10 0"
.LASF1104:
	.string	"TCCR1B _SFR_MEM8(0x81)"
.LASF1631:
	.string	"PCINT7_PORT PORTA"
.LASF1834:
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
.LASF69:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF1614:
	.string	"PCINT21_DDR DDRC"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 1"
.LASF1541:
	.string	"PCINT26_BIT 2"
.LASF1438:
	.string	"ANALOG_COMP_vect _VECTOR(23)"
.LASF887:
	.string	"DORD0 5"
.LASF1029:
	.string	"TIMSK2 _SFR_MEM8(0x70)"
.LASF1054:
	.string	"ADCH0 0"
.LASF1354:
	.string	"UCSZ12 2"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF836:
	.string	"TCNT0 _SFR_IO8(0x26)"
.LASF1146:
	.string	"ICR1H1 1"
.LASF961:
	.string	"CLKPS3 3"
.LASF753:
	.string	"TOV0 0"
.LASF890:
	.string	"SPSR0 _SFR_IO8(0x2D)"
.LASF1137:
	.string	"ICR1L1 1"
.LASF788:
	.string	"EERE 0"
.LASF1140:
	.string	"ICR1L4 4"
.LASF972:
	.string	"OSCCAL _SFR_MEM8(0x66)"
.LASF597:
	.string	"SCNdPTR SCNd16"
.LASF1288:
	.string	"TWAM4 5"
.LASF1431:
	.string	"USART0_RX_vect_num 20"
.LASF1476:
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
.LASF1414:
	.string	"TIMER2_OVF_vect _VECTOR(11)"
.LASF2160:
	.string	"__addr16"
.LASF505:
	.string	"INT64_C(value) __CONCAT(value, LL)"
.LASF781:
	.string	"GPIOR02 2"
.LASF1011:
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
.LASF970:
	.string	"PRTIM2 6"
.LASF1556:
	.string	"PCINT28_PIN PIND"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF1395:
	.string	"INT1_vect_num 2"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF1950:
	.string	"PPM_SYNC_LENGTH 3000"
.LASF1702:
	.string	"T1_DDR DDRB"
.LASF1747:
	.string	"PCINT12_PORT PORTB"
.LASF293:
	.string	"__DA_FBIT__ 31"
.LASF620:
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
.LASF1685:
	.string	"ADC0_BIT 0"
.LASF1827:
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
.LASF543:
	.string	"PRIdPTR PRId16"
.LASF1982:
	.string	"BUZZER_DDR DDRB"
.LASF1678:
	.string	"PCINT1_DDR DDRA"
.LASF1174:
	.string	"OCR1BL0 0"
.LASF1300:
	.string	"UCSR0B _SFR_MEM8(0xC1)"
.LASF309:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF1666:
	.string	"ADC2_DDR DDRA"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF2000:
	.string	"SELFLEVEL_ON 2"
.LASF1588:
	.string	"SCL_PIN PINC"
.LASF2108:
	.string	"Channel"
.LASF736:
	.string	"DDD1 1"
.LASF1364:
	.string	"USBS1 3"
.LASF1681:
	.string	"PCINT1_BIT 1"
.LASF424:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF719:
	.string	"PORTC2 2"
.LASF294:
	.string	"__DA_IBIT__ 32"
.LASF714:
	.string	"DDC6 6"
.LASF1269:
	.string	"TWD2 2"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF1329:
	.string	"UBRR8 0"
.LASF1266:
	.string	"TWDR _SFR_MEM8(0xBB)"
.LASF334:
	.string	"__AVR_HAVE_MUL__ 1"
.LASF697:
	.string	"PORTB7 7"
.LASF565:
	.string	"PRIxFAST16 \"x\""
.LASF97:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF1248:
	.string	"TWBR7 7"
.LASF1690:
	.string	"XCK_DDR DDRB"
.LASF852:
	.string	"OCR0A_6 6"
.LASF1046:
	.string	"ADCL1 1"
.LASF1824:
	.string	"ZL r30"
.LASF1516:
	.string	"PCINT15_PIN PINB"
.LASF389:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF962:
	.string	"CLKPCE 7"
.LASF1513:
	.string	"SCK_BIT 7"
.LASF82:
	.string	"__SIZE_MAX__ 65535U"
.LASF1103:
	.string	"COM1A1 7"
.LASF564:
	.string	"PRIxLEAST16 \"x\""
.LASF1591:
	.string	"PCINT16_PORT PORTC"
.LASF1547:
	.string	"PCINT27_PORT PORTD"
.LASF1578:
	.string	"OC2A_DDR DDRD"
.LASF1814:
	.string	"SREG_N (2)"
.LASF24:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF901:
	.string	"SPDRB6 6"
.LASF2141:
	.string	"AccTrim"
.LASF1762:
	.string	"DD4 4"
.LASF1608:
	.string	"PCINT19_PIN PINC"
.LASF1876:
	.string	"ATOMIC_BLOCK(type) for ( type, __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 )"
.LASF1665:
	.string	"PCINT3_BIT 3"
.LASF471:
	.string	"INT_LEAST32_MIN INT32_MIN"
.LASF1954:
	.string	"DISARM_DELAY 60000"
.LASF492:
	.string	"INTMAX_MIN INT64_MIN"
.LASF420:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF563:
	.string	"PRIx16 \"x\""
.LASF590:
	.string	"SCNiFAST16 \"i\""
.LASF1076:
	.string	"ADMUX _SFR_MEM8(0x7C)"
.LASF1745:
	.string	"OC0B_BIT 4"
.LASF789:
	.string	"EEPE 1"
.LASF1675:
	.string	"ADC1_PORT PORTA"
.LASF1693:
	.string	"XCK_BIT 0"
.LASF1381:
	.string	"UBRR_9 1"
.LASF1915:
	.string	"ADC_ACC_X 5"
.LASF1750:
	.string	"_AVR_PORTPINS_H_ 1"
.LASF1831:
	.string	"AVR_STACK_POINTER_HI_REG SPH"
.LASF353:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF1611:
	.string	"PCINT20_PORT PORTC"
.LASF1217:
	.string	"OCR2A_2 2"
.LASF442:
	.string	"PIT 1"
.LASF1595:
	.string	"SDA_PORT PORTC"
.LASF1043:
	.string	"ADCW _SFR_MEM16(0x78)"
.LASF921:
	.string	"SMCR _SFR_IO8(0x33)"
.LASF1348:
	.string	"UDRE1 5"
.LASF727:
	.string	"PIND1 1"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF975:
	.string	"CAL2 2"
.LASF2153:
	.string	"Mode"
.LASF524:
	.string	"__INTTYPES_H_ "
.LASF1609:
	.string	"PCINT19_BIT 3"
.LASF1926:
	.string	"RX_ELE_BIT 2"
.LASF1200:
	.string	"CS21 1"
.LASF1623:
	.string	"PCINT23_PORT PORTC"
.LASF1680:
	.string	"PCINT1_PIN PINA"
.LASF705:
	.string	"PINC6 6"
.LASF2011:
	.string	"RX_MODE_PWM 0"
.LASF1668:
	.string	"ADC2_PIN PINA"
.LASF542:
	.string	"PRIiFAST32 \"li\""
.LASF1038:
	.string	"PCINT28 4"
.LASF811:
	.string	"EEAR6 6"
.LASF842:
	.string	"TCNT0_5 5"
.LASF682:
	.string	"DDB1 1"
.LASF1712:
	.string	"PCINT9_PIN PINB"
.LASF2125:
	.string	"GYRO_zero"
.LASF918:
	.string	"OCDR5 5"
.LASF1182:
	.string	"OCR1BH _SFR_MEM8(0x8B)"
.LASF1826:
	.string	"AVR_STATUS_REG SREG"
.LASF414:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF2053:
	.string	"PGM_VOID_P const void *"
.LASF15:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF1544:
	.string	"INT1_PIN PIND"
.LASF949:
	.string	"WDP0 0"
.LASF2146:
	.string	"ThrottleOff"
.LASF1653:
	.string	"ADC4_BIT 4"
.LASF1634:
	.string	"ADC6_DDR DDRA"
.LASF2018:
	.string	"AX3 6"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1383:
	.string	"UBRR_11 3"
.LASF2040:
	.string	"_SIZET_ "
.LASF680:
	.string	"DDRB _SFR_IO8(0x04)"
.LASF44:
	.string	"__INT8_TYPE__ signed char"
.LASF502:
	.string	"UINT16_C(value) __CONCAT(value, U)"
.LASF1167:
	.string	"OCR1AH3 3"
.LASF991:
	.string	"ISC20 4"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF1341:
	.string	"UDR0_7 7"
.LASF1958:
	.string	"OUT1_BIT 6"
.LASF1321:
	.string	"_UBRR1 1"
.LASF1788:
	.string	"PB5 PORTB5"
.LASF349:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF1569:
	.string	"ICP_BIT 6"
.LASF1526:
	.string	"TXD_DDR DDRD"
.LASF995:
	.string	"PCINT1 1"
.LASF37:
	.string	"__WCHAR_TYPE__ int"
.LASF242:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF1964:
	.string	"OUT4_BIT 3"
.LASF876:
	.string	"GPIOR23 3"
.LASF1172:
	.string	"OCR1B _SFR_MEM16(0x8A)"
.LASF923:
	.string	"SM0 1"
.LASF1524:
	.string	"PCINT24_PIN PIND"
.LASF1843:
	.string	"_AVR_FUSE_H_ 1"
.LASF1480:
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
.LASF1375:
	.string	"UBRR_4 4"
.LASF1842:
	.string	"__AVR_LIBC_REVISION__ 0"
.LASF1077:
	.string	"MUX0 0"
.LASF296:
	.string	"__TA_IBIT__ 16"
.LASF538:
	.string	"PRIdLEAST32 \"ld\""
.LASF1149:
	.string	"ICR1H4 4"
.LASF1853:
	.string	"BLB0_MODE_2 (0xFB)"
.LASF589:
	.string	"SCNiLEAST16 \"i\""
.LASF343:
	.string	"__MEMX 1"
.LASF784:
	.string	"GPIOR05 5"
.LASF60:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF1893:
	.string	"LED_TOGGLE (_REG_BIT(LED_PIN, LED_BIT) = 1)"
.LASF551:
	.string	"PRIx8 \"x\""
.LASF982:
	.string	"PCIE0 0"
.LASF1772:
	.string	"PIN2 2"
.LASF1407:
	.string	"WDT_vect_num 8"
.LASF1820:
	.string	"XL r26"
.LASF1582:
	.string	"PCINT31_DDR DDRD"
.LASF2117:
	.string	"RollGain"
.LASF1645:
	.string	"ADC5_BIT 5"
.LASF17:
	.string	"__FAST_MATH__ 1"
.LASF1235:
	.string	"OCR2BUB 2"
.LASF1311:
	.string	"UCSZ00 1"
.LASF657:
	.string	"DDA3 3"
.LASF516:
	.string	"FIXEDMS(ms) for(uint16_t __m = millis(); millis() - __m < ms; __iWaitForMS(__m, ms))"
.LASF831:
	.string	"CS01 1"
.LASF1779:
	.string	"PA4 PORTA4"
.LASF945:
	.string	"SIGRD 5"
.LASF651:
	.string	"PINA6 6"
.LASF1641:
	.string	"PCINT6_BIT 6"
.LASF1008:
	.string	"PCINT13 5"
.LASF1989:
	.string	"PRTIM3 0"
.LASF1389:
	.string	"UDR1_4 4"
.LASF671:
	.string	"PINB _SFR_IO8(0x03)"
.LASF1906:
	.string	"LCD_SDA _REG_BIT(LCD_PORT, LCD_SDA_BIT)"
.LASF2067:
	.string	"__LPM(addr) __LPM_enhanced__(addr)"
.LASF1490:
	.string	"__BOOT_LOCK_BITS_1_EXIST "
.LASF802:
	.string	"EEDR7 7"
.LASF1096:
	.string	"AIN1D 1"
.LASF178:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF1173:
	.string	"OCR1BL _SFR_MEM8(0x8A)"
.LASF439:
	.string	"ON 1"
.LASF1282:
	.string	"TWINT 7"
.LASF1099:
	.string	"WGM11 1"
.LASF1840:
	.string	"__AVR_LIBC_MAJOR__ 1"
.LASF854:
	.string	"OCR0B _SFR_IO8(0x28)"
.LASF1738:
	.string	"SS_DDR DDRB"
.LASF2166:
	.string	"Config"
.LASF1682:
	.string	"ADC0_DDR DDRA"
.LASF561:
	.string	"PRIuLEAST16 \"u\""
.LASF1859:
	.string	"BLB1_MODE_4 (0xDF)"
.LASF1376:
	.string	"UBRR_5 5"
.LASF1630:
	.string	"PCINT7_DDR DDRA"
.LASF2094:
	.string	"long long unsigned int"
.LASF22:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1754:
	.string	"PORT4 4"
.LASF1233:
	.string	"TCR2BUB 0"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF1055:
	.string	"ADCH1 1"
.LASF466:
	.string	"UINT_LEAST8_MAX UINT8_MAX"
.LASF58:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF987:
	.string	"ISC00 0"
.LASF757:
	.string	"TOV1 0"
.LASF830:
	.string	"CS00 0"
.LASF825:
	.string	"COM0B0 4"
.LASF1141:
	.string	"ICR1L5 5"
.LASF336:
	.string	"__AVR_HAVE_JMP_CALL__ 1"
.LASF1528:
	.string	"TXD_PIN PIND"
.LASF1952:
	.string	"RX_THRESHOLD 75"
.LASF1289:
	.string	"TWAM5 6"
.LASF1213:
	.string	"TCNT2_7 7"
.LASF1787:
	.string	"PB4 PORTB4"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF782:
	.string	"GPIOR03 3"
.LASF1731:
	.string	"OC0A_PORT PORTB"
.LASF1121:
	.string	"TCNT1L4 4"
.LASF2165:
	.string	"MIXER"
.LASF1655:
	.string	"PCINT4_PORT PORTA"
.LASF1780:
	.string	"PA5 PORTA5"
.LASF1815:
	.string	"SREG_V (3)"
.LASF845:
	.string	"OCR0A _SFR_IO8(0x27)"
.LASF1624:
	.string	"PCINT23_PIN PINC"
.LASF96:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF1461:
	.string	"XRAMEND (RAMEND)"
.LASF886:
	.string	"MSTR0 4"
.LASF893:
	.string	"SPIF0 7"
.LASF1175:
	.string	"OCR1BL1 1"
.LASF2100:
	.string	"Elevator"
.LASF2030:
	.string	"_T_SIZE "
.LASF1420:
	.string	"TIMER1_COMPB_vect _VECTOR(14)"
.LASF1509:
	.string	"PCINT14_BIT 6"
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF1234:
	.string	"TCR2AUB 1"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF1449:
	.string	"USART1_UDRE_vect_num 29"
.LASF720:
	.string	"PORTC3 3"
.LASF715:
	.string	"DDC7 7"
.LASF1270:
	.string	"TWD3 3"
.LASF1330:
	.string	"UBRR9 1"
.LASF1854:
	.string	"BLB0_MODE_3 (0xF3)"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF1295:
	.string	"DOR0 3"
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1443:
	.string	"TWI_vect_num 26"
.LASF547:
	.string	"PRIoFAST8 \"o\""
.LASF853:
	.string	"OCR0A_7 7"
.LASF1922:
	.string	"RX_AIL _REG_BIT(RX_AIL_PIN, RX_AIL_BIT)"
.LASF313:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF236:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF81:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF1795:
	.string	"PC4 PORTC4"
.LASF1410:
	.string	"TIMER2_COMPA_vect _VECTOR(9)"
.LASF2037:
	.string	"_SIZE_T_DECLARED "
.LASF748:
	.string	"PORTD4 4"
.LASF1523:
	.string	"PCINT24_PORT PORTD"
.LASF1966:
	.string	"OUT5_BIT 1"
.LASF573:
	.string	"PRIuLEAST32 \"lu\""
.LASF1724:
	.string	"PCINT10_PIN PINB"
.LASF725:
	.string	"PIND _SFR_IO8(0x09)"
.LASF1360:
	.string	"UCSR1C _SFR_MEM8(0xCA)"
.LASF1692:
	.string	"XCK_PIN PINB"
.LASF1938:
	.string	"RX_RUD_DIR _REG_BIT(RX_RUD_DDR, RX_RUD_BIT)"
.LASF1740:
	.string	"SS_PIN PINB"
.LASF858:
	.string	"OCR0B_3 3"
.LASF1968:
	.string	"OUT6_BIT 0"
.LASF2158:
	.string	"channels"
.LASF902:
	.string	"SPDRB7 7"
.LASF457:
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF213:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF888:
	.string	"SPE0 6"
.LASF1456:
	.string	"RAMSTART (0x100)"
.LASF1956:
	.string	"OUT_PORT PORTC"
.LASF413:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF1686:
	.string	"PCINT0_DDR DDRA"
.LASF593:
	.string	"SCNdFAST32 \"ld\""
.LASF598:
	.string	"SCNiPTR SCNi16"
.LASF161:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF1423:
	.string	"TIMER0_COMPA_vect_num 16"
.LASF1835:
	.string	"_AVR_VERSION_H_ "
.LASF1644:
	.string	"ADC5_PIN PINA"
.LASF770:
	.string	"EIFR _SFR_IO8(0x1C)"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF633:
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
.LASF1503:
	.string	"MISO_PORT PORTB"
.LASF503:
	.string	"INT32_C(value) __CONCAT(value, L)"
.LASF822:
	.string	"TCCR0A _SFR_IO8(0x24)"
.LASF355:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF1706:
	.string	"CLKO_DDR DDRB"
.LASF1218:
	.string	"OCR2A_3 3"
.LASF1707:
	.string	"CLKO_PORT PORTB"
.LASF794:
	.string	"EEDR _SFR_IO8(0x20)"
.LASF1803:
	.string	"PD4 PORTD4"
.LASF891:
	.string	"SPI2X0 0"
.LASF544:
	.string	"PRIiPTR PRIi16"
.LASF859:
	.string	"OCR0B_4 4"
.LASF630:
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
.LASF728:
	.string	"PIND2 2"
.LASF976:
	.string	"CAL3 3"
.LASF47:
	.string	"__INT64_TYPE__ long long int"
.LASF1857:
	.string	"BLB1_MODE_2 (0xEF)"
.LASF1489:
	.string	"__BOOT_LOCK_BITS_0_EXIST "
.LASF1593:
	.string	"PCINT16_BIT 0"
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF706:
	.string	"PINC7 7"
.LASF599:
	.string	"SCNo16 \"o\""
.LASF1774:
	.string	"PIN0 0"
.LASF1763:
	.string	"DD3 3"
.LASF1039:
	.string	"PCINT29 5"
.LASF812:
	.string	"EEAR7 7"
.LASF843:
	.string	"TCNT0_6 6"
.LASF73:
	.string	"__SHRT_MAX__ 32767"
.LASF683:
	.string	"DDB2 2"
.LASF1935:
	.string	"RX_RUD_PIN PINB"
.LASF930:
	.string	"WDRF 3"
.LASF1291:
	.string	"UCSR0A _SFR_MEM8(0xC0)"
.LASF919:
	.string	"OCDR6 6"
.LASF1559:
	.string	"OC1A_PORT PORTD"
.LASF1533:
	.string	"PCINT25_BIT 1"
.LASF666:
	.string	"PORTA3 3"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF734:
	.string	"DDRD _SFR_IO8(0x0A)"
.LASF661:
	.string	"DDA7 7"
.LASF1782:
	.string	"PA7 PORTA7"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF950:
	.string	"WDP1 1"
.LASF1937:
	.string	"RX_RUD _REG_BIT(RX_RUD_PIN, RX_RUD_BIT)"
.LASF453:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF2148:
	.string	"Aux1"
.LASF2149:
	.string	"Aux2"
.LASF2150:
	.string	"Aux3"
.LASF2151:
	.string	"Aux4"
.LASF1424:
	.string	"TIMER0_COMPA_vect _VECTOR(16)"
.LASF1543:
	.string	"INT1_PORT PORTD"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF534:
	.string	"PRIi16 \"i\""
.LASF1602:
	.string	"PCINT18_DDR DDRC"
.LASF2093:
	.string	"long long int"
.LASF1832:
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
.LASF123:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1168:
	.string	"OCR1AH4 4"
.LASF992:
	.string	"ISC21 5"
.LASF510:
	.string	"TICKSPERMICRO (20UL)"
.LASF1564:
	.string	"PCINT29_PIN PIND"
.LASF2159:
	.string	"pmodel"
.LASF1047:
	.string	"ADCL2 2"
.LASF1941:
	.string	"RX_AUX_BIT 0"
.LASF608:
	.string	"SCNo32 \"lo\""
.LASF2048:
	.ascii	"_FFS(x) (1 + (((x) & 1) == 0) + (((x) & 3) == 0) + (((x) & 7"
	.ascii	") == 0) + (((x) & 017) == 0) + (((x) & 037) == 0) + "
	.string	"(((x) & 077) == 0) + (((x) & 0177) == 0) + (((x) & 0377) == 0) + (((x) & 0777) == 0) + (((x) & 01777) == 0) + (((x) & 03777) == 0) + (((x) & 07777) == 0) + (((x) & 017777) == 0) + (((x) & 037777) == 0) + (((x) & 077777) == 0) - (((x) & 0177777) == 0) * 16)"
.LASF328:
	.string	"__AVR_ARCH__ 5"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF1224:
	.string	"OCR2B_0 0"
.LASF996:
	.string	"PCINT2 2"
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF1804:
	.string	"PD5 PORTD5"
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF1239:
	.string	"EXCLK 6"
.LASF1829:
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
.LASF2082:
	.string	"max(a,b) ((a)>(b)?(a):(b))"
.LASF877:
	.string	"GPIOR24 4"
.LASF2142:
	.string	"Mixer"
.LASF133:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF93:
	.string	"__UINT8_MAX__ 255"
.LASF1797:
	.string	"PC6 PORTC6"
.LASF1078:
	.string	"MUX1 1"
.LASF966:
	.string	"PRSPI 2"
.LASF1150:
	.string	"ICR1H5 5"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF629:
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
.LASF797:
	.string	"EEDR2 2"
.LASF1134:
	.string	"ICR1 _SFR_MEM16(0x86)"
.LASF2140:
	.string	"PID_SelfLevel"
.LASF506:
	.string	"UINT64_C(value) __CONCAT(value, ULL)"
.LASF1771:
	.string	"PIN3 3"
.LASF1130:
	.string	"TCNT1H4 4"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF943:
	.string	"BLBSET 3"
.LASF462:
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
.LASF1944:
	.string	"RX_CHANNELS 8"
.LASF568:
	.string	"PRIXFAST16 \"X\""
.LASF1444:
	.string	"TWI_vect _VECTOR(26)"
.LASF674:
	.string	"PINB2 2"
.LASF1912:
	.string	"ADC_GYR_X 4"
.LASF1312:
	.string	"UCSZ01 2"
.LASF153:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1507:
	.string	"PCINT14_PORT PORTB"
.LASF832:
	.string	"CS02 2"
.LASF1405:
	.string	"PCINT3_vect_num 7"
.LASF1184:
	.string	"OCR1BH1 1"
.LASF1009:
	.string	"PCINT14 6"
.LASF1390:
	.string	"UDR1_5 5"
.LASF195:
	.string	"__USFRACT_IBIT__ 0"
.LASF2032:
	.string	"_SIZE_T_ "
.LASF419:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF1446:
	.string	"SPM_READY_vect _VECTOR(27)"
.LASF124:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1160:
	.string	"OCR1AL5 5"
.LASF2115:
	.string	"ILimit"
.LASF636:
	.string	"_BV(bit) (1 << (bit))"
.LASF1560:
	.string	"OC1A_PIN PIND"
.LASF1805:
	.string	"PD6 PORTD6"
.LASF662:
	.string	"PORTA _SFR_IO8(0x02)"
.LASF1108:
	.string	"WGM12 3"
.LASF1601:
	.string	"PCINT17_BIT 1"
.LASF1483:
	.string	"HFUSE_DEFAULT (FUSE_JTAGEN & FUSE_SPIEN & FUSE_BOOTSZ1 & FUSE_BOOTSZ0)"
.LASF1997:
	.string	"PID_H_ "
.LASF634:
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
.LASF344:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF1377:
	.string	"UBRR_6 6"
.LASF884:
	.string	"CPHA0 2"
.LASF5:
	.string	"__GNUC__ 4"
.LASF1753:
	.string	"PORT5 5"
.LASF1056:
	.string	"ADCH2 2"
.LASF1790:
	.string	"PB7 PORTB7"
.LASF1587:
	.string	"SCL_PORT PORTC"
.LASF1417:
	.string	"TIMER1_COMPA_vect_num 13"
.LASF1206:
	.string	"TCNT2_0 0"
.LASF1670:
	.string	"PCINT2_DDR DDRA"
.LASF988:
	.string	"ISC01 1"
.LASF478:
	.string	"UINT_FAST8_MAX UINT8_MAX"
.LASF762:
	.string	"TOV2 0"
.LASF1658:
	.string	"ADC3_DDR DDRA"
.LASF25:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF826:
	.string	"COM0B1 5"
.LASF157:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF1610:
	.string	"PCINT20_DDR DDRC"
.LASF904:
	.string	"ACIS0 0"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF2123:
	.string	"RX_zero"
.LASF2173:
	.string	"D:\\\\Other\\\\QuacopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug Simulator"
.LASF1290:
	.string	"TWAM6 7"
.LASF1413:
	.string	"TIMER2_OVF_vect_num 11"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF440:
	.string	"OFF 0"
.LASF783:
	.string	"GPIOR04 4"
.LASF1828:
	.string	"AVR_STACK_POINTER_REG SP"
.LASF1122:
	.string	"TCNT1L5 5"
.LASF688:
	.string	"DDB7 7"
.LASF2161:
	.string	"__result"
.LASF1163:
	.string	"OCR1AH _SFR_MEM8(0x89)"
.LASF1855:
	.string	"BLB0_MODE_4 (0xF7)"
.LASF850:
	.string	"OCR0A_4 4"
.LASF1592:
	.string	"PCINT16_PIN PINC"
.LASF1905:
	.string	"LCD_SCL _REG_BIT(LCD_PORT, LCD_SCL_BIT)"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF616:
	.string	"SCNxFAST32 \"lx\""
.LASF1412:
	.string	"TIMER2_COMPB_vect _VECTOR(10)"
.LASF1176:
	.string	"OCR1BL2 2"
.LASF1600:
	.string	"PCINT17_PIN PINC"
.LASF1250:
	.string	"TWPS0 0"
.LASF971:
	.string	"PRTWI 7"
.LASF23:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1691:
	.string	"XCK_PORT PORTB"
.LASF461:
	.string	"INT64_MAX 0x7fffffffffffffffLL"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1908:
	.string	"LCD_RST_DIR _REG_BIT(LCD_DDR, LCD_RST_BIT)"
.LASF738:
	.string	"DDD3 3"
.LASF1222:
	.string	"OCR2A_7 7"
.LASF35:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF1495:
	.string	"MOSI_PORT PORTB"
.LASF721:
	.string	"PORTC4 4"
.LASF56:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1271:
	.string	"TWD4 4"
.LASF1346:
	.string	"DOR1 3"
.LASF1071:
	.string	"ADCSRB _SFR_MEM8(0x7B)"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF2071:
	.string	"pgm_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
.LASF1661:
	.string	"ADC3_BIT 3"
.LASF1048:
	.string	"ADCL3 3"
.LASF456:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1679:
	.string	"PCINT1_PORT PORTA"
.LASF1900:
	.string	"LCD_SCL_BIT 4"
.LASF204:
	.string	"__UFRACT_FBIT__ 16"
.LASF2089:
	.string	"unsigned int"
.LASF1932:
	.string	"RX_THR _REG_BIT(RX_THR_PIN, RX_THR_BIT)"
.LASF2133:
	.string	"MixerIndex"
.LASF1867:
	.string	"SIGNAL(vector) void vector (void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
.LASF325:
	.string	"__AVR 1"
.LASF1819:
	.string	"SREG_I (7)"
.LASF1301:
	.string	"TXB80 0"
.LASF1205:
	.string	"TCNT2 _SFR_MEM8(0xB2)"
.LASF1830:
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
.LASF716:
	.string	"PORTC _SFR_IO8(0x08)"
.LASF2103:
	.string	"Flags"
.LASF422:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF1095:
	.string	"AIN0D 0"
.LASF2076:
	.string	"pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
.LASF2065:
	.ascii	"__LPM_float_tiny__(addr) (__"
	.string	"extension__({ uint16_t __addr16 = (uint16_t)(addr) + __AVR_TINY_PM_BASE_ADDRESS__; float __result; __asm__ ( \"ld %A0, z+\" \"\\n\\t\" \"ld %B0, z+\" \"\\n\\t\" \"ld %C0, z+\" \"\\n\\t\" \"ld %D0, z\" \"\\n\\t\" : \"=r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF1660:
	.string	"ADC3_PIN PINA"
.LASF737:
	.string	"DDD2 2"
.LASF38:
	.string	"__WINT_TYPE__ int"
.LASF1673:
	.string	"PCINT2_BIT 2"
.LASF2099:
	.string	"Aileron"
.LASF508:
	.string	"UINTMAX_C(value) __CONCAT(value, ULL)"
.LASF1393:
	.string	"INT0_vect_num 1"
.LASF814:
	.string	"EEAR8 0"
.LASF122:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF1441:
	.string	"EE_READY_vect_num 25"
.LASF1720:
	.string	"INT2_PIN PINB"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF6:
	.string	"__GNUC_MINOR__ 8"
.LASF1813:
	.string	"SREG_Z (1)"
.LASF1219:
	.string	"OCR2A_4 4"
.LASF1589:
	.string	"SCL_BIT 0"
.LASF1406:
	.string	"PCINT3_vect _VECTOR(7)"
.LASF2107:
	.string	"Channels"
.LASF617:
	.string	"SCNoPTR SCNo16"
.LASF860:
	.string	"OCR0B_5 5"
.LASF622:
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
.LASF43:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF729:
	.string	"PIND3 3"
.LASF977:
	.string	"CAL4 4"
.LASF641:
	.string	"loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
.LASF435:
	.string	"DEBUG 1"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF529:
	.string	"PRIiLEAST8 \"i\""
.LASF1196:
	.string	"COM2A0 6"
.LASF708:
	.string	"DDC0 0"
.LASF1947:
	.string	"PWM_MID 1520"
.LASF333:
	.string	"__AVR_ENHANCED__ 1"
.LASF844:
	.string	"TCNT0_7 7"
.LASF684:
	.string	"DDB3 3"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF581:
	.string	"PRIoPTR PRIo16"
.LASF1028:
	.string	"ICIE1 5"
.LASF667:
	.string	"PORTA4 4"
.LASF1669:
	.string	"ADC2_BIT 2"
.LASF54:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF1650:
	.string	"ADC4_DDR DDRA"
.LASF1627:
	.string	"ADC7_PORT PORTA"
.LASF951:
	.string	"WDP2 2"
.LASF1469:
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
.LASF1512:
	.string	"SCK_PIN PINB"
.LASF358:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF1963:
	.string	"OUT3 _REG_BIT(OUT_PORT, OUT3_BIT)"
.LASF2028:
	.string	"_SYS_SIZE_T_H "
.LASF1092:
	.string	"ADC6D 6"
.LASF149:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF1975:
	.string	"KEYBOARD_DDR DDRB"
.LASF1539:
	.string	"PCINT26_PORT PORTD"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF345:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF1778:
	.string	"PA3 PORTA3"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
