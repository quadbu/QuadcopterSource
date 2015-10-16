	.file	"digitals.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.digitalsInit,"ax",@progbits
.global	digitalsInit
	.type	digitalsInit, @function
digitalsInit:
.LFB7:
	.file 1 "../driver/digitals.c"
	.loc 1 22 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 23 0
	sbi 0x4,1
	.loc 1 24 0
	sbi 0x4,3
	ret
	.cfi_endproc
.LFE7:
	.size	digitalsInit, .-digitalsInit
	.section	.text.digitalsBuzzBlocking,"ax",@progbits
.global	digitalsBuzzBlocking
	.type	digitalsBuzzBlocking, @function
digitalsBuzzBlocking:
.LFB8:
	.loc 1 28 0
	.cfi_startproc
.LVL0:
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
	movw r28,r24
	.loc 1 29 0
	sbi 0x5,1
.LBB2:
	.loc 1 30 0
	call millis
.LVL1:
	movw r16,r24
.LVL2:
.L4:
	.loc 1 30 0 is_stmt 0 discriminator 1
	call millis
.LVL3:
	sub r24,r16
	sbc r25,r17
	cp r24,r28
	cpc r25,r29
	brlo .L4
.LBE2:
	.loc 1 31 0 is_stmt 1
	cbi 0x5,1
/* epilogue start */
	.loc 1 32 0
	pop r29
	pop r28
.LVL4:
	pop r17
	pop r16
.LVL5:
	ret
	.cfi_endproc
.LFE8:
	.size	digitalsBuzzBlocking, .-digitalsBuzzBlocking
	.section	.text.digitalsLoop,"ax",@progbits
.global	digitalsLoop
	.type	digitalsLoop, @function
digitalsLoop:
.LFB9:
	.loc 1 48 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 49 0
	call millis
.LVL6:
	.loc 1 50 0
	lds r20,digBUZZER+2
	lds r21,digBUZZER+2+1
	lds r18,digBUZZER
	lds r19,digBUZZER+1
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L7
	.loc 1 50 0 is_stmt 0 discriminator 1
	cp r24,r18
	cpc r25,r19
	brlo .L8
	sbi 0x3,1
	add r20,r24
	adc r21,r25
	sts digBUZZER+1,r21
	sts digBUZZER,r20
	rjmp .L8
.L7:
	.loc 1 50 0 discriminator 2
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L8
	.loc 1 50 0 discriminator 1
	sbis 0x5,1
	rjmp .L8
	cp r24,r18
	cpc r25,r19
	brlo .L8
	sbi 0x3,1
.L8:
	.loc 1 51 0 is_stmt 1
	lds r20,digLED+2
	lds r21,digLED+2+1
	lds r18,digLED
	lds r19,digLED+1
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L9
	.loc 1 51 0 is_stmt 0 discriminator 1
	cp r24,r18
	cpc r25,r19
	brlo .L6
	sbi 0x3,3
	add r24,r20
	adc r25,r21
.LVL7:
	sts digLED+1,r25
	sts digLED,r24
	ret
.LVL8:
.L9:
	.loc 1 51 0 discriminator 2
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L6
	.loc 1 51 0 discriminator 1
	sbis 0x5,3
	rjmp .L6
	cp r24,r18
	cpc r25,r19
	brlo .L6
	sbi 0x3,3
.L6:
	ret
	.cfi_endproc
.LFE9:
	.size	digitalsLoop, .-digitalsLoop
	.section	.text.digitalsBuzz,"ax",@progbits
.global	digitalsBuzz
	.type	digitalsBuzz, @function
digitalsBuzz:
.LFB10:
	.loc 1 55 0 is_stmt 1
	.cfi_startproc
.LVL9:
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 56 0
	call millis
.LVL10:
	add r24,r28
	adc r25,r29
	sts digBUZZER+1,r25
	sts digBUZZER,r24
	.loc 1 57 0
	sbi 0x5,1
/* epilogue start */
	.loc 1 58 0
	pop r29
	pop r28
.LVL11:
	ret
	.cfi_endproc
.LFE10:
	.size	digitalsBuzz, .-digitalsBuzz
	.section	.text.digitalsBuzzInterval,"ax",@progbits
.global	digitalsBuzzInterval
	.type	digitalsBuzzInterval, @function
digitalsBuzzInterval:
.LFB11:
	.loc 1 61 0
	.cfi_startproc
.LVL12:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 62 0
	lds r24,digBUZZER+2
	lds r25,digBUZZER+2+1
.LVL13:
	or r24,r25
	brne .L25
	.loc 1 63 0
	call millis
.LVL14:
	sts digBUZZER+1,r25
	sts digBUZZER,r24
.L25:
	.loc 1 64 0
	sts digBUZZER+2+1,r29
	sts digBUZZER+2,r28
	.loc 1 65 0
	or r28,r29
	brne .L24
	.loc 1 66 0
	cbi 0x5,1
.L24:
/* epilogue start */
	.loc 1 67 0
	pop r29
	pop r28
.LVL15:
	ret
	.cfi_endproc
.LFE11:
	.size	digitalsBuzzInterval, .-digitalsBuzzInterval
	.section	.text.digitalsLed,"ax",@progbits
.global	digitalsLed
	.type	digitalsLed, @function
digitalsLed:
.LFB12:
	.loc 1 70 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 71 0
	call millis
.LVL17:
	add r24,r28
	adc r25,r29
	sts digLED+1,r25
	sts digLED,r24
	.loc 1 72 0
	sts digLED+2+1,__zero_reg__
	sts digLED+2,__zero_reg__
	.loc 1 73 0
	sbi 0x5,3
/* epilogue start */
	.loc 1 74 0
	pop r29
	pop r28
.LVL18:
	ret
	.cfi_endproc
