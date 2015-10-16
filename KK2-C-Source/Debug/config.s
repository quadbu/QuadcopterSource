	.file	"config.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._initConfig,"ax",@progbits
	.type	_initConfig, @function
_initConfig:
.LFB8:
	.file 1 "../src/config.c"
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 67 0
	ldi r20,lo8(124)
	ldi r21,0
	ldi r22,lo8(defaultConfig)
	ldi r23,hi8(defaultConfig)
	ldi r24,lo8(Config)
	ldi r25,hi8(Config)
	call memcpy_P
.LVL0:
	.loc 1 68 0
	lds r24,Config+55
	jmp mixerLoadModel
.LVL1:
	.cfi_endproc
.LFE8:
	.size	_initConfig, .-_initConfig
	.section	.text.configLoad,"ax",@progbits
.global	configLoad
	.type	configLoad, @function
configLoad:
.LFB9:
	.loc 1 72 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 73 0
	ldi r20,lo8(124)
	ldi r21,0
	ldi r22,lo8(EEConfig)
	ldi r23,hi8(EEConfig)
	ldi r24,lo8(Config)
	ldi r25,hi8(Config)
	call __eerd_block_m324pa
.LVL2:
	.loc 1 74 0
	lds r24,Config
	cpi r24,lo8(96)
	breq .L2
	.loc 1 75 0
	jmp _initConfig
.LVL3:
.L2:
	ret
	.cfi_endproc
.LFE9:
	.size	configLoad, .-configLoad
	.section	.text.configInit,"ax",@progbits
.global	configInit
	.type	configInit, @function
configInit:
.LFB10:
	.loc 1 79 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 80 0
	jmp configLoad
.LVL4:
	.cfi_endproc
.LFE10:
	.size	configInit, .-configInit
	.section	.text.configSave,"ax",@progbits
.global	configSave
	.type	configSave, @function
configSave:
.LFB11:
	.loc 1 84 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 0
	ldi r20,lo8(124)
	ldi r21,0
	ldi r22,lo8(EEConfig)
	ldi r23,hi8(EEConfig)
	ldi r24,lo8(Config)
	ldi r25,hi8(Config)
	jmp __eeupd_block_m324pa
.LVL5:
	.cfi_endproc
.LFE11:
	.size	configSave, .-configSave
	.section	.text.configReset,"ax",@progbits
.global	configReset
	.type	configReset, @function
configReset:
.LFB12:
	.loc 1 89 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 90 0
	jmp _initConfig
.LVL6:
	.cfi_endproc
.LFE12:
	.size	configReset, .-configReset
	.section	.progmem.data.defaultConfig,"a",@progbits
	.type	defaultConfig, @object
	.size	defaultConfig, 124
defaultConfig:
	.byte	96
	.word	1520
	.word	1520
	.word	1520
	.word	1100
	.word	1520
	.word	1520
	.word	1520
	.word	1520
	.byte	1
	.byte	2
	.byte	4
	.byte	3
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.word	536
	.word	548
	.word	565
	.word	611
	.word	620
	.word	766
	.zero	1
	.byte	50
	.byte	100
	.byte	25
	.byte	20
	.byte	50
	.byte	100
	.byte	25
	.byte	20
	.byte	50
	.byte	20
	.byte	50
	.byte	10
	.byte	2
	.zero	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	30
	.byte	30
	.byte	50
	.byte	90
	.byte	10
	.byte	32
	.byte	0
	.byte	30
	.byte	0
	.byte	50
	.byte	100
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	48
	.byte	0
	.byte	50
	.byte	0
	.byte	50
.global	EEConfig
	.section	.eeprom,"aw",@progbits
	.type	EEConfig, @object
	.size	EEConfig, 124
EEConfig:
	.zero	124
.global	Config
	.section	.noinit,"aw",@nobits
	.type	Config, @object
	.size	Config, 124
