	.file	"pwm.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.doOutput,"ax",@progbits
	.type	doOutput, @function
doOutput:
.LFB9:
	.file 1 "../driver/pwm.c"
	.loc 1 32 0
	.cfi_startproc
.LVL0:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 33 0
	mov r30,r24
	ldi r31,0
	movw r18,r30
	lsl r18
	rol r19
.LVL1:
	movw r26,r18
	subi r26,lo8(-(PWM))
	sbci r27,hi8(-(PWM))
	ld r24,X+
	ld r25,X
	or r24,r25
	breq .L2
	.loc 1 33 0 is_stmt 0 discriminator 1
	ldi r24,lo8(6)
	mul r24,r30
	movw r26,r0
	mul r24,r31
	add r27,r0
	clr __zero_reg__
	movw r28,r26
	subi r28,lo8(-(Config+77))
	sbci r29,hi8(-(Config+77))
	ld r24,Y
	tst r24
	breq .L2
	sbrc r24,0
	rjmp .L3
	cpse r22,__zero_reg__
	rjmp .L3
	sbrs r24,2
	rjmp .L2
.L3:
	.loc 1 35 0 is_stmt 1
/* #APP */
 ;  35 "../driver/pwm.c" 1
	cli
 ;  0 "" 2
	.loc 1 36 0
/* #NOAPP */
	in r24,0x8
.LVL2:
.LBB12:
	subi r30,lo8(-(masktable))
	sbci r31,hi8(-(masktable))
.LVL3:
/* #APP */
 ;  36 "../driver/pwm.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL4:
/* #NOAPP */
.LBE12:
	or r30,r24
.LVL5:
	out 0x8,r30
	.loc 1 37 0
	lds r24,132
	lds r25,132+1
	movw r30,r18
	subi r30,lo8(-(PWM))
	sbci r31,hi8(-(PWM))
	ld r18,Z
	ldd r19,Z+1
	add r24,r18
	adc r25,r19
	rjmp .L4
.LVL6:
.L2:
	.loc 1 40 0
	lds r24,132
	lds r25,132+1
	subi r24,48
	sbci r25,-8
.LVL7:
.L4:
/* epilogue start */
	.loc 1 41 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE9:
	.size	doOutput, .-doOutput
	.section	.lowtext,"ax",@progbits
.global	__vector_13
	.type	__vector_13, @function
__vector_13:
.LFB10:
	.loc 1 46 0
	.cfi_startproc
	push r1
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI12:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI13:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI14:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 51 0
	in r24,0x8
	andi r24,lo8(-103)
	out 0x8,r24
	.loc 1 52 0
/* #APP */
 ;  52 "../driver/pwm.c" 1
	sei
 ;  0 "" 2
	.loc 1 54 0
/* #NOAPP */
	lds r24,index.1790
	cpse r24,__zero_reg__
	rjmp .L16
.LVL8:
.LBB15:
.LBB16:
	.loc 1 21 0
	call millis
.LVL9:
	.loc 1 22 0
	lds r18,lastLoStart.1792
	lds r19,lastLoStart.1792+1
	movw r20,r24
	sub r20,r18
	sbc r21,r19
	cpi r20,20
	cpc r21,__zero_reg__
	brlo .L18
	.loc 1 24 0
	sts lastLoStart.1792+1,r25
	sts lastLoStart.1792,r24
	.loc 1 25 0
	ldi r24,lo8(1)
.LVL10:
	rjmp .L17
.LVL11:
.L18:
	.loc 1 28 0
	ldi r24,0
.LVL12:
.L17:
.LBE16:
.LBE15:
	.loc 1 55 0
	sts loActive.1791,r24
.LVL13:
.L16:
	.loc 1 57 0
	lds r24,index.1790
	lds r22,loActive.1791
	lsl r24
	call doOutput
.LVL14:
	sts 136+1,r25
	sts 136,r24
	.loc 1 58 0
/* #APP */
 ;  58 "../driver/pwm.c" 1
	sei
 ;  0 "" 2
	.loc 1 59 0
/* #NOAPP */
	lds r24,index.1790
	ldi r25,0
	adiw r24,1
	andi r24,3
	clr r25
	sts index.1790,r24
/* epilogue start */
	.loc 1 60 0
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
.LFE10:
	.size	__vector_13, .-__vector_13
