	.file	"serial.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Enqueue,"ax",@progbits
	.type	Enqueue, @function
Enqueue:
.LFB8:
	.file 1 "../driver/serial.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL1:
.LBB6:
.LBB7:
	.loc 1 26 0
	ldd r24,Z+33
.LVL2:
	ldd r25,Z+32
	subi r24,lo8(-(1))
	andi r24,lo8(31)
.LBE7:
.LBE6:
	.loc 1 31 0
	cp r24,r25
	breq .L1
.LVL3:
.LBB8:
.LBB9:
	.loc 1 33 0
	ldd r24,Z+33
	movw r26,r30
	add r26,r24
	adc r27,__zero_reg__
	st X,r22
	.loc 1 34 0
	ldd r24,Z+33
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	std Z+33,r24
.LVL4:
.L1:
	ret
.LBE9:
.LBE8:
	.cfi_endproc
.LFE8:
	.size	Enqueue, .-Enqueue
	.section	.lowtext,"ax",@progbits
.global	__vector_29
	.type	__vector_29, @function
__vector_29:
.LFB10:
	.loc 1 51 0
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
	push r24
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 24, -4
	push r25
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 25, -5
	push r30
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 30, -6
	push r31
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 31, -7
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
.LVL5:
.LBB13:
.LBB14:
	.loc 1 40 0
	lds r25,TX_Buf+32
	lds r24,TX_Buf+33
	cp r25,r24
	breq .L5
.LBB15:
	.loc 1 42 0
	lds r30,TX_Buf+32
	ldi r31,0
	subi r30,lo8(-(TX_Buf))
	sbci r31,hi8(-(TX_Buf))
	ld r25,Z
.LVL6:
	.loc 1 43 0
	lds r24,TX_Buf+32
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts TX_Buf+32,r24
.LBE15:
.LBE14:
.LBE13:
	.loc 1 54 0
	sts 206,r25
	rjmp .L4
.LVL7:
.L5:
	.loc 1 56 0
	lds r24,201
	andi r24,lo8(-33)
	sts 201,r24
.L4:
/* epilogue start */
	.loc 1 57 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE10:
	.size	__vector_29, .-__vector_29
.global	__vector_28
	.type	__vector_28, @function
__vector_28:
.LFB11:
	.loc 1 61 0
	.cfi_startproc
	push r1
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI12:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI13:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI14:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI15:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI16:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI17:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI18:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI19:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 62 0
	lds r22,206
	ldi r24,lo8(RX_Buf)
	ldi r25,hi8(RX_Buf)
	call Enqueue
.LVL8:
/* epilogue start */
	.loc 1 63 0
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
	.size	__vector_28, .-__vector_28
	.section	.text.serialInit,"ax",@progbits
.global	serialInit
	.type	serialInit, @function
serialInit:
.LFB12:
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 71 0
	sts TX_Buf+33,__zero_reg__
	.loc 1 72 0
	sts TX_Buf+32,__zero_reg__
	.loc 1 73 0
	sts RX_Buf+32,__zero_reg__
	.loc 1 74 0
	sts RX_Buf+33,__zero_reg__
	.loc 1 77 0
	ldi r24,lo8(10)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 1 78 0
	sts 200,__zero_reg__
	.loc 1 79 0
	ldi r24,lo8(-104)
	sts 201,r24
	.loc 1 80 0
	ldi r24,lo8(6)
	sts 202,r24
	ret
	.cfi_endproc
.LFE12:
	.size	serialInit, .-serialInit
	.section	.text.serialWriteChar,"ax",@progbits
.global	serialWriteChar
	.type	serialWriteChar, @function
serialWriteChar:
.LFB13:
	.loc 1 84 0
	.cfi_startproc
.LVL9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 0
	lds r25,201
	tst r25
	breq .L9
	.loc 1 89 0
	lds r25,200
	sbrs r25,5
	rjmp .L16
	.loc 1 91 0
	sts 206,r24
	.loc 1 92 0
	lds r24,201
