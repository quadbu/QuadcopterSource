	.file	"msp.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.write8,"ax",@progbits
	.type	write8, @function
write8:
.LFB7:
	.file 1 "../src/msp.c"
	.loc 1 66 0
	.cfi_startproc
.LVL0:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 67 0
	call serialWriteChar
.LVL1:
	.loc 1 68 0
	lds r25,checksum
	eor r25,r28
	sts checksum,r25
/* epilogue start */
	.loc 1 69 0
	pop r28
.LVL2:
	ret
	.cfi_endproc
.LFE7:
	.size	write8, .-write8
	.section	.text.write16,"ax",@progbits
	.type	write16, @function
write16:
.LFB8:
	.loc 1 72 0
	.cfi_startproc
.LVL3:
	push r28
.LCFI1:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	push __zero_reg__
.LCFI3:
	.cfi_def_cfa_offset 5
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI4:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	.loc 1 73 0
	std Y+1,r25
	call write8
.LVL4:
	.loc 1 74 0
	ldd r25,Y+1
	mov r24,r25
/* epilogue start */
	.loc 1 75 0
	pop __tmp_reg__
	pop r29
	pop r28
	.loc 1 74 0
	jmp write8
.LVL5:
	.cfi_endproc
.LFE8:
	.size	write16, .-write16
	.section	.text.writeHeader,"ax",@progbits
	.type	writeHeader, @function
writeHeader:
.LFB10:
	.loc 1 86 0
	.cfi_startproc
.LVL6:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r22
	.loc 1 87 0
	ldi r24,lo8(36)
.LVL7:
	call serialWriteChar
.LVL8:
	.loc 1 88 0
	ldi r24,lo8(77)
	call serialWriteChar
.LVL9:
	.loc 1 89 0
	tst r29
	breq .L5
	ldi r24,lo8(33)
	rjmp .L4
.L5:
	ldi r24,lo8(62)
.L4:
	.loc 1 89 0 is_stmt 0 discriminator 3
	call serialWriteChar
.LVL10:
	.loc 1 90 0 is_stmt 1 discriminator 3
	sts checksum,__zero_reg__
	.loc 1 91 0 discriminator 3
	mov r24,r28
	call write8
.LVL11:
	.loc 1 92 0 discriminator 3
	lds r24,cmdMSP
/* epilogue start */
	.loc 1 93 0 discriminator 3
	pop r29
.LVL12:
	pop r28
.LVL13:
	.loc 1 92 0 discriminator 3
	jmp write8
.LVL14:
	.cfi_endproc
.LFE10:
	.size	writeHeader, .-writeHeader
	.section	.text.writeResponseHeader,"ax",@progbits
	.type	writeResponseHeader, @function
writeResponseHeader:
.LFB11:
	.loc 1 96 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 97 0
	mov r22,r24
	ldi r24,0
.LVL16:
	jmp writeHeader
.LVL17:
	.cfi_endproc
.LFE11:
	.size	writeResponseHeader, .-writeResponseHeader
	.section	.text.write32.constprop.0,"ax",@progbits
	.type	write32.constprop.0, @function
write32.constprop.0:
.LFB16:
	.loc 1 77 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL18:
	.loc 1 79 0
	ldi r24,0
	call write8
.LVL19:
	.loc 1 80 0
	ldi r24,0
	call write8
.LVL20:
	.loc 1 81 0
	ldi r24,0
	call write8
.LVL21:
	.loc 1 82 0
	ldi r24,0
	jmp write8
.LVL22:
	.cfi_endproc
.LFE16:
	.size	write32.constprop.0, .-write32.constprop.0
	.section	.text.mspLoop,"ax",@progbits
.global	mspLoop
	.type	mspLoop, @function
mspLoop:
.LFB15:
	.loc 1 165 0
	.cfi_startproc
	push r11
.LCFI7:
	.cfi_def_cfa_offset 3
	.cfi_offset 11, -2
	push r12
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI9:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI10:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI11:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI13:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI14:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI15:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
.LBB14:
.LBB15:
	.loc 1 149 0
	ldi r24,lo8(10)
	mov r13,r24
.LBE15:
.LBE14:
	.loc 1 206 0
	ldi r25,lo8(5)
	mov r12,r25
	.loc 1 200 0
	ldi r18,lo8(4)
	mov r11,r18
.L10:
	.loc 1 179 0
	call serialAvail