.global	__vector_14
	.type	__vector_14, @function
__vector_14:
.LFB11:
	.loc 1 65 0
	.cfi_startproc
	push r1
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI18:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI19:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI20:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI22:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI23:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI24:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI25:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI26:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI27:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI28:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI29:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 70 0
	in r24,0x8
	andi r24,lo8(102)
	out 0x8,r24
	.loc 1 71 0
/* #APP */
 ;  71 "../driver/pwm.c" 1
	sei
 ;  0 "" 2
	.loc 1 73 0
/* #NOAPP */
	lds r24,index.1798
	cpse r24,__zero_reg__
	rjmp .L20
.LVL15:
.LBB19:
.LBB20:
	.loc 1 21 0
	call millis
.LVL16:
	.loc 1 22 0
	lds r18,lastLoStart.1800
	lds r19,lastLoStart.1800+1
	movw r20,r24
	sub r20,r18
	sbc r21,r19
	cpi r20,20
	cpc r21,__zero_reg__
	brlo .L22
	.loc 1 24 0
	sts lastLoStart.1800+1,r25
	sts lastLoStart.1800,r24
	.loc 1 25 0
	ldi r24,lo8(1)
.LVL17:
	rjmp .L21
.LVL18:
.L22:
	.loc 1 28 0
	ldi r24,0
.LVL19:
.L21:
.LBE20:
.LBE19:
	.loc 1 74 0
	sts loActive.1799,r24
.LVL20:
.L20:
	.loc 1 76 0
	lds r24,index.1798
	lsl r24
	lds r22,loActive.1799
	subi r24,lo8(-(1))
	call doOutput
.LVL21:
	sts 138+1,r25
	sts 138,r24
	.loc 1 77 0
/* #APP */
 ;  77 "../driver/pwm.c" 1
	sei
 ;  0 "" 2
	.loc 1 78 0
/* #NOAPP */
	lds r24,index.1798
	ldi r25,0
	adiw r24,1
	andi r24,3
	clr r25
	sts index.1798,r24
/* epilogue start */
	.loc 1 79 0
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
	.size	__vector_14, .-__vector_14
	.section	.text.pwmInit,"ax",@progbits
.global	pwmInit
	.type	pwmInit, @function
pwmInit:
.LFB12:
	.loc 1 83 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 84 0
	ldi r24,lo8(-1)
	out 0x7,r24
	.loc 1 85 0
	out 0x8,__zero_reg__
	ret
	.cfi_endproc
.LFE12:
	.size	pwmInit, .-pwmInit
	.section	.text.pwmWrite,"ax",@progbits
.global	pwmWrite
	.type	pwmWrite, @function
pwmWrite:
.LFB13:
	.loc 1 89 0
	.cfi_startproc
.LVL22:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB21:
.LBB22:
.LBB23:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL23:
/* #NOAPP */
.LBE23:
.LBE22:
	.loc 1 91 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(PWM))
	sbci r31,hi8(-(PWM))
	ldi r18,lo8(20)
	mul r18,r22
	movw r24,r0
	mul r18,r23
	add r25,r0
	clr __zero_reg__
.LVL24:
	std Z+1,r25
	st Z,r24
.LVL25:
.LBB24:
.LBB25:
	.loc 2 56 0
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	sei
 ;  0 "" 2
	.loc 2 57 0
/* #NOAPP */
	ret
.LBE25:
.LBE24:
.LBE21:
	.cfi_endproc
.LFE13:
	.size	pwmWrite, .-pwmWrite
	.section	.text.pwmEnable,"ax",@progbits
.global	pwmEnable
	.type	pwmEnable, @function
pwmEnable:
.LFB14:
	.loc 1 95 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 96 0
	ldi r30,lo8(-124)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	sts 136+1,r25
	sts 136,r24
	.loc 1 97 0
	ld r24,Z
	ldd r25,Z+1
	sts 138+1,r25
	sts 138,r24
	.loc 1 98 0
	in r24,0x16
	ori r24,lo8(6)
	out 0x16,r24
	.loc 1 99 0
	ldi r30,lo8(111)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	ret
	.cfi_endproc
.LFE14:
	.size	pwmEnable, .-pwmEnable
	.section	.text.pwmDisable,"ax",@progbits
.global	pwmDisable
	.type	pwmDisable, @function