.LVL10:
	ori r24,lo8(32)
	sts 201,r24
.LVL11:
	ret
.LVL12:
.L16:
.LBB18:
.LBB19:
	.loc 1 26 0
	lds r25,TX_Buf+33
	lds r18,TX_Buf+32
	subi r25,lo8(-(1))
	andi r25,lo8(31)
.LBE19:
.LBE18:
	.loc 1 97 0
	cp r25,r18
	breq .L16
	.loc 1 98 0
	mov r22,r24
	ldi r24,lo8(TX_Buf)
	ldi r25,hi8(TX_Buf)
.LVL13:
	jmp Enqueue
.LVL14:
.L9:
	ret
	.cfi_endproc
.LFE13:
	.size	serialWriteChar, .-serialWriteChar
	.section	.text.serialAvail,"ax",@progbits
.global	serialAvail
	.type	serialAvail, @function
serialAvail:
.LFB14:
	.loc 1 103 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 104 0
	lds r18,RX_Buf+32
	lds r25,RX_Buf+33
	ldi r24,lo8(1)
	cpse r18,r25
	rjmp .L20
	ldi r24,0
.L20:
	.loc 1 105 0
	ret
	.cfi_endproc
.LFE14:
	.size	serialAvail, .-serialAvail
	.section	.text.serialReadChar,"ax",@progbits
.global	serialReadChar
	.type	serialReadChar, @function
serialReadChar:
.LFB15:
	.loc 1 108 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL15:
.LBB23:
.LBB24:
	.loc 1 40 0
	lds r25,RX_Buf+32
	lds r24,RX_Buf+33
	cp r25,r24
	breq .L23
.LBB25:
	.loc 1 42 0
	lds r30,RX_Buf+32
	ldi r31,0
	subi r30,lo8(-(RX_Buf))
	sbci r31,hi8(-(RX_Buf))
	ld r24,Z
.LVL16:
	.loc 1 43 0
	lds r25,RX_Buf+32
	subi r25,lo8(-(1))
	andi r25,lo8(31)
	sts RX_Buf+32,r25
	.loc 1 44 0
	ldi r25,0
	ret
.LVL17:
.L23:
.LBE25:
	.loc 1 46 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.LBE24:
.LBE23:
	.loc 1 110 0
	ret
	.cfi_endproc
.LFE15:
	.size	serialReadChar, .-serialReadChar
	.section	.text.serialTerminate,"ax",@progbits
.global	serialTerminate
	.type	serialTerminate, @function
serialTerminate:
.LFB16:
	.loc 1 113 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 114 0
	sts 200,__zero_reg__
	.loc 1 115 0
	sts 201,__zero_reg__
	ret
	.cfi_endproc
.LFE16:
	.size	serialTerminate, .-serialTerminate
	.section	.noinit,"aw",@nobits
	.type	RX_Buf, @object
	.size	RX_Buf, 34
RX_Buf:
	.zero	34
	.type	TX_Buf, @object
	.size	TX_Buf, 34