.LVL23:
	tst r24
	brne .+2
	rjmp .L9
	.loc 1 181 0
	call serialReadChar
.LVL24:
	.loc 1 183 0
	lds r25,state.1697
	cpse r25,__zero_reg__
	rjmp .L12
	.loc 1 185 0
	cpi r24,lo8(36)
	brne .L10
	.loc 1 186 0
	ldi r24,lo8(1)
.LVL25:
	rjmp .L17
.LVL26:
.L12:
	.loc 1 188 0
	cpi r25,lo8(1)
	brne .L14
	.loc 1 190 0
	cpi r24,lo8(77)
	brne .L39
	ldi r24,lo8(2)
.LVL27:
	rjmp .L17
.LVL28:
.L14:
	.loc 1 192 0
	cpi r25,lo8(2)
	brne .L16
	.loc 1 194 0
	cpi r24,lo8(60)
	brne .L39
	ldi r24,lo8(3)
.LVL29:
	rjmp .L17
.LVL30:
.L39:
	ldi r24,0
.LVL31:
.L17:
	.loc 1 194 0 is_stmt 0 discriminator 2
	sts state.1697,r24
	rjmp .L10
.LVL32:
.L16:
	.loc 1 196 0 is_stmt 1
	cpi r25,lo8(3)
	brne .L18
	.loc 1 198 0
	sts dataLen.1698,r24
	.loc 1 199 0
	sts checksum,__zero_reg__
	.loc 1 200 0
	sts state.1697,r11
	rjmp .L10
.L18:
	lds r18,checksum
	.loc 1 202 0
	cpi r25,lo8(4)
	brne .L19
	.loc 1 204 0
	sts cmdMSP,r24
	.loc 1 205 0
	eor r24,r18
.LVL33:
	sts checksum,r24
	.loc 1 206 0
	sts state.1697,r12
	rjmp .L10
.LVL34:
.L19:
	.loc 1 210 0
	lds r25,dataLen.1698
	tst r25
	breq .L20
	.loc 1 212 0
	subi r25,lo8(-(-1))
	sts dataLen.1698,r25
	.loc 1 213 0
	eor r24,r18
.LVL35:
	sts checksum,r24
	rjmp .L10
.LVL36:
.L20:
	.loc 1 217 0
	cpse r18,r24
	rjmp .L21
.LBB27:
.LBB26:
	.loc 1 111 0
	lds r24,cmdMSP
.LVL37:
	cpi r24,lo8(103)
	brne .+2
	rjmp .L23
	brsh .L24
	cpi r24,lo8(101)
	breq .L25
	brsh .L26
	cpi r24,lo8(100)
	breq .+2
	rjmp .L22
	.loc 1 114 0
	ldi r24,lo8(7)
	call writeResponseHeader
.LVL38:
	.loc 1 115 0
	ldi r24,lo8(-46)
	call write8
.LVL39:
	.loc 1 116 0
	ldi r24,lo8(2)
	call write8
.LVL40:
	.loc 1 117 0
	ldi r24,0
	call write8
.LVL41:
	rjmp .L44
.L24:
	.loc 1 111 0
	cpi r24,lo8(105)
	brne .+2
	rjmp .L28
	brsh .+2
	rjmp .L29
	cpi r24,lo8(108)
	brne .+2
	rjmp .L30
	cpi r24,lo8(-51)
	breq .+2
	rjmp .L22
	.loc 1 155 0
	ldi r24,0
	call writeResponseHeader
.LVL42:
	.loc 1 156 0
	call sensorsCalibrate
.LVL43:
	rjmp .L32
.L25:
	.loc 1 121 0
	ldi r24,lo8(10)
	call writeResponseHeader
.LVL44:
	.loc 1 122 0
	lds r24,State+9
	lds r25,State+9+1
	call write16
.LVL45:
	.loc 1 123 0
	ldi r24,0
	ldi r25,0
	call write16
.LVL46:
	.loc 1 124 0
	ldi r24,lo8(1)
	ldi r25,0
	call write16
.LVL47:
.L44:
	.loc 1 125 0
	call write32.constprop.0
.LVL48:
	rjmp .L32
.L26:
	.loc 1 128 0
	ldi r24,lo8(18)
	call writeResponseHeader
.LVL49:
.LBB16:
	.loc 1 129 0
	lds r24,ACC
	lds r25,ACC+1
	call write16
.LVL50:
	lds r24,ACC+2
	lds r25,ACC+2+1
	call write16
