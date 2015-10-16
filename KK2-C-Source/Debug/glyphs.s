	.file	"glyphs.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	glyFC
	.section	.progmem.data.glyFC,"a",@progbits
	.type	glyFC, @object
	.size	glyFC, 2
glyFC:
	.byte	5
	.byte	5
	.byte	31
	.byte	17
	.byte	17
	.byte	17
	.byte	31
.global	glyDirCCW
	.section	.progmem.data.glyDirCCW,"a",@progbits
	.type	glyDirCCW, @object
	.size	glyDirCCW, 2
glyDirCCW:
	.byte	5
	.byte	3
	.byte	2
	.byte	7
	.byte	2
	.byte	2
	.byte	2
.global	glyDirCW
	.section	.progmem.data.glyDirCW,"a",@progbits
	.type	glyDirCW, @object
	.size	glyDirCW, 2
glyDirCW:
	.byte	9
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	7
	.byte	2
.global	glyBall
	.section	.progmem.data.glyBall,"a",@progbits
	.type	glyBall, @object
	.size	glyBall, 2
glyBall:
	.byte	9
	.byte	9
	.byte	56
	.byte	0
	.byte	-2
	.byte	0
	.byte	-2
	.byte	0
	.byte	-1
	.byte	1
	.byte	-1
	.byte	1
	.byte	-1
	.byte	1
	.byte	-2
	.byte	0
	.byte	-2
	.byte	0
	.byte	56
	.byte	0
.global	glyArrowDown
	.section	.progmem.data.glyArrowDown,"a",@progbits
	.type	glyArrowDown, @object
	.size	glyArrowDown, 2
glyArrowDown:
	.byte	8
	.byte	8
	.byte	6
	.byte	14
	.byte	30
	.byte	62
	.byte	62
	.byte	30
	.byte	14
	.byte	6
.global	glyArrowUp
	.section	.progmem.data.glyArrowUp,"a",@progbits
	.type	glyArrowUp, @object
	.size	glyArrowUp, 2
glyArrowUp:
	.byte	8
	.byte	8
	.byte	48
	.byte	56
	.byte	60
	.byte	62
	.byte	62
	.byte	60
	.byte	56
	.byte	48
	.text
.Letext0:
	.file 1 "../include/glyphs.h"
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../gfx/glyphs.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x129
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.long	.LASF21
	.long	.LASF22
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x7a
	.long	0x2f
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.long	0x93
	.uleb128 0x6
	.long	.LASF7
	.byte	0x1
	.byte	0x12
	.long	0x24
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF8
	.byte	0x1
	.byte	0x12
	.long	0x24
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x13
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0xa9
	.long	0xa2
	.uleb128 0x8
	.long	0xa2
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x60
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.byte	0xd
	.long	0xcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glyArrowDown
	.uleb128 0xa
	.long	0xb0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0xcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glyArrowUp
	.uleb128 0x9
	.long	.LASF16
	.byte	0x3
	.byte	0xe
	.long	0xcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glyBall
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.byte	0xf
	.long	0xcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glyDirCW
	.uleb128 0x9
	.long	.LASF18
	.byte	0x3
	.byte	0x10
	.long	0xcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glyDirCCW
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.byte	0x11
	.long	0xcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	glyFC
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"glyArrowDown"
.LASF15:
	.string	"glyArrowUp"
.LASF17:
	.string	"glyDirCW"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF19:
	.string	"glyFC"
.LASF4:
	.string	"long unsigned int"
.LASF7:
	.string	"sizeX"
.LASF8:
	.string	"sizeY"
.LASF16:
	.string	"glyBall"
.LASF21:
	.string	"../gfx/glyphs.c"
.LASF20:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF9:
	.string	"glyph"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF13:
	.string	"glyph_t"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"glyDirCCW"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