Config:
	.zero	124
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../include/mixer.h"
	.file 4 "../include/pid.h"
	.file 5 "../include/config.h"
	.file 6 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h"
	.file 7 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\eeprom.h"
	.file 8 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x600
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
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
	.byte	0x3
	.byte	0x20
	.long	0xbe
	.uleb128 0x6
	.long	.LASF10
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
	.long	.LASF11
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
	.long	.LASF12
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
	.long	0xd7
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.byte	0x1f
	.long	0x3b
	.uleb128 0x9
	.long	0x82
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x3
	.byte	0x16
	.long	0x12e
	.uleb128 0xa
	.long	.LASF13
	.byte	0x3
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x3
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF16
	.byte	0x3
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
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
	.byte	0x3
	.byte	0x13
	.long	0x146
	.uleb128 0xc
	.string	"I8"
	.byte	0x3
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
	.byte	0x3
	.byte	0x28
	.long	0x12e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
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
	.byte	0x4
	.byte	0xe
	.long	0x1cb
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF26
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
	.long	0x1e4
	.uleb128 0x9
	.long	0x18a
	.uleb128 0xc
	.string	"UI8"
	.byte	0x4
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
	.byte	0x4
	.byte	0x16
	.long	0x1cb
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.long	0x240
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x5
	.byte	0x18
	.long	0x1ff
	.uleb128 0x5
	.byte	0x7c
	.byte	0x5
	.byte	0x1a
	.long	0x3a4
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x1d
	.long	0x3a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x1e
	.long	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x1f
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x20
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x21
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xf
	.string	"PID"
	.byte	0x5
	.byte	0x22
	.long	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x2e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0xf
	.string	"LVA"
	.byte	0x5
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xa
	.long	.LASF51
	.byte	0x5
	.byte	0x35
	.long	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xa
	.long	.LASF52
	.byte	0x5
	.byte	0x36
	.long	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.long	.LASF53
	.byte	0x5
	.byte	0x37
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.long	0x24b
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0xd4
	.long	0x5f
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0x41
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x462
	.uleb128 0x11
	.long	.LVL0
	.long	0x589
	.long	0x457
	.uleb128 0x12
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Config
	.uleb128 0x12
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	defaultConfig
	.uleb128 0x12
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x13
	.long	.LVL1
	.byte	0x1
	.long	0x5b5
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x47
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4bb
	.uleb128 0x11
	.long	.LVL2
	.long	0x5c9
	.long	0x4b0
	.uleb128 0x12
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Config
	.uleb128 0x12
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	EEConfig
	.uleb128 0x12
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x13
	.long	.LVL3
	.byte	0x1
	.long	0x40a
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x4e
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4df
	.uleb128 0x13
	.long	.LVL4
	.byte	0x1
	.long	0x462
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x53
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x52b
	.uleb128 0x15
	.long	.LVL5
	.byte	0x1
	.long	0x5e8
	.uleb128 0x12
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Config
	.uleb128 0x12
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	EEConfig
	.uleb128 0x12
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x58
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x54f
	.uleb128 0x13
	.long	.LVL6
	.byte	0x1
	.long	0x40a
	.byte	0
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x13
	.long	0x560
	.byte	0x5
	.byte	0x3
	.long	defaultConfig
	.uleb128 0x17
	.long	0x3f4
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0xf
	.long	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Config
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x10
	.long	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	EEConfig
	.uleb128 0x19
	.byte	0x1
	.long	.LASF70
	.byte	0x8
	.word	0x474
	.byte	0x1
	.long	0x5ac
	.byte	0x1
	.long	0x5ac
	.uleb128 0x1a
	.long	0x5ac
	.uleb128 0x1a
	.long	0x5ae
	.uleb128 0x1a
	.long	0x3ff
	.byte	0
	.uleb128 0x1b
	.byte	0x2
	.uleb128 0x1c
	.byte	0x2
	.long	0x5b4
	.uleb128 0x1d
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF63
	.byte	0x3
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.long	0x5c9
	.uleb128 0x1a
	.long	0x3b
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF64
	.byte	0x7
	.word	0x2a6
	.byte	0x1
	.byte	0x1
	.long	0x5e8
	.uleb128 0x1a
	.long	0x5ac
	.uleb128 0x1a
	.long	0x5ae
	.uleb128 0x1a
	.long	0x3ff
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF71
	.byte	0x7
	.word	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.long	0x5ae
	.uleb128 0x1a
	.long	0x5ac
	.uleb128 0x1a
	.long	0x3ff
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
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
	.long	.LFB12
	.long	.LFE12-.LFB12
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
	.long	.LFB12
	.long	.LFE12
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
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
.LASF54:
	.string	"Camera"
.LASF56:
	.string	"size_t"
.LASF19:
	.string	"sizetype"
.LASF29:
	.string	"RollOffset"
.LASF39:
	.string	"SelfLevelMode"
.LASF71:
	.string	"__eeupd_block_m324pa"
.LASF27:
	.string	"pid_param_t"
.LASF58:
	.string	"configInit"
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
.LASF36:
	.string	"GYRO_zero"
.LASF8:
	.string	"long long int"
.LASF43:
	.string	"ReceiverMode"
.LASF35:
	.string	"RX_chmap"
.LASF6:
	.string	"long int"
.LASF69:
	.string	"defaultConfig"
.LASF67:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF61:
	.string	"Config"
.LASF62:
	.string	"EEConfig"
.LASF41:
	.string	"AutoDisarm"
.LASF30:
	.string	"PitchGain"
.LASF66:
	.string	"../src/config.c"
.LASF49:
	.string	"HeightDampeningLimit"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"Aileron"
.LASF64:
	.string	"__eerd_block_m324pa"
.LASF42:
	.string	"LinkRollPitch"
.LASF24:
	.string	"PLimit"
.LASF34:
	.string	"RX_zero"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned int"
.LASF55:
	.string	"config_t"
.LASF4:
	.string	"uint16_t"
.LASF17:
	.string	"Offset"
.LASF70:
	.string	"memcpy_P"
.LASF46:
	.string	"MinThrottle"
.LASF21:
	.string	"char"
.LASF20:
	.string	"mixer_channel_t"
.LASF65:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF44:
	.string	"MixerIndex"
.LASF57:
	.string	"configLoad"
.LASF48:
	.string	"HeightDampening"
.LASF68:
	.string	"_initConfig"
.LASF59:
	.string	"configSave"
.LASF51:
	.string	"PID_SelfLevel"
.LASF23:
	.string	"PGain"
.LASF7:
	.string	"long unsigned int"
.LASF63:
	.string	"mixerLoadModel"
.LASF53:
	.string	"Mixer"
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
.LASF45:
	.string	"StickScaling"
.LASF15:
	.string	"Elevator"
.LASF60:
	.string	"configReset"
.LASF13:
	.string	"Throttle"
.LASF52:
	.string	"AccTrim"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