.LVL51:
	lds r24,ACC+4
	lds r25,ACC+4+1
	call write16
.LVL52:
.LBE16:
.LBB17:
	.loc 1 130 0
	lds r24,GYRO
	lds r25,GYRO+1
	call write16
.LVL53:
	lds r24,GYRO+2
	lds r25,GYRO+2+1
	call write16
.LVL54:
	lds r24,GYRO+4
	lds r25,GYRO+4+1
	call write16
.LVL55:
.LBE17:
.LBB18:
	.loc 1 131 0
	ldi r24,0
	ldi r25,0
	rjmp .L45
.LVL56:
.L23:
.LBE18:
	.loc 1 134 0
	ldi r24,lo8(16)
	call writeResponseHeader
.LVL57:
	ldi r28,lo8(8)
.LVL58:
.L34:
.LBB19:
	.loc 1 136 0
	ldi r24,0
	ldi r25,0
	call write16
.LVL59:
	subi r28,lo8(-(-1))
.LVL60:
	.loc 1 135 0
	brne .L34
	rjmp .L32
.LVL61:
.L29:
.LBE19:
	.loc 1 139 0
	ldi r24,lo8(16)
	call writeResponseHeader
.LVL62:
	ldi r28,lo8(MIXER)
	ldi r29,hi8(MIXER)
.LVL63:
.L36:
.LBB20:
	.loc 1 140 0
	ld r24,Y+
	ld r25,Y+
	call write16
.LVL64:
	ldi r24,hi8(MIXER+16)
	cpi r28,lo8(MIXER+16)
	cpc r29,r24
	brne .L36
	rjmp .L32
.L28:
.LBE20:
	.loc 1 143 0
	ldi r24,lo8(16)
	call writeResponseHeader
.LVL65:
	ldi r28,lo8(RX_raw)
	ldi r29,hi8(RX_raw)
.LVL66:
.L37:
.LBB21:
	.loc 1 145 0
	ld r24,Y+
	ld r25,Y+
	call write16
.LVL67:
	.loc 1 144 0
	ldi r24,hi8(RX_raw+16)
	cpi r28,lo8(RX_raw+16)
	cpc r29,r24
	brne .L37
	rjmp .L32
.L30:
.LBE21:
	.loc 1 148 0
	ldi r24,lo8(8)
	call writeResponseHeader
.LVL68:
	.loc 1 149 0
	lds r24,ANGLE+1
	mov r16,r24
	mov r17,r24
	lsl r17
	sbc r17,r17
	mul r13,r16
	movw r24,r0
	mul r13,r17
	add r25,r0
	clr __zero_reg__
	call write16
.LVL69:
	.loc 1 150 0
	lds r24,ANGLE+3
	mov r14,r24
	mov r15,r24
	lsl r15
	sbc r15,r15
	mul r13,r14
	movw r24,r0
	mul r13,r15
	add r25,r0
	clr __zero_reg__
.L45:
	call write16
.LVL70:
	.loc 1 151 0
	ldi r24,0
	ldi r25,0
	call write16
.LVL71:
	.loc 1 152 0
	ldi r24,0
	ldi r25,0
	call write16
.LVL72:
	rjmp .L32
.L22:
.LBB22:
.LBB23:
	.loc 1 101 0
	ldi r22,0
	ldi r24,lo8(1)
	call writeHeader
.LVL73:
.L32:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 1 106 0
	lds r24,checksum
	call serialWriteChar
.LVL74:
.L21:
.LBE25:
.LBE24:
.LBE26:
.LBE27:
	.loc 1 219 0
	sts state.1697,__zero_reg__
	rjmp .L10
.L9:
/* epilogue start */
	.loc 1 223 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE15:
	.size	mspLoop, .-mspLoop
	.section	.bss.dataLen.1698,"aw",@nobits
	.type	dataLen.1698, @object
	.size	dataLen.1698, 1
dataLen.1698:
	.zero	1
	.section	.bss.state.1697,"aw",@nobits
	.type	state.1697, @object
	.size	state.1697, 1
state.1697:
	.zero	1
	.section	.bss.cmdMSP,"aw",@nobits
	.type	cmdMSP, @object
	.size	cmdMSP, 1
cmdMSP:
	.zero	1
	.section	.bss.checksum,"aw",@nobits
	.type	checksum, @object
	.size	checksum, 1
