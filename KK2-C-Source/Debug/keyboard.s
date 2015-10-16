	.file	"keyboard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.keyboardState,"ax",@progbits
.global	keyboardState
	.type	keyboardState, @function
keyboardState:
.LFB7:
	.file 1 "../driver/keyboard.c"
	.loc 1 20 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 21 0
	in r24,0x3
	com r24
	.loc 1 22 0
	andi r24,lo8(-16)
	ret
	.cfi_endproc
.LFE7:
	.size	keyboardState, .-keyboardState
	.section	.text.keyboardRead,"ax",@progbits
.global	keyboardRead
	.type	keyboardRead, @function
keyboardRead:
.LFB8:
	.loc 1 25 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 26 0
	call millis
.LVL0:
	movw r28,r24
.LVL1:
	.loc 1 27 0
	call keyboardState
.LVL2:
	mov r17,r24
.LVL3:
	.loc 1 28 0
	lds r24,lastKeys
	mov r16,r24
	com r16
	and r16,r17
.LVL4:
	.loc 1 29 0
	tst r17
	breq .L3
	.loc 1 31 0
	cp r24,r17
	breq .L4
	.loc 1 33 0
	sts keyDown+1,r29
	sts keyDown,r28
	.loc 1 34 0
	sts repeat,__zero_reg__
	.loc 1 35 0
	ldi r24,lo8(5)
	ldi r25,0
	call digitalsBuzz
.LVL5:
.L4:
	.loc 1 37 0
	lds r24,repeat
	lds r18,keyDown
	lds r19,keyDown+1
	cpi r24,lo8(16)
	brlo .L5
	.loc 1 37 0 is_stmt 0 discriminator 1
	movw r20,r28
	sub r20,r18
	sbc r21,r19
	cpi r20,20
	cpc r21,__zero_reg__
	brlo .L6
.LVL6:
	.loc 1 40 0 is_stmt 1
	sts keyDown+1,r29
	sts keyDown,r28
	rjmp .L11
.LVL7:
.L5:
	.loc 1 42 0
	tst r24
	breq .L7
.L6:
	.loc 1 42 0 is_stmt 0 discriminator 1
	movw r20,r28
	sub r20,r18
	sbc r21,r19
	cpi r20,100
	cpc r21,__zero_reg__
	brlo .L3
.LVL8:
	.loc 1 45 0 is_stmt 1
	sts keyDown+1,r29
	sts keyDown,r28
	.loc 1 46 0
	subi r24,lo8(-(1))
	rjmp .L12
.LVL9:
.L7:
	.loc 1 48 0 discriminator 1
	movw r24,r28
	sub r24,r18
	sbc r25,r19
	movw r18,r24
	cpi r18,-12
	sbci r19,1
	brlo .L3
.LVL10:
	.loc 1 51 0
	sts keyDown+1,r29
	sts keyDown,r28
	.loc 1 52 0
	ldi r24,lo8(1)
.L12:
	sts repeat,r24
.L11:
	mov r16,r17
.LVL11:
.L3:
	.loc 1 55 0
	sts lastKeys,r17
	.loc 1 57 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
.LVL12:
	pop r17
.LVL13:
	pop r16
.LVL14:
	ret
	.cfi_endproc
.LFE8:
	.size	keyboardRead, .-keyboardRead
	.section	.text.keyboardInit,"ax",@progbits
.global	keyboardInit
	.type	keyboardInit, @function
keyboardInit:
.LFB9:
	.loc 1 60 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 62 0
	in r24,0x4
	ori r24,lo8(-16)
	out 0x4,r24
	.loc 1 64 0
	in r24,0x5
	ori r24,lo8(-16)
	out 0x5,r24
	ret
	.cfi_endproc
.LFE9:
	.size	keyboardInit, .-keyboardInit
	.section	.bss.repeat,"aw",@nobits
	.type	repeat, @object
	.size	repeat, 1
repeat:
	.zero	1
	.section	.bss.keyDown,"aw",@nobits
	.type	keyDown, @object
	.size	keyDown, 2
keyDown:
	.zero	2
	.section	.bss.lastKeys,"aw",@nobits
	.type	lastKeys, @object
	.size	lastKeys, 1
lastKeys:
	.zero	1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/system.h"
	.file 4 "../include/digitals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x175
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0x1
	.long	.LASF17
	.long	.LASF18
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x13
	.long	0x30
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x18
	.long	0x30
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x10d
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x1a
	.long	0x49
	.long	.LLST1
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.byte	0x1b
	.long	0x30
	.long	.LLST2
	.uleb128 0x8
	.long	.LASF12
	.byte	0x1
	.byte	0x1c
	.long	0x30
	.long	.LLST3
	.uleb128 0x9
	.long	.LVL0
	.long	0x155
	.uleb128 0x9
	.long	.LVL2
	.long	0x85
	.uleb128 0xa
	.long	.LVL5
	.long	0x168
	.uleb128 0xb
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x3b
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xd
	.long	.LASF13
	.byte	0x1
	.byte	0xf
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	lastKeys
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x10
	.long	0x49
	.byte	0x5
	.byte	0x3
	.long	keyDown
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0x11
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	repeat
	.uleb128 0xe
	.byte	0x1
	.long	.LASF22
	.byte	0x3
	.byte	0x17
	.long	0x49
	.byte	0x1
	.long	0x168
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF23
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x49
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LVL12
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL13
	.word	0x1
	.byte	0x61
	.long	.LVL13
	.long	.LFE8
	.word	0x5
	.byte	0x3
	.long	lastKeys
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.word	0x1
	.byte	0x60
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x61
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x60
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x61
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x60
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x61
	.long	.LVL11
	.long	.LVL14
	.word	0x1
	.byte	0x60
	.long	.LVL14
	.long	.LFE8
	.word	0x1
	.byte	0x68
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"digitalsBuzz"
.LASF4:
	.string	"unsigned int"
.LASF21:
	.string	"keyboardInit"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"newkeys"
.LASF15:
	.string	"repeat"
.LASF17:
	.string	"../driver/keyboard.c"
.LASF11:
	.string	"keys"
.LASF2:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF19:
	.string	"keyboardState"
.LASF5:
	.string	"long int"
.LASF14:
	.string	"keyDown"
.LASF22:
	.string	"millis"
.LASF20:
	.string	"keyboardRead"
.LASF16:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF18:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF3:
	.string	"uint16_t"
.LASF13:
	.string	"lastKeys"
.LASF9:
	.string	"sizetype"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