pwmDisable:
.LFB15:
	.loc 1 103 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB26:
	.loc 1 104 0
	in r25,__SREG__
.LVL26:
.LBB27:
.LBB28:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL27:
/* #NOAPP */
.LBE28:
.LBE27:
	.loc 1 106 0
	ldi r30,lo8(111)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-7)
	st Z,r24
	.loc 1 107 0
	in r24,0x16
	ori r24,lo8(6)
	out 0x16,r24
.LVL28:
.LBB29:
.LBB30:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LBE30:
.LBE29:
.LBE26:
	.loc 1 109 0
	out 0x8,__zero_reg__
	ret
	.cfi_endproc
.LFE15:
	.size	pwmDisable, .-pwmDisable
	.section	.bss.loActive.1799,"aw",@nobits
	.type	loActive.1799, @object
	.size	loActive.1799, 1
loActive.1799:
	.zero	1
	.section	.bss.lastLoStart.1800,"aw",@nobits
	.type	lastLoStart.1800, @object
	.size	lastLoStart.1800, 2
lastLoStart.1800:
	.zero	2
	.section	.bss.index.1798,"aw",@nobits
	.type	index.1798, @object
	.size	index.1798, 1
index.1798:
	.zero	1
	.section	.bss.loActive.1791,"aw",@nobits
	.type	loActive.1791, @object
	.size	loActive.1791, 1
loActive.1791:
	.zero	1
	.section	.bss.lastLoStart.1792,"aw",@nobits
	.type	lastLoStart.1792, @object
	.size	lastLoStart.1792, 2
lastLoStart.1792:
	.zero	2
	.section	.bss.index.1790,"aw",@nobits
	.type	index.1790, @object
	.size	index.1790, 1
index.1790:
	.zero	1
	.section	.progmem.data.masktable,"a",@progbits
	.type	masktable, @object
	.size	masktable, 8
masktable:
	.byte	64
	.byte	16
	.byte	4
	.byte	8
	.byte	2
	.byte	1
	.byte	32
	.byte	-128
	.section	.bss.PWM,"aw",@nobits
	.type	PWM, @object
	.size	PWM, 16