checksum:
	.zero	1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/global.h"
	.file 4 "../include/mixer.h"
	.file 5 "../include/sensors.h"
	.file 6 "../include/rx.h"
	.file 7 "../include/imu.h"
	.file 8 "../include/serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x780
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF51
	.byte	0x1
	.long	.LASF52
	.long	.LASF53
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x7e
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF12
	.uleb128 0x5
	.long	0x54
	.long	0xab
	.uleb128 0x6
	.long	0x8d
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.long	0x14e
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.byte	0x25
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.byte	0x26
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x27
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0x28
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.byte	0x29
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.byte	0x2a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF19
	.byte	0x3
	.byte	0x2b
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.byte	0x33
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF21
	.byte	0x3
	.byte	0x37
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF22
	.byte	0x3
	.byte	0x39
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.long	.LASF23
	.byte	0x3
	.byte	0x3a
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x3
	.byte	0x3b
	.long	0xab
	.uleb128 0x9
	.long	.LASF54
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.long	0x170
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x4d
	.long	0x6d
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.long	0x1a7
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x41
	.long	0x30
	.long	.LLST1
	.uleb128 0xd
	.long	.LVL1
	.long	0x73e
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST2
	.byte	0x1
	.long	0x1e1
	.uleb128 0xc
	.string	"a"
	.byte	0x1
	.byte	0x47
	.long	0x42
	.long	.LLST3
	.uleb128 0xf
	.long	.LVL4
	.long	0x170
	.uleb128 0x10
	.long	.LVL5
	.byte	0x1
	.long	0x170
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST4
	.byte	0x1
	.long	0x268
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x55
	.long	0x30
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF29
	.byte	0x1
	.byte	0x55
	.long	0x30
	.long	.LLST6
	.uleb128 0x12
	.long	.LVL8
	.long	0x73e
	.long	0x22c
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x12
	.long	.LVL9
	.long	0x73e
	.long	0x240
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x4d
	.byte	0
	.uleb128 0xf
	.long	.LVL10
	.long	0x73e
	.uleb128 0x12
	.long	.LVL11
	.long	0x170
	.long	0x25d
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.long	.LVL14
	.byte	0x1
	.long	0x170
	.byte	0
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2a8
	.uleb128 0x11
	.long	.LASF29
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST7
	.uleb128 0x14
	.long	.LVL17
	.byte	0x1
	.long	0x1e1
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x159
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x30e
	.uleb128 0x16
	.long	0x166
	.byte	0
	.uleb128 0x12
	.long	.LVL19
	.long	0x170
	.long	0x2d7
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL20
	.long	0x170
	.long	0x2ea
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL21
	.long	0x170
	.long	0x2fd
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL22
	.byte	0x1
	.long	0x170
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x371
	.uleb128 0x18
	.long	0x329
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0x30
	.byte	0
	.uleb128 0x18
	.long	0x338
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x82
	.long	0x30
	.byte	0
	.uleb128 0x18
	.long	0x347
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x83
	.long	0x30
	.byte	0
	.uleb128 0x18
	.long	0x356
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x87
	.long	0x30
	.byte	0
	.uleb128 0x18
	.long	0x365
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x30
	.byte	0
	.uleb128 0x1a
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x90
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF32
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0xa4
	.long	.LFB15
	.long	.LFE15
	.long	.LLST8
	.byte	0x1
	.long	0x6be
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0xa6
	.long	0x30
	.long	.LLST9
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x1
	.byte	0x1
	.byte	0xa7
	.long	0x3d8
	.uleb128 0x1f
	.long	.LASF33
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF34
	.sleb128 1
	.uleb128 0x1f
	.long	.LASF35
	.sleb128 2
	.uleb128 0x1f
	.long	.LASF36
	.sleb128 3
	.uleb128 0x1f
	.long	.LASF37
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF38
	.sleb128 5
	.byte	0
	.uleb128 0x20
	.long	.LASF39
	.byte	0x1
	.byte	0xaf
	.long	0x3a7
	.byte	0x5
	.byte	0x3
	.long	state.1697
	.uleb128 0x20
	.long	.LASF29
	.byte	0x1
	.byte	0xb1
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	dataLen.1698
	.uleb128 0x21
	.long	0x30e
	.long	.LBB14
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xda
	.long	0x6ab
	.uleb128 0x22
	.long	.LBB16
	.long	.LBE16
	.long	0x43f
	.uleb128 0x23
	.long	0x31f
	.long	.LLST10
	.uleb128 0xf
	.long	.LVL50
	.long	0x1a7
	.uleb128 0xf
	.long	.LVL51
	.long	0x1a7
	.uleb128 0xf
	.long	.LVL52
	.long	0x1a7
	.byte	0
	.uleb128 0x22
	.long	.LBB17
	.long	.LBE17
	.long	0x471
	.uleb128 0x23
	.long	0x32e
	.long	.LLST11
	.uleb128 0xf
	.long	.LVL53
	.long	0x1a7
	.uleb128 0xf
	.long	.LVL54
	.long	0x1a7
	.uleb128 0xf
	.long	.LVL55
	.long	0x1a7
	.byte	0
	.uleb128 0x22
	.long	.LBB18
	.long	.LBE18
	.long	0x488
	.uleb128 0x23
	.long	0x33d
	.long	.LLST12
	.byte	0
	.uleb128 0x22
	.long	.LBB19
	.long	.LBE19
	.long	0x4b3
	.uleb128 0x23
	.long	0x34c
	.long	.LLST13
	.uleb128 0xd
	.long	.LVL59
	.long	0x1a7
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LBB20
	.long	.LBE20
	.long	0x4d3
	.uleb128 0x23
	.long	0x35b
	.long	.LLST14
	.uleb128 0xf
	.long	.LVL64
	.long	0x1a7
	.byte	0
	.uleb128 0x22
	.long	.LBB21
	.long	.LBE21
	.long	0x4f3
	.uleb128 0x23
	.long	0x366
	.long	.LLST15
	.uleb128 0xf
	.long	.LVL67
	.long	0x1a7
	.byte	0
	.uleb128 0x24
	.long	0x371
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x9f
	.long	0x51b
	.uleb128 0xd
	.long	.LVL73
	.long	0x1e1
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x379
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0xa1
	.long	0x538
	.uleb128 0xf
	.long	.LVL74
	.long	0x73e
	.byte	0
	.uleb128 0x12
	.long	.LVL38
	.long	0x268
	.long	0x54b
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x12
	.long	.LVL39
	.long	0x170
	.long	0x55f
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xd2
	.byte	0
	.uleb128 0x12
	.long	.LVL40
	.long	0x170
	.long	0x572
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.long	.LVL41
	.long	0x170
	.long	0x585
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL42
	.long	0x268
	.long	0x598
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL43
	.long	0x752
	.uleb128 0x12
	.long	.LVL44
	.long	0x268
	.long	0x5b5
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL45
	.long	0x1a7
	.uleb128 0x12
	.long	.LVL46
	.long	0x1a7
	.long	0x5d6
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL47
	.long	0x1a7
	.long	0x5ee
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.long	.LVL48
	.long	0x2a8
	.uleb128 0x12
	.long	.LVL49
	.long	0x268
	.long	0x60a
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x12
	.long	.LVL57
	.long	0x268
	.long	0x61d
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.long	.LVL62
	.long	0x268
	.long	0x630
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.long	.LVL65
	.long	0x268
	.long	0x643
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x12
	.long	.LVL68
	.long	0x268
	.long	0x656
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.long	.LVL69
	.long	0x1a7
	.long	0x675
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.long	.LVL70
	.long	0x1a7
	.uleb128 0x12
	.long	.LVL71
	.long	0x1a7
	.long	0x696
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LVL72
	.long	0x1a7
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LVL23
	.long	0x761
	.uleb128 0xf
	.long	.LVL24
	.long	0x774
	.byte	0
	.uleb128 0x20
	.long	.LASF40
	.byte	0x1
	.byte	0x3d
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	checksum
	.uleb128 0x20
	.long	.LASF41
	.byte	0x1
	.byte	0x3e
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	cmdMSP
	.uleb128 0x25
	.long	.LASF42
	.byte	0x4
	.byte	0x37
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF43
	.byte	0x3
	.byte	0x3d
	.long	0x14e
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x42
	.long	0x70a
	.uleb128 0x6
	.long	0x8d
	.byte	0x2
	.byte	0
	.uleb128 0x25
	.long	.LASF44
	.byte	0x5
	.byte	0xe
	.long	0x6fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"ACC"
	.byte	0x5
	.byte	0x10
	.long	0x6fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF45
	.byte	0x6
	.byte	0xf
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF46
	.byte	0x7
	.byte	0xe
	.long	0x6fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.long	.LASF47
	.byte	0x8
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.long	0x752
	.uleb128 0x28
	.long	0x94
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF49
	.byte	0x5
	.byte	0x15
	.byte	0x1
	.long	0x761
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF48
	.byte	0x8
	.byte	0x12
	.long	0x30
	.byte	0x1
	.long	0x774
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF50
	.byte	0x8
	.byte	0x11
	.long	0x42
	.byte	0x1
	.uleb128 0x2a
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1-1
	.word	0x1
	.byte	0x68
	.long	.LVL1-1
	.long	.LVL2
	.word	0x1
	.byte	0x6c
	.long	.LVL2
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB8
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
	.long	.LFE8
	.word	0x2
	.byte	0x8c
	.sleb128 5
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LFB10
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL12
	.word	0x1
	.byte	0x6d
	.long	.LVL12
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL8-1
	.word	0x1
	.byte	0x66
	.long	.LVL8-1
	.long	.LVL13
	.word	0x1
	.byte	0x6c
	.long	.LVL13
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LVL17-1
	.word	0x1
	.byte	0x66
	.long	.LVL17-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LFB15
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI15
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST9:
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x68
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x68
	.long	.LVL28
	.long	.LVL29
	.word	0x1
	.byte	0x68
	.long	.LVL30
	.long	.LVL31
	.word	0x1
	.byte	0x68
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x68
	.long	.LVL33
	.long	.LVL34
	.word	0x5
	.byte	0x3
	.long	cmdMSP
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x68
	.long	.LVL36
	.long	.LVL37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST10:
	.long	.LVL49
	.long	.LVL50
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL52
	.long	.LVL56
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL52
	.long	.LVL53
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL57
	.long	.LVL58
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.word	0x5
	.byte	0x38
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.word	0x5
	.byte	0x39
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.word	0x5
	.byte	0x38
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL62
	.long	.LVL63
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL65
	.long	.LVL66
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
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
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB14
	.long	.LBE14
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB16
	.long	.LFE16
	.long	.LFB15
	.long	.LFE15
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"sensorsCalibrate"
.LASF29:
	.string	"dataLen"