TX_Buf:
	.zero	34
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x33f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF25
	.byte	0x1
	.long	.LASF26
	.long	.LASF27
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
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7b
	.long	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x7c
	.long	0x5f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x5
	.long	.LASF28
	.byte	0x22
	.byte	0x1
	.byte	0xe
	.long	0xc7
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x10
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x11
	.long	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x12
	.long	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x7
	.long	0x30
	.long	0xd7
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.long	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.long	0xfe
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x1d
	.long	0xfe
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0x1d
	.long	0x30
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x90
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x30
	.byte	0x1
	.long	0x121
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x18
	.long	0xfe
	.byte	0
	.uleb128 0xe
	.long	0xdc
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x181
	.uleb128 0xf
	.long	0xe9
	.long	.LLST0
	.uleb128 0x10
	.long	0xf4
	.byte	0x1
	.byte	0x66
	.uleb128 0x11
	.long	0x104
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x1f
	.long	0x164
	.uleb128 0xf
	.long	0x115
	.long	.LLST1
	.byte	0
	.uleb128 0x12
	.long	.LBB8
	.long	.LBE8
	.uleb128 0xf
	.long	0xf4
	.long	.LLST2
	.uleb128 0xf
	.long	0xe9
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x42
	.byte	0x1
	.long	0x1a9
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x26
	.long	0xfe
	.uleb128 0x13
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x2a
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST4
	.byte	0x1
	.long	0x1fc
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x34
	.long	0x42
	.uleb128 0x16
	.long	0x181
	.long	.LBB13
	.long	.LBE13
	.byte	0x1
	.byte	0x34
	.uleb128 0x10
	.long	0x192
	.byte	0x6
	.byte	0x3
	.long	TX_Buf
	.byte	0x9f
	.uleb128 0x12
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x17
	.long	0x19e
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.byte	0x1
	.long	0x22f
	.uleb128 0x18
	.long	.LVL8
	.long	0xdc
	.uleb128 0x19
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	RX_Buf
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x41
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2a5
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0x53
	.long	0x89
	.long	.LLST7
	.uleb128 0x11
	.long	0x104
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.byte	0x61
	.long	0x284
	.uleb128 0x1d
	.long	0x115
	.byte	0
	.uleb128 0x1e
	.long	.LVL14
	.byte	0x1
	.long	0xdc
	.uleb128 0x19
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TX_Buf
	.uleb128 0x19
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x66
	.long	0x30
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x6b
	.long	0x42
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x30b
	.uleb128 0x16
	.long	0x181
	.long	.LBB23
	.long	.LBE23
	.byte	0x1
	.byte	0x6d
	.uleb128 0x10
	.long	0x192
	.byte	0x6
	.byte	0x3
	.long	RX_Buf
	.byte	0x9f
	.uleb128 0x12
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x17
	.long	0x19e
	.long	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x70
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x21
	.long	.LASF23
	.byte	0x1
	.byte	0x15
	.long	0x90
	.byte	0x5
	.byte	0x3
	.long	TX_Buf
	.uleb128 0x21
	.long	.LASF24
	.byte	0x1
	.byte	0x16
	.long	0x90
	.byte	0x5
	.byte	0x3
	.long	RX_Buf
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
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE8
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE8
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST3:
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
.LLST4:
	.long	.LFB10
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
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x69
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
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI19
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x8
	.byte	0xce
	.long	.LVL11
	.long	.LVL12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14-1
	.word	0x1
	.byte	0x66
	.long	.LVL14-1
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL14
	.long	.LFE13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
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
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"__vector_28"
.LASF17:
	.string	"__vector_29"
.LASF29:
	.string	"Enqueue"
.LASF10:
	.string	"sizetype"
.LASF26:
	.string	"../driver/serial.c"
.LASF22:
	.string	"serialTerminate"
.LASF14:
	.string	"WritePtr"
.LASF2:
	.string	"uint8_t"
.LASF8:
	.string	"long long int"
.LASF6:
	.string	"long int"
.LASF27:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"serialWriteChar"
.LASF15:
	.string	"IsFull"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF21:
	.string	"serialInit"
.LASF16:
	.string	"Dequeue"
.LASF11:
	.string	"char"
.LASF25:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF3:
	.string	"int16_t"
.LASF23:
	.string	"TX_Buf"
.LASF24:
	.string	"RX_Buf"
.LASF7:
	.string	"long unsigned int"
.LASF28:
	.string	"FifoBuffer"
.LASF30:
	.string	"serialAvail"
.LASF13:
	.string	"ReadPtr"
.LASF12:
	.string	"Buffer"
.LASF20:
	.string	"serialReadChar"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
