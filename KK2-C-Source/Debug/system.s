	.file	"system.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__vector_15,"ax",@progbits
.global	__vector_15
	.type	__vector_15, @function
__vector_15:
.LFB7:
	.file 1 "../driver/system.c"
	.loc 1 15 0
	.cfi_startproc
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
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r24
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 24, -9
	push r25
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 25, -10
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	.loc 1 16 0
	lds r24,t1_ovf
	lds r25,t1_ovf+1
	adiw r24,1
	sts t1_ovf+1,r25
	sts t1_ovf,r24
	.loc 1 18 0
	lds r24,t1_millis
	lds r25,t1_millis+1
	movw r18,r24
	subi r18,-3
	sbci r19,-1
	sts t1_millis+1,r19
	sts t1_millis,r18
	.loc 1 19 0
	lds r18,t1_millis_fract
	lds r19,t1_millis_fract+1
	movw r20,r18
	subi r20,48
	sbci r21,-11
	.loc 1 20 0
	cpi r20,16
	ldi r22,39
	cpc r21,r22
	brsh .L2
	.loc 1 19 0
	sts t1_millis_fract+1,r21
	sts t1_millis_fract,r20
	rjmp .L1
.L2:
	.loc 1 22 0
	subi r18,64
	sbci r19,28
	sts t1_millis_fract+1,r19
	sts t1_millis_fract,r18
	.loc 1 23 0
	adiw r24,4
	sts t1_millis+1,r25
	sts t1_millis,r24
.L1:
/* epilogue start */
	.loc 1 25 0
	pop r25
	pop r24
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
.LFE7:
	.size	__vector_15, .-__vector_15
	.section	.text.ticks,"ax",@progbits
.global	ticks
	.type	ticks, @function
ticks:
.LFB8:
	.loc 1 28 0
	.cfi_startproc
	push r16
.LCFI9:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB12:
	.loc 1 30 0
	in r24,__SREG__
.LVL0:
.LBB13:
.LBB14:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL1:
/* #NOAPP */
.LBE14:
.LBE13:
	.loc 1 32 0
	lds r22,t1_ovf
	lds r23,t1_ovf+1
.LVL2:
	.loc 1 33 0
	lds r16,132
	lds r17,132+1
.LVL3:
	.loc 1 34 0
	sbis 0x16,0
	rjmp .L6
	.loc 1 34 0 is_stmt 0 discriminator 1
	cpi r16,-3
	ldi r25,-1
	cpc r17,r25
	brsh .L6
	.loc 1 35 0 is_stmt 1
	subi r22,-1
	sbci r23,-1
.LVL4:
.L6:
.LBB15:
.LBB16:
	.loc 2 70 0 discriminator 1
	out __SREG__,r24
	.loc 2 71 0 discriminator 1
.LBE16:
.LBE15:
.LBE12:
	.loc 1 37 0 discriminator 1
	movw r24,r22
.LVL5:
	ldi r26,0
	ldi r27,0
	clr r23
	clr r22
.LVL6:
	ldi r18,0
	ldi r19,0
	or r22,r16
	or r23,r17
	or r24,r18
	or r25,r19
/* epilogue start */
	.loc 1 38 0 discriminator 1
	pop r17
	pop r16
.LVL7:
	ret
	.cfi_endproc
.LFE8:
	.size	ticks, .-ticks
	.section	.text.micros,"ax",@progbits
.global	micros
	.type	micros, @function
micros:
.LFB9:
	.loc 1 42 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 52 0
	call ticks
.LVL8:
	ldi r18,lo8(20)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	.loc 1 53 0
	movw r24,r18
	ret
	.cfi_endproc
.LFE9:
	.size	micros, .-micros
	.section	.text.millis,"ax",@progbits
.global	millis
	.type	millis, @function
millis:
.LFB10:
	.loc 1 57 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB17:
	.loc 1 59 0
	in r18,__SREG__
.LVL9:
.LBB18:
.LBB19:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel toolchain\avr8 gcc\native\3.4.1061\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE19:
.LBE18:
	.loc 1 60 0
	lds r24,t1_millis
	lds r25,t1_millis+1
.LVL11:
.LBB20:
.LBB21:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LBE21:
.LBE20:
.LBE17:
	.loc 1 62 0
	ret
	.cfi_endproc
.LFE10:
	.size	millis, .-millis
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
.LFB11:
	.loc 1 65 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 67 0
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 68 0
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 74 0
	sbi 0x4,3
	.loc 1 77 0
	ldi r24,lo8(1)
	sts 129,r24
	.loc 1 78 0
	sts 111,r24
	ret
	.cfi_endproc