.LASF20:
	.string	"Error"
.LASF39:
	.string	"state"
.LASF11:
	.string	"sizetype"
.LASF31:
	.string	"writeErrorHeader"
.LASF13:
	.string	"Armed"
.LASF36:
	.string	"HEADER_ARROW"
.LASF16:
	.string	"Aux1"
.LASF17:
	.string	"Aux2"
.LASF18:
	.string	"Aux3"
.LASF19:
	.string	"Aux4"
.LASF2:
	.string	"uint8_t"
.LASF52:
	.string	"../src/msp.c"
.LASF55:
	.string	"evalutateCmd"
.LASF33:
	.string	"IDLE"
.LASF54:
	.string	"write32"
.LASF24:
	.string	"state_t"
.LASF35:
	.string	"HEADER_M"
.LASF9:
	.string	"long long int"
.LASF43:
	.string	"State"
.LASF44:
	.string	"GYRO"
.LASF6:
	.string	"long int"
.LASF22:
	.string	"CycleTime"
.LASF46:
	.string	"ANGLE"
.LASF53:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF34:
	.string	"HEADER_START"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"serialWriteChar"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF56:
	.string	"mspLoop"
.LASF42:
	.string	"MIXER"
.LASF12:
	.string	"char"
.LASF51:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF37:
	.string	"HEADER_SIZE"
.LASF32:
	.string	"writeTail"
.LASF3:
	.string	"int16_t"
.LASF14:
	.string	"ThrottleOff"
.LASF8:
	.string	"long unsigned int"
.LASF23:
	.string	"CalculationTime"
.LASF15:
	.string	"SelfLevel"
.LASF48:
	.string	"serialAvail"
.LASF26:
	.string	"write16"
.LASF27:
	.string	"writeHeader"
.LASF38:
	.string	"HEADER_CMD"
.LASF40:
	.string	"checksum"
.LASF21:
	.string	"Mode"
.LASF28:
	.string	"error"
.LASF50:
	.string	"serialReadChar"
.LASF45:
	.string	"RX_raw"
.LASF30:
	.string	"writeResponseHeader"
.LASF25:
	.string	"write8"
.LASF57:
	.string	"_msp_state"
.LASF41:
	.string	"cmdMSP"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
