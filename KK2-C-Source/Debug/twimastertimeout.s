	.file	"twimastertimeout.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.i2c_init,"ax",@progbits
.global	i2c_init
	.type	i2c_init, @function
i2c_init:
.LFB0:
	.file 1 "../i2chw/twimastertimeout.c"
	.loc 1 35 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 38 0
	sts 185,__zero_reg__
	.loc 1 39 0
	ldi r24,lo8(12)
	sts 184,r24
	ret
	.cfi_endproc
.LFE0:
	.size	i2c_init, .-i2c_init
	.section	.text.i2c_start,"ax",@progbits
.global	i2c_start
	.type	i2c_start, @function
i2c_start:
.LFB1:
	.loc 1 49 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 0
	ldi r25,lo8(-92)
	sts 188,r25
.LVL1:
	.loc 1 57 0
	ldi r20,lo8(-1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
.LVL2:
.L5:
	.loc 1 58 0 discriminator 1
	lds r25,188
	sbrc r25,7
	rjmp .L3
	.loc 1 58 0 is_stmt 0 discriminator 2
.LVL3:
	subi r20,1
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	brcc .L5
	rjmp .L4
.L3:
	.loc 1 59 0 is_stmt 1
	or r20,r21
	or r20,r22
	or r20,r23
	brne .L4
.LVL4:
.L8:
	.loc 1 60 0
	ldi r24,lo8(1)
	ret
.LVL5:
.L4:
	.loc 1 63 0
	lds r25,185
	andi r25,lo8(-8)
.LVL6:
	.loc 1 64 0
	cpi r25,lo8(8)
	breq .L7
	.loc 1 64 0 is_stmt 0 discriminator 1
	cpi r25,lo8(16)
	brne .L8
.L7:
	.loc 1 67 0 is_stmt 1
	sts 187,r24
	.loc 1 68 0
	ldi r24,lo8(-124)
.LVL7:
	sts 188,r24
.LVL8:
	.loc 1 71 0
	ldi r24,lo8(-1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.LVL9:
.L11:
	.loc 1 72 0 discriminator 1
	lds r18,188
	sbrc r18,7
	rjmp .L9
	.loc 1 72 0 is_stmt 0 discriminator 2
.LVL10:
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	brcc .L11
	rjmp .L10
.L9:
	.loc 1 73 0 is_stmt 1
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L8
.L10:
.LVL11:
	.loc 1 77 0
	lds r24,185
.LVL12:
	andi r24,lo8(-8)
.LVL13:
	.loc 1 78 0
	cpi r24,lo8(24)
	breq .L12
	.loc 1 78 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brne .L8
.L12:
	.loc 1 80 0 is_stmt 1
	ldi r24,0
.LVL14:
	.loc 1 82 0
	ret
	.cfi_endproc
.LFE1:
	.size	i2c_start, .-i2c_start
	.section	.text.i2c_start_wait,"ax",@progbits
.global	i2c_start_wait
	.type	i2c_start_wait, @function
i2c_start_wait:
.LFB2:
	.loc 1 92 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 99 0
	ldi r20,lo8(-92)
	.loc 1 111 0
	ldi r21,lo8(-124)
	.loc 1 122 0
	ldi r22,lo8(-108)
.L28:
.LVL16:
	.loc 1 99 0
	sts 188,r20
.LVL17:
	.loc 1 103 0
	ldi r18,0
	ldi r19,0
.LVL18:
.L27:
	.loc 1 103 0 is_stmt 0 discriminator 1
	lds r25,188
	sbrc r25,7
	rjmp .L29
	subi r18,-1
	sbci r19,-1
	.loc 1 103 0 discriminator 2
	cp r18,__zero_reg__
	ldi r25,1
	cpc r19,r25
	brne .L27
.L29:
	.loc 1 106 0 is_stmt 1
	lds r25,185
	andi r25,lo8(-8)
.LVL19:
	.loc 1 107 0
	cpi r25,lo8(8)
	breq .L30
	.loc 1 107 0 is_stmt 0 discriminator 1
	cpi r25,lo8(16)
	brne .L28
.L30:
	.loc 1 110 0 is_stmt 1
	sts 187,r24
	.loc 1 111 0
	sts 188,r21
.LVL20:
	.loc 1 115 0
	ldi r18,0
	ldi r19,0
.LVL21:
.L33:
	.loc 1 115 0 is_stmt 0 discriminator 1
	lds r25,188
	sbrc r25,7
	rjmp .L32
	subi r18,-1
	sbci r19,-1
	.loc 1 115 0 discriminator 2
	cp r18,__zero_reg__
	ldi r25,1
	cpc r19,r25
	brne .L33
.L32:
	.loc 1 118 0 is_stmt 1
	lds r25,185
	andi r25,lo8(-8)
.LVL22:
	.loc 1 119 0
	cpi r25,lo8(32)
	breq .L34
	.loc 1 119 0 is_stmt 0 discriminator 1
	cpi r25,lo8(88)
	brne .L26
.L34:
	.loc 1 122 0 is_stmt 1
	sts 188,r22
.LVL23:
	.loc 1 126 0
	ldi r18,0
	ldi r19,0
.LVL24:
.L36:
	.loc 1 126 0 is_stmt 0 discriminator 1
	lds r25,188
	sbrs r25,4
	rjmp .L28
	subi r18,-1
	sbci r19,-1
	.loc 1 126 0 discriminator 2
	cp r18,__zero_reg__
	ldi r25,1
	cpc r19,r25
	brne .L36
	rjmp .L28
.LVL25:
.L26:
	ret
	.cfi_endproc
.LFE2:
	.size	i2c_start_wait, .-i2c_start_wait
	.section	.text.i2c_rep_start,"ax",@progbits
.global	i2c_rep_start
	.type	i2c_rep_start, @function
i2c_rep_start:
.LFB3:
	.loc 1 146 0 is_stmt 1
	.cfi_startproc
.LVL26:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 147 0
	jmp i2c_start
.LVL27:
	.cfi_endproc
.LFE3:
	.size	i2c_rep_start, .-i2c_rep_start
	.section	.text.i2c_stop,"ax",@progbits
.global	i2c_stop
	.type	i2c_stop, @function
i2c_stop:
.LFB4:
	.loc 1 156 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL28:
	.loc 1 160 0
	ldi r24,lo8(-108)
	sts 188,r24
.LVL29:
	.loc 1 164 0
	ldi r24,0
	ldi r25,0
.LVL30:
.L58:
	.loc 1 164 0 is_stmt 0 discriminator 1
	lds r18,188
	sbrs r18,4
	rjmp .L56
	adiw r24,1
	.loc 1 164 0 discriminator 2
	cp r24,__zero_reg__
	ldi r18,1
	cpc r25,r18
	brne .L58
.L56:
	ret
	.cfi_endproc
.LFE4:
	.size	i2c_stop, .-i2c_stop
	.section	.text.i2c_write,"ax",@progbits
.global	i2c_write
	.type	i2c_write, @function
i2c_write:
.LFB5:
	.loc 1 177 0 is_stmt 1
	.cfi_startproc
.LVL31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 182 0
	sts 187,r24
	.loc 1 183 0
	ldi r24,lo8(-124)
.LVL32:
	sts 188,r24
.LVL33:
	.loc 1 186 0
	ldi r24,lo8(-1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.LVL34:
.L68:
	.loc 1 187 0 discriminator 1
	lds r18,188
	sbrc r18,7
	rjmp .L66
	.loc 1 187 0 is_stmt 0 discriminator 2
.LVL35:
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	brcc .L68
	rjmp .L67
.L66:
	.loc 1 188 0 is_stmt 1
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L71
.L67:
.LVL36:
	.loc 1 192 0
	lds r25,185
.LVL37:
	andi r25,lo8(-8)
.LVL38:
	.loc 1 193 0
	ldi r24,lo8(1)
	cpi r25,lo8(40)
	brne .L69
	ldi r24,0
	ret
.LVL39:
.L71:
	.loc 1 189 0
	ldi r24,lo8(1)
.LVL40:
.L69:
	.loc 1 196 0
	ret
	.cfi_endproc
.LFE5:
	.size	i2c_write, .-i2c_write
	.section	.text.i2c_readAck,"ax",@progbits
.global	i2c_readAck
	.type	i2c_readAck, @function
i2c_readAck:
.LFB6:
	.loc 1 205 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL41:
	.loc 1 208 0
	ldi r24,lo8(-60)
	sts 188,r24
.LVL42:
	.loc 1 209 0
	ldi r24,lo8(-1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.LVL43:
.L78:
	.loc 1 210 0 discriminator 1
	lds r18,188
	sbrc r18,7
	rjmp .L76
	.loc 1 210 0 is_stmt 0 discriminator 2
.LVL44:
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	brcc .L78
	rjmp .L77
.L76:
	.loc 1 211 0 is_stmt 1
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L80
.L77:
.LVL45:
	.loc 1 214 0
	lds r24,187
	ret
.LVL46:
.L80:
	.loc 1 212 0
	ldi r24,0
.LVL47:
	.loc 1 216 0
	ret
	.cfi_endproc
.LFE6:
	.size	i2c_readAck, .-i2c_readAck
	.section	.text.i2c_readNak,"ax",@progbits
.global	i2c_readNak
	.type	i2c_readNak, @function
i2c_readNak:
.LFB7:
	.loc 1 225 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL48:
	.loc 1 228 0
	ldi r24,lo8(-124)
	sts 188,r24
.LVL49:
	.loc 1 229 0
	ldi r24,lo8(-1)
	ldi r25,0
	ldi r26,0
	ldi r27,0
.LVL50:
.L87:
	.loc 1 230 0 discriminator 1
	lds r18,188
	sbrc r18,7
	rjmp .L85
	.loc 1 230 0 is_stmt 0 discriminator 2
.LVL51:
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	brcc .L87
	rjmp .L86
.L85:
	.loc 1 231 0 is_stmt 1
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L89
.L86:
.LVL52:
	.loc 1 234 0
	lds r24,187
	ret
.LVL53:
.L89:
	.loc 1 232 0
	ldi r24,0
.LVL54:
	.loc 1 236 0
	ret
	.cfi_endproc
.LFE7:
	.size	i2c_readNak, .-i2c_readNak
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x22a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.long	.LASF21
	.long	.LASF22
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x7e
	.long	0x62
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
	.long	.LASF23
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0x32
	.long	0x57
	.long	.LLST1
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0x33
	.long	0x30
	.long	.LLST2
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x11f
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0x5b
	.long	0x3b
	.byte	0x1
	.byte	0x68
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0x5d
	.long	0x57
	.long	.LLST3
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0x5e
	.long	0x30
	.long	.LLST4
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x3b
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x15f
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.long	.LLST5
	.uleb128 0xb
	.long	.LVL27
	.byte	0x1
	.long	0x8d
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x189
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0x9d
	.long	0x57
	.long	.LLST6
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x3b
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1d5
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST7
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0xb2
	.long	0x57
	.long	.LLST8
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0xb3
	.long	0x30
	.long	.LLST9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	0x3b
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x203
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0xce
	.long	0x57
	.long	.LLST10
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.long	0x3b
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x8
	.long	.LASF9
	.byte	0x1
	.byte	0xe2
	.long	0x57
	.long	.LLST11
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
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x8
	.byte	0xbb
	.long	.LVL8
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL9
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL9
	.long	.LVL11
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
.LLST2:
	.long	.LVL6
	.long	.LVL12
	.word	0x1
	.byte	0x69
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL19
	.long	.LVL21
	.word	0x1
	.byte	0x69
	.long	.LVL22
	.long	.LVL24
	.word	0x1
	.byte	0x69
	.long	.LVL25
	.long	.LFE2
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST5:
	.long	.LVL26
	.long	.LVL27-1
	.word	0x1
	.byte	0x68
	.long	.LVL27-1
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL31
	.long	.LVL32
	.word	0x1
	.byte	0x68
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x8
	.byte	0xbb
	.long	.LVL33
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL31
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL34
	.long	.LVL36
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
	.long	.LVL39
	.long	.LVL40
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
.LLST9:
	.long	.LVL37
	.long	.LVL38
	.word	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST10:
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL43
	.long	.LVL45
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
	.long	.LVL46
	.long	.LVL47
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
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL49
	.long	.LVL50
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL50
	.long	.LVL52
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
	.long	.LVL53
	.long	.LVL54
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
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"i2c_start"
.LASF17:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF14:
	.string	"i2c_start_wait"
.LASF9:
	.string	"i2c_timer"
.LASF19:
	.string	"i2c_readNak"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"i2c_init"
.LASF16:
	.string	"i2c_write"
.LASF13:
	.string	"i2c_rep_start"
.LASF20:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF2:
	.string	"unsigned int"
.LASF11:
	.string	"address"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF10:
	.string	"twst"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"i2c_stop"
.LASF5:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF18:
	.string	"i2c_readAck"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"../i2chw/twimastertimeout.c"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
