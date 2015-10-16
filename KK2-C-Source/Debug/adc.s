	.file	"adc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.lowtext,"ax",@progbits
.global	__vector_24
	.type	__vector_24, @function
__vector_24:
.LFB7:
	.file 1 "../driver/adc.c"
	.loc 1 16 0
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
	push r24
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Interrupt */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 18 0
	lds r18,_index.1612
	lds r24,120
	lds r25,120+1
	mov r30,r18
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_adc))
	sbci r31,hi8(-(_adc))
	std Z+1,r25
	st Z,r24
	.loc 1 19 0
	ldi r24,lo8(1)
	add r24,r18
	andi r24,lo8(7)
	sts _index.1612,r24
	.loc 1 20 0
	sts 124,r24
	.loc 1 21 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
/* epilogue start */
	.loc 1 22 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE7:
	.size	__vector_24, .-__vector_24
	.section	.text.adcInit,"ax",@progbits
.global	adcInit
	.type	adcInit, @function
adcInit:
.LFB8:
	.loc 1 25 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	ldi r24,lo8(-1)
	sts 126,r24
	.loc 1 30 0
	sts 124,__zero_reg__
	.loc 1 31 0
	ldi r24,lo8(-33)
	sts 122,r24
	ret
	.cfi_endproc
.LFE8:
	.size	adcInit, .-adcInit
	.section	.text.adcRead,"ax",@progbits
.global	adcRead
	.type	adcRead, @function
adcRead:
.LFB9:
	.loc 1 36 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 38 0
	ldi r25,lo8(-9)
	sts 122,r25
.L5:
	.loc 1 39 0 discriminator 1
	lds r25,122
	sbrc r25,6
	rjmp .L5
	.loc 1 41 0
	sts 124,r24
	.loc 1 42 0
	lds r24,122
.LVL1:
	ori r24,lo8(64)
	sts 122,r24
.LVL2:
.L7:
	.loc 1 43 0 discriminator 1
	lds r24,122
	sbrc r24,6
	rjmp .L7
	.loc 1 44 0
	ldi r24,lo8(-33)
	sts 122,r24
	.loc 1 45 0
	lds r24,120
	lds r25,120+1
	.loc 1 46 0
	ret
	.cfi_endproc
.LFE9:
	.size	adcRead, .-adcRead
	.section	.text.adcGet,"ax",@progbits
.global	adcGet
	.type	adcGet, @function
adcGet:
.LFB10:
	.loc 1 49 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB7:
.LBB8:
.LBB9:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL4:
/* #NOAPP */
.LBE9:
.LBE8:
	.loc 1 52 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
.LVL5:
	subi r30,lo8(-(_adc))
	sbci r31,hi8(-(_adc))
	ld r24,Z
	ldd r25,Z+1
.LVL6:
.LBB10:
.LBB11:
	.loc 2 56 0
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	sei
 ;  0 "" 2
	.loc 2 57 0
/* #NOAPP */
.LBE11:
.LBE10:
.LBE7:
	.loc 1 54 0
	ret
	.cfi_endproc
.LFE10:
	.size	adcGet, .-adcGet
	.section	.bss._index.1612,"aw",@nobits
	.type	_index.1612, @object
	.size	_index.1612, 1
_index.1612:
	.zero	1
	.section	.bss._adc,"aw",@nobits
	.type	_adc, @object
	.size	_adc, 16
_adc:
	.zero	16
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d1
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.byte	0x1
	.long	.LASF19
	.long	.LASF20
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x7c
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.long	0x49
	.long	0x95
	.uleb128 0x6
	.long	0x77
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.byte	0x36
	.byte	0x1
	.byte	0x3
	.long	0xae
	.uleb128 0x8
	.string	"__s"
	.byte	0x2
	.byte	0x36
	.long	0xae
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0xb4
	.uleb128 0xa
	.long	0x30
	.uleb128 0xb
	.long	.LASF22
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xc
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.long	0xf2
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x11
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	_index.1612
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x18
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	0x49
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x135
	.uleb128 0x10
	.long	.LASF13
	.byte	0x1
	.byte	0x23
	.long	0x30
	.long	.LLST1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x49
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1c3
	.uleb128 0x10
	.long	.LASF13
	.byte	0x1
	.byte	0x30
	.long	0x30
	.long	.LLST2
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0x32
	.long	0x49
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x12
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x13
	.long	.LASF15
	.byte	0x1
	.byte	0x33
	.long	0x30
	.byte	0
	.uleb128 0x14
	.long	.LASF16
	.byte	0x1
	.byte	0x33
	.long	0x30
	.long	.LLST3
	.uleb128 0x15
	.long	0xb9
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x33
	.uleb128 0x16
	.long	0x95
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.long	0xa2
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+379
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0xc
	.long	0x85
	.byte	0x5
	.byte	0x3
	.long	_adc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB7
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
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x8
	.byte	0x7c
	.long	.LVL2
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6
	.long	.LFE10
	.word	0x2
	.byte	0x30
	.byte	0x9f
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"sreg_save"
.LASF24:
	.string	"adcInit"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"__iSeiParam"
.LASF17:
	.string	"_adc"
.LASF6:
	.string	"long unsigned int"
.LASF16:
	.string	"__ToDo"
.LASF12:
	.string	"adcGet"
.LASF19:
	.string	"../driver/adc.c"
.LASF22:
	.string	"__iCliRetVal"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"__vector_24"
.LASF13:
	.string	"channel"
.LASF11:
	.string	"adcRead"
.LASF18:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF20:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF3:
	.string	"uint16_t"
.LASF14:
	.string	"_index"
.LASF9:
	.string	"sizetype"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