PWM:
	.zero	16
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../include/mixer.h"
	.file 5 "../include/pid.h"
	.file 6 "../include/config.h"
	.file 7 "../include/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x750
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x7c
	.long	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.long	0xbe
	.uleb128 0x6
	.long	.LASF10
	.byte	0x4
	.byte	0x22
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x4
	.byte	0x23
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
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
	.byte	0x4
	.byte	0x1d
	.long	0xd7
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x1f
	.long	0x3b
	.uleb128 0x9
	.long	0x82
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x4
	.byte	0x16
	.long	0x12e
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x1c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x4
	.byte	0x13
	.long	0x146
	.uleb128 0xc
	.string	"I8"
	.byte	0x4
	.byte	0x15
	.long	0x146
	.uleb128 0x9
	.long	0xd7
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x156
	.uleb128 0xe
	.long	0x156
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0x28
	.long	0x12e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0x33
	.long	0x17a
	.uleb128 0xd
	.long	0x15d
	.long	0x18a
	.uleb128 0xe
	.long	0x156
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.long	0x1cb
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.long	0x1e4
	.uleb128 0x9
	.long	0x18a
	.uleb128 0xc
	.string	"UI8"
	.byte	0x5
	.byte	0x15
	.long	0x1e4
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x1f4
	.uleb128 0xe
	.long	0x156
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.byte	0x16
	.long	0x1cb
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.long	0x240
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x6
	.byte	0x18
	.long	0x1ff
	.uleb128 0x5
	.byte	0x7c
	.byte	0x6
	.byte	0x1a
	.long	0x3a4
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x1d
	.long	0x3a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x1e
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x1f
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x20
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x21
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xf
	.string	"PID"
	.byte	0x6
	.byte	0x22
	.long	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0x2e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF49
	.byte	0x6
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xf
	.string	"LVA"
	.byte	0x6
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF50
	.byte	0x6
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF51
	.byte	0x6
	.byte	0x35
	.long	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF52
	.byte	0x6
	.byte	0x36
	.long	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF53
	.byte	0x6
	.byte	0x37
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF54
	.byte	0x6
	.byte	0x38
	.long	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xd
	.long	0x54
	.long	0x3b4
	.uleb128 0xe
	.long	0x156
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x3b
	.long	0x3c4
	.uleb128 0xe
	.long	0x156
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x54
	.long	0x3d4
	.uleb128 0xe
	.long	0x156
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x1f4
	.long	0x3e4
	.uleb128 0xe
	.long	0x156
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x29
	.long	0x3f4
	.uleb128 0xe
	.long	0x156
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x39
	.long	0x24b
	.uleb128 0x10
	.long	.LASF56
	.byte	0x2
	.byte	0x36
	.byte	0x1
	.byte	0x3
	.long	0x418
	.uleb128 0x11
	.string	"__s"
	.byte	0x2
	.byte	0x36
	.long	0x418
	.byte	0
	.uleb128 0x12
	.byte	0x2
	.long	0x41e
	.uleb128 0x13
	.long	0x3b
	.uleb128 0x10
	.long	.LASF57
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x43c
	.uleb128 0x11
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x418
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x15
	.long	.LASF78
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	0x54
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.byte	0x1
	.long	0x4ab
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x1f
	.long	0x3b
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x1f
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x18
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.byte	0x24
	.long	0x54
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.byte	0x24
	.long	0x3b
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x4d1
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x1
	.byte	0x13
	.long	0x4d1
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x15
	.long	0x54
	.byte	0
	.uleb128 0x12
	.byte	0x2
	.long	0x54
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST4
	.byte	0x1
	.long	0x563
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.byte	0x2f
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	index.1790
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	loActive.1791
	.uleb128 0x1e
	.long	.LASF63
	.byte	0x1
	.byte	0x31
	.long	0x54
	.byte	0x5
	.byte	0x3
	.long	lastLoStart.1792
	.uleb128 0x1f
	.long	0x4ab
	.long	.LBB15
	.long	.LBE15
	.byte	0x1
	.byte	0x37
	.long	0x559
	.uleb128 0x20
	.long	0x4bc
	.uleb128 0x18
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x21
	.long	0x4c7
	.long	.LLST5
	.uleb128 0x22
	.long	.LVL9
	.long	0x744
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL14
	.long	0x449
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.byte	0x1
	.long	0x5ef
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.byte	0x42
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	index.1798
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	loActive.1799
	.uleb128 0x1e
	.long	.LASF63
	.byte	0x1
	.byte	0x44
	.long	0x54
	.byte	0x5
	.byte	0x3
	.long	lastLoStart.1800
	.uleb128 0x1f
	.long	0x4ab
	.long	.LBB19
	.long	.LBE19
	.byte	0x1
	.byte	0x4a
	.long	0x5e5
	.uleb128 0x20
	.long	0x4bc
	.uleb128 0x18
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x21
	.long	0x4c7
	.long	.LLST7
	.uleb128 0x22
	.long	.LVL16
	.long	0x744
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL21
	.long	0x449
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x52
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x690
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x58
	.long	0x3b
	.long	.LLST8
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.byte	0x58
	.long	0x54
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x18
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.byte	0x5a
	.long	0x3b
	.byte	0
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0x5a
	.long	0x3b
	.long	.LLST9
	.uleb128 0x26
	.long	0x43c
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x5a
	.uleb128 0x27
	.long	0x3ff
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x5a
	.uleb128 0x28
	.long	0x40c
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1608
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x5e
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x66
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x710
	.uleb128 0x18
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x1e
	.long	.LASF69
	.byte	0x1
	.byte	0x68
	.long	0x3b
	.byte	0x1
	.byte	0x69
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0x68
	.long	0x3b
	.long	.LLST10
	.uleb128 0x26
	.long	0x43c
	.long	.LBB27
	.long	.LBE27
	.byte	0x1
	.byte	0x68
	.uleb128 0x27
	.long	0x423
	.long	.LBB29
	.long	.LBE29
	.byte	0x1
	.byte	0x68
	.uleb128 0x28
	.long	0x430
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1735
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"PWM"
	.byte	0x1
	.byte	0xe
	.long	0x3a4
	.byte	0x5
	.byte	0x3
	.long	PWM
	.uleb128 0x1e
	.long	.LASF73
	.byte	0x1
	.byte	0xf
	.long	0x732
	.byte	0x5
	.byte	0x3
	.long	masktable
	.uleb128 0x13
	.long	0x3b4
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x6
	.byte	0x3b
	.long	0x3f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF82
	.byte	0x7
	.byte	0x17
	.long	0x54
	.byte	0x1
	.uleb128 0x2d
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
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
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL3
	.word	0x1
	.byte	0x6e
	.long	.LVL3
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x6e
	.long	.LVL7
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	masktable
	.byte	0x22
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST4:
	.long	.LFB10
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
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI15
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x5
	.byte	0x3
	.long	lastLoStart.1792
	.long	.LVL11
	.long	.LVL12
	.word	0x6
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
	.sleb128 14
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI29
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL18
	.word	0x5
	.byte	0x3
	.long	lastLoStart.1800
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL22
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL23
	.long	.LVL25
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL25
	.long	.LFE13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL28
	.long	.LFE15
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
.LASF72:
	.string	"pwmEnable"