.LFE12:
	.size	digitalsLed, .-digitalsLed
	.section	.text.digitalsLedInterval,"ax",@progbits
.global	digitalsLedInterval
	.type	digitalsLedInterval, @function
digitalsLedInterval:
.LFB13:
	.loc 1 77 0
	.cfi_startproc
.LVL19:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 78 0
	lds r24,digLED+2
	lds r25,digLED+2+1
.LVL20:
	or r24,r25
	brne .L29
	.loc 1 79 0
	call millis
.LVL21:
	sts digLED+1,r25
	sts digLED,r24
.L29:
	.loc 1 80 0
	sts digLED+2+1,r29
	sts digLED+2,r28
	.loc 1 81 0
	or r28,r29
	brne .L28
	.loc 1 82 0
	cbi 0x5,3
.L28:
/* epilogue start */
	.loc 1 83 0
	pop r29
	pop r28
.LVL22:
	ret
	.cfi_endproc
.LFE13:
	.size	digitalsLedInterval, .-digitalsLedInterval
	.section	.bss.digBUZZER,"aw",@nobits
	.type	digBUZZER, @object
	.size	digBUZZER, 4
digBUZZER:
	.zero	4
	.section	.bss.digLED,"aw",@nobits
	.type	digLED, @object
	.size	digLED, 4
digLED:
	.zero	4
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/hardware.h"
	.file 4 "../include/system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF29
	.byte	0x1
	.long	.LASF30
	.long	.LASF31
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
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.long	0x108
	.uleb128 0x6
	.long	.LASF9
	.byte	0x3
	.byte	0x12
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x13
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x14
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x15
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x16
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x17
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x18
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x19
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x1a
	.long	0x113
	.uleb128 0x7
	.long	0x77
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.long	0x14b
	.uleb128 0x8
	.string	"end"
	.byte	0x1
	.byte	0xe
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x10
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x1
	.byte	0x11
	.long	0x126
	.uleb128 0xa
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x15
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.byte	0x1
	.long	0x1be
	.uleb128 0xc
	.string	"ms"
	.byte	0x1
	.byte	0x1b
	.long	0x49
	.long	.LLST1
	.uleb128 0xd
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xe
	.string	"_m"
	.byte	0x1
	.byte	0x1e
	.long	0x49
	.long	.LLST2
	.uleb128 0xf
	.long	.LVL1
	.long	0x2d8
	.uleb128 0xf
	.long	.LVL3
	.long	0x2d8
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x2f
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1ee
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x31
	.long	0x49
	.long	.LLST3
	.uleb128 0xf
	.long	.LVL6
	.long	0x2d8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST4
	.byte	0x1
	.long	0x220
	.uleb128 0xc
	.string	"ms"
	.byte	0x1
	.byte	0x36
	.long	0x49
	.long	.LLST5
	.uleb128 0xf
	.long	.LVL10
	.long	0x2d8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.byte	0x1
	.long	0x252
	.uleb128 0xc
	.string	"ms"
	.byte	0x1
	.byte	0x3c
	.long	0x49
	.long	.LLST7
	.uleb128 0xf
	.long	.LVL14
	.long	0x2d8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST8
	.byte	0x1
	.long	0x284
	.uleb128 0xc
	.string	"ms"
	.byte	0x1
	.byte	0x45
	.long	0x49
	.long	.LLST9
	.uleb128 0xf
	.long	.LVL17
	.long	0x2d8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST10
	.byte	0x1
	.long	0x2b6
	.uleb128 0xc
	.string	"ms"
	.byte	0x1
	.byte	0x4c
	.long	0x49
	.long	.LLST11
	.uleb128 0xf
	.long	.LVL21
	.long	0x2d8
	.byte	0
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.byte	0x13
	.long	0x14b
	.byte	0x5
	.byte	0x3
	.long	digLED
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x13
	.long	0x14b
	.byte	0x5
	.byte	0x3
	.long	digBUZZER
	.uleb128 0x12
	.byte	0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x17
	.long	0x49
	.byte	0x1
	.uleb128 0x13
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
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
	.long	.LVL0
	.long	.LVL1-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LVL4
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL5
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE9
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LFB10
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL10-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL11
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB11
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL15
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LFE11
	.word	0x5
	.byte	0x3
	.long	digBUZZER+2
	.long	0
	.long	0
.LLST8:
	.long	.LFB12
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL17-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1
	.long	.LVL18
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LFB13
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL22
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LFE13
	.word	0x5
	.byte	0x3
	.long	digLED+2
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
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
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"digLED"
.LASF9:
	.string	"bit0"
.LASF10:
	.string	"bit1"
.LASF11:
	.string	"bit2"
.LASF12:
	.string	"bit3"
.LASF13:
	.string	"bit4"
.LASF14:
	.string	"bit5"
.LASF15:
	.string	"bit6"
.LASF16:
	.string	"bit7"
.LASF18:
	.string	"sizetype"
.LASF26:
	.string	"digitalsLedInterval"
.LASF2:
	.string	"uint8_t"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"long int"
.LASF34:
	.string	"millis"
.LASF22:
	.string	"digitalsBuzzBlocking"
.LASF23:
	.string	"digitalsBuzz"
.LASF31:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF24:
	.string	"digitalsBuzzInterval"
.LASF25:
	.string	"digitalsLed"
.LASF32:
	.string	"digitalsInit"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"_bitreg8"
.LASF30:
	.string	"../driver/digitals.c"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF21:
	.string	"digital_t"
.LASF19:
	.string	"char"
.LASF29:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF28:
	.string	"digBUZZER"
.LASF33:
	.string	"digitalsLoop"
.LASF6:
	.string	"long unsigned int"
.LASF20:
	.string	"interval"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