.LFE11:
	.size	setup, .-setup
	.section	.bss.t1_ovf,"aw",@nobits
	.type	t1_ovf, @object
	.size	t1_ovf, 2
t1_ovf:
	.zero	2
	.section	.bss.t1_millis_fract,"aw",@nobits
	.type	t1_millis_fract, @object
	.size	t1_millis_fract, 2
t1_millis_fract:
	.zero	2
	.section	.bss.t1_millis,"aw",@nobits
	.type	t1_millis, @object
	.size	t1_millis, 2
t1_millis:
	.zero	2
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../include/hardware.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2f0
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x7e
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.long	0x113
	.uleb128 0x6
	.long	.LASF10
	.byte	0x4
	.byte	0x12
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x4
	.byte	0x13
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
	.byte	0x14
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
	.byte	0x15
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.byte	0x16
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.byte	0x17
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.long	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
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
	.long	.LASF18
	.byte	0x4
	.byte	0x1a
	.long	0x11e
	.uleb128 0x7
	.long	0x82
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0x8
	.long	.LASF32
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x14a
	.uleb128 0x9
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x14a
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.long	0x150
	.uleb128 0xb
	.long	0x30
	.uleb128 0xc
	.long	.LASF33
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xd
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x1b
	.long	0x62
	.long	.LFB8
	.long	.LFE8
	.long	.LLST1
	.byte	0x1
	.long	0x205
	.uleb128 0xf
	.string	"t1"
	.byte	0x1
	.byte	0x1d
	.long	0x49
	.long	.LLST2
	.uleb128 0xf
	.string	"t2"
	.byte	0x1
	.byte	0x1d
	.long	0x49
	.long	.LLST3
	.uleb128 0x10
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x11
	.long	.LASF21
	.byte	0x1
	.byte	0x1e
	.long	0x30
	.long	.LLST4
	.uleb128 0x11
	.long	.LASF22
	.byte	0x1
	.byte	0x1e
	.long	0x30
	.long	.LLST5
	.uleb128 0x12
	.long	0x155
	.long	.LBB13
	.long	.LBE13
	.byte	0x1
	.byte	0x1e
	.uleb128 0x13
	.long	0x131
	.long	.LBB15
	.long	.LBE15
	.byte	0x1
	.byte	0x1e
	.uleb128 0x14
	.long	0x13e
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+442
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x29
	.long	0x49
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x22c
	.uleb128 0x16
	.long	.LVL8
	.long	0x178
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x38
	.long	0x49
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2ab
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x3a
	.long	0x49
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x18
	.long	.LASF21
	.byte	0x1
	.byte	0x3b
	.long	0x30
	.byte	0x1
	.byte	0x62
	.uleb128 0x11
	.long	.LASF22
	.byte	0x1
	.byte	0x3b
	.long	0x30
	.long	.LLST6
	.uleb128 0x12
	.long	0x155
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.byte	0x3b
	.uleb128 0x13
	.long	0x131
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x3b
	.uleb128 0x14
	.long	0x13e
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+610
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x40
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.byte	0xc
	.long	0x49
	.byte	0x5
	.byte	0x3
	.long	t1_millis
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.byte	0xc
	.long	0x49
	.byte	0x5
	.byte	0x3
	.long	t1_millis_fract
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.byte	0xc
	.long	0x49
	.byte	0x5
	.byte	0x3
	.long	t1_ovf
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LFB8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL6
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL7
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LFE8
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LFE8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL11
	.long	.LFE10
	.word	0x2
	.byte	0x30
	.byte	0x9f
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
.LASF23:
	.string	"ticks"
.LASF10:
	.string	"bit0"
.LASF11:
	.string	"bit1"
.LASF12:
	.string	"bit2"
.LASF13:
	.string	"bit3"
.LASF14:
	.string	"bit4"
.LASF15:
	.string	"bit5"
.LASF16:
	.string	"bit6"
.LASF17:
	.string	"bit7"
.LASF19:
	.string	"sizetype"
.LASF26:
	.string	"t1_millis"
.LASF2:
	.string	"uint8_t"
.LASF35:
	.string	"setup"
.LASF21:
	.string	"sreg_save"
.LASF8:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF25:
	.string	"millis"
.LASF31:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"__ToDo"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"_bitreg8"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF32:
	.string	"__iRestore"
.LASF20:
	.string	"char"
.LASF29:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF27:
	.string	"t1_millis_fract"
.LASF30:
	.string	"../driver/system.c"
.LASF7:
	.string	"long unsigned int"
.LASF34:
	.string	"__vector_15"
.LASF33:
	.string	"__iCliRetVal"
.LASF28:
	.string	"t1_ovf"
.LASF24:
	.string	"micros"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