.LASF40:
	.string	"ArmingMode"
.LASF16:
	.string	"Rudder"
.LASF37:
	.string	"ACC_zero"
.LASF26:
	.string	"ILimit"
.LASF0:
	.string	"int8_t"
.LASF79:
	.string	"checkLoRate"
.LASF54:
	.string	"Camera"
.LASF58:
	.string	"index"
.LASF75:
	.string	"../driver/pwm.c"
.LASF19:
	.string	"sizetype"
.LASF29:
	.string	"RollOffset"
.LASF39:
	.string	"SelfLevelMode"
.LASF27:
	.string	"pid_param_t"
.LASF80:
	.string	"pwmDisable"
.LASF68:
	.string	"value"
.LASF1:
	.string	"uint8_t"
.LASF10:
	.string	"IsMotor"
.LASF31:
	.string	"PitchOffset"
.LASF25:
	.string	"IGain"
.LASF47:
	.string	"LCDContrast"
.LASF18:
	.string	"Flags"
.LASF69:
	.string	"sreg_save"
.LASF36:
	.string	"GYRO_zero"
.LASF56:
	.string	"__iSeiParam"
.LASF8:
	.string	"long long int"
.LASF43:
	.string	"ReceiverMode"
.LASF35:
	.string	"RX_chmap"
.LASF6:
	.string	"long int"
.LASF71:
	.string	"pwmInit"
.LASF76:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF81:
	.string	"Config"
.LASF41:
	.string	"AutoDisarm"
.LASF30:
	.string	"PitchGain"
.LASF82:
	.string	"millis"
.LASF60:
	.string	"__addr16"
.LASF49:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"Aileron"
.LASF42:
	.string	"LinkRollPitch"
.LASF70:
	.string	"__ToDo"
.LASF24:
	.string	"PLimit"
.LASF34:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF78:
	.string	"doOutput"
.LASF5:
	.string	"unsigned int"
.LASF55:
	.string	"config_t"
.LASF4:
	.string	"uint16_t"
.LASF57:
	.string	"__iRestore"
.LASF59:
	.string	"loActive"
.LASF17:
	.string	"Offset"
.LASF46:
	.string	"MinThrottle"
.LASF21:
	.string	"char"
.LASF20:
	.string	"mixer_channel_t"
.LASF74:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF44:
	.string	"MixerIndex"
.LASF61:
	.string	"__result"
.LASF67:
	.string	"channel"
.LASF48:
	.string	"HeightDampening"
.LASF73:
	.string	"masktable"
.LASF51:
	.string	"PID_SelfLevel"
.LASF23:
	.string	"PGain"
.LASF64:
	.string	"__vector_13"
.LASF7:
	.string	"long unsigned int"
.LASF62:
	.string	"lastStart"
.LASF53:
	.string	"Mixer"
.LASF66:
	.string	"pwmWrite"
.LASF32:
	.string	"camera_t"
.LASF22:
	.string	"mixer_t"
.LASF33:
	.string	"signature"
.LASF28:
	.string	"RollGain"
.LASF11:
	.string	"IsServo"
.LASF12:
	.string	"IsHiRate"
.LASF38:
	.string	"CalibrateFlags"
.LASF50:
	.string	"ServoFilter"
.LASF65:
	.string	"__vector_14"
.LASF45:
	.string	"StickScaling"
.LASF77:
	.string	"__iCliRetVal"
.LASF15:
	.string	"Elevator"
.LASF13:
	.string	"Throttle"
.LASF63:
	.string	"lastLoStart"
.LASF52:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
