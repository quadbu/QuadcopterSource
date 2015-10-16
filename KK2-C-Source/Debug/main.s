	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.write16,"ax",@progbits
	.type	write16, @function
write16:
.LFB19:
	.file 1 "../src/main.c"
	.loc 1 207 0
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
	push __zero_reg__
.LCFI2:
	.cfi_def_cfa_offset 5
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	.loc 1 208 0
	std Y+1,r25
	call serialWriteChar
.LVL1:
	.loc 1 209 0
	ldd r25,Y+1
	mov r24,r25
/* epilogue start */
	.loc 1 210 0
	pop __tmp_reg__
	pop r29
	pop r28
	.loc 1 209 0
	jmp serialWriteChar
.LVL2:
	.cfi_endproc
.LFE19:
	.size	write16, .-write16
	.section	.init3,"ax",@progbits
	.type	stop_wdt, @function
stop_wdt:
.LFB12:
	.loc 1 45 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 47 0
	out 0x34,__zero_reg__
	.loc 1 49 0
	ldi r24,lo8(24)
/* #APP */
 ;  49 "../src/main.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* epilogue start */
	.loc 1 50 0
/* #NOAPP */
	.cfi_endproc
.LFE12:
	.size	stop_wdt, .-stop_wdt
	.section	.text.arm,"ax",@progbits
.global	arm
	.type	arm, @function
arm:
.LFB16:
	.loc 1 122 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,State
	.loc 1 123 0
	tst r24
	breq .L4
	.loc 1 123 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L3
.LVL4:
.LBB4:
.LBB5:
	.loc 1 125 0 is_stmt 1
	ldi r24,lo8(1)
.LVL5:
	sts State,r24
	.loc 1 126 0
	sbi 0x5,3
	.loc 1 127 0
	call menuRefresh
.LVL6:
	.loc 1 128 0
	call lcdDisable
.LVL7:
	.loc 1 129 0
	jmp controllerReset
.LVL8:
.L4:
.LBE5:
.LBE4:
	.loc 1 131 0 discriminator 1
	tst r25
	breq .L3
	.loc 1 133 0
	sts State,__zero_reg__
	.loc 1 134 0
	cbi 0x5,3
	.loc 1 135 0
	call menuRefresh
.LVL9:
	.loc 1 136 0
	jmp lcdEnable
.LVL10:
.L3:
	ret
	.cfi_endproc
.LFE16:
	.size	arm, .-arm
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB21:
	.loc 1 236 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 238 0
	call setup
.LVL11:
	.loc 1 241 0
/* #APP */
 ;  241 "../src/main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB27:
.LBB28:
	.loc 1 54 0
	call configInit
.LVL12:
	.loc 1 55 0
	call adcInit
.LVL13:
	.loc 1 58 0
	lds r24,Config+54
	call rxInit
.LVL14:
	.loc 1 60 0
	call mixerInit
.LVL15:
	.loc 1 61 0
	call pwmInit
.LVL16:
	.loc 1 62 0
	call keyboardInit
.LVL17:
	.loc 1 65 0
	call mpu6050_init
.LVL18:
	.loc 1 69 0
	call lcdInit
.LVL19:
	.loc 1 70 0
	call menuInit
.LVL20:
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 1 187 0
	call lcdClear
.LVL21:
	.loc 1 188 0
	ldi r22,0
	ldi r24,0
	call lcdSetPos
.LVL22:
	.loc 1 189 0
	ldi r24,lo8(font12x16)
	ldi r25,hi8(font12x16)
	call lcdSelectFont
.LVL23:
	.loc 1 190 0
	ldi r24,lo8(__c.2264)
	ldi r25,hi8(__c.2264)
	call lcdWriteString_P
.LVL24:
	.loc 1 191 0
	ldi r24,0
	ldi r25,0
	call lcdSelectFont
.LVL25:
	.loc 1 192 0
	ldi r22,0
	ldi r24,lo8(3)
	call lcdSetPos
.LVL26:
	.loc 1 193 0
	ldi r24,lo8(versionNum)
	ldi r25,hi8(versionNum)
	call lcdWriteString_P
.LVL27:
	.loc 1 194 0
	ldi r22,0
	ldi r24,lo8(4)
	call lcdSetPos
.LVL28:
	.loc 1 195 0
	ldi r24,lo8(versionAuthor)
	ldi r25,hi8(versionAuthor)
	call lcdWriteString_P
.LVL29:
	.loc 1 197 0
	ldi r24,lo8(-12)
	ldi r25,lo8(1)
	call digitalsBuzzBlocking
.LVL30:
.LBB31:
	.loc 1 198 0
	call millis
.LVL31:
	movw r16,r24
.LVL32:
.L12:
	call millis
.LVL33:
	sub r24,r16
	sbc r25,r17
	cpi r24,-68
	sbci r25,2
	brlo .L12
.LBE31:
	.loc 1 200 0
	call rxRead
.LVL34:
	.loc 1 201 0
	lds r24,RX+6
	lds r25,RX+6+1
	cpi r24,90
	cpc r25,__zero_reg__
	brlt .L13
.L15:
.LBB32:
.LBB33:
	.loc 1 100 0
	ldi r28,lo8(1)
	sts State+8,r28
	.loc 1 102 0
	call lcdClear
.LVL35:
	.loc 1 103 0
	ldi r22,lo8(18)
	ldi r24,lo8(3)
	call lcdSetPos
.LVL36:
	.loc 1 104 0
	ldi r24,lo8(__c.2247)
	ldi r25,hi8(__c.2247)
	call lcdWriteString_P
.LVL37:
	.loc 1 106 0
	sts State,r28
	.loc 1 107 0
	call pwmEnable
.LVL38:
.LBB34:
	.loc 1 113 0
	ldi r28,lo8(6)
	rjmp .L14
.L13:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 201 0
	call keyboardState
.LVL39:
	cpi r24,lo8(-112)
	breq .L15
.LBE30:
.LBE29:
	.loc 1 248 0
	call pwmEnable
.LVL40:
.LBB40:
	.loc 1 249 0
	call ticks
.LVL41:
	movw r12,r22
	movw r14,r24
.LBB41:
	.loc 1 252 0
	ldi r24,lo8(20)
	mov r8,r24
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.LBB42:
.LBB43:
	.loc 1 76 0
	ldi r28,lo8(1)
	rjmp .L45
.L20:
.LVL42:
.LBE43:
.LBE42:
.LBE41:
.LBE40:
.LBB55:
.LBB39:
.LBB38:
.LBB37:
.LBB35:
	.loc 1 113 0
	mul r28,r14
	movw r30,r0
	mul r28,r15
	add r31,r0
	clr __zero_reg__
	subi r30,lo8(-(Config+77))
	sbci r31,hi8(-(Config+77))
	ld r24,Z
	sbrs r24,0
	rjmp .L17
	.loc 1 114 0
	lds r22,RX_raw+6
	lds r23,RX_raw+6+1
.L73:
	.loc 1 116 0
	mov r24,r14
	call pwmWrite
.LVL43:
	ldi r19,-1
	sub r14,r19
	sbc r15,r19
.LVL44:
	.loc 1 111 0
	ldi r20,8
	cp r14,r20
	cpc r15,__zero_reg__
	brne .L20
.LVL45:
.L14:
.LBE35:
	.loc 1 110 0
	call rxRead
.LVL46:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L20
.LVL47:
.L17:
.LBB36:
	.loc 1 116 0
	ldi r22,lo8(-16)
	ldi r23,lo8(5)
	rjmp .L73
.LVL48:
.L77:
.LBE36:
.LBE37:
.LBE38:
.LBE39:
.LBE55:
.LBB56:
.LBB51:
	.loc 1 271 0
	call lvaLoop
.LVL49:
	.loc 1 272 0
	call digitalsLoop
.LVL50:
.LBB45:
.LBB46:
	.loc 1 214 0
	ldi r24,lo8(31)
	call serialWriteChar
.LVL51:
	.loc 1 215 0
	ldi r24,lo8(30)
	call serialWriteChar
.LVL52:
	.loc 1 216 0
	ldi r24,lo8(28)
	call serialWriteChar
.LVL53:
	.loc 1 220 0
	lds r24,CONTROL
	lds r25,CONTROL+1
	call write16
.LVL54:
	.loc 1 221 0
	lds r24,CONTROL+2
	lds r25,CONTROL+2+1
	call write16
.LVL55:
	.loc 1 222 0
	lds r24,CONTROL+4
	lds r25,CONTROL+4+1
	call write16
.LVL56:
	.loc 1 223 0
	lds r24,CONTROL+6
	lds r25,CONTROL+6+1
	call write16
.LVL57:
	.loc 1 231 0
	lds r24,State+11
	lds r25,State+11+1
	call write16
.LVL58:
.LBE46:
.LBE45:
.LBE51:
.LBB52:
.LBB53:
	.file 2 "../include/system.h"
	.loc 2 40 0
	ldi r19,64
	add r12,r19
	ldi r19,-100
	adc r13,r19
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.LVL59:
.L46:
	call ticks
.LVL60:
	cp r22,r12
	cpc r23,r13
	cpc r24,r14
	cpc r25,r15
	brlo .L46
.LVL61:
.L45:
.LBE53:
.LBE52:
.LBB54:
	.loc 1 252 0
	lds r24,lastStart.2279
	lds r25,lastStart.2279+1
	lds r26,lastStart.2279+2
	lds r27,lastStart.2279+3
	movw r20,r14
	movw r18,r12
	sub r18,r24
	sbc r19,r25
	sbc r20,r26
	sbc r21,r27
	movw r24,r20
	movw r22,r18
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	sts State+9+1,r19
	sts State+9,r18
	.loc 1 253 0
	sts lastStart.2279,r12
	sts lastStart.2279+1,r13
	sts lastStart.2279+2,r14
	sts lastStart.2279+3,r15
	.loc 1 255 0
	call rxRead
.LVL62:
.LBB47:
.LBB44:
	.loc 1 76 0
	ldi r18,lo8(1)
	lds r24,RX+6
	lds r25,RX+6+1
	sbiw r24,5
	brlt .L21
	ldi r18,0
.L21:
	sts State+1,r18
	.loc 1 77 0
	ldi r18,lo8(1)
	lds r24,RX+8
	lds r25,RX+8+1
	sbiw r24,11
	brge .L22
	ldi r18,0
.L22:
	sts State+3,r18
	.loc 1 78 0
	ldi r19,lo8(1)
	lds r24,RX+10
	lds r25,RX+10+1
	sbiw r24,11
	brge .L23
	ldi r19,0
.L23:
	sts State+4,r19
	.loc 1 79 0
	ldi r19,lo8(1)
	lds r24,RX+12
	lds r25,RX+12+1
	sbiw r24,11
	brge .L24
	ldi r19,0
.L24:
	sts State+5,r19
	.loc 1 80 0
	ldi r19,lo8(1)
	lds r24,RX+14
	lds r25,RX+14+1
	sbiw r24,11
	brge .L25
	ldi r19,0
.L25:
	sts State+6,r19
	.loc 1 82 0
	lds r24,Config+50
	tst r24
	breq .L26
	.loc 1 84 0
	cpi r24,lo8(2)
	brne .L27
	.loc 1 85 0
	sts State+2,r28
	rjmp .L26
.L27:
	.loc 1 87 0
	sts State+2,r18
.L26:
.LVL63:
	.loc 1 91 0
	lds r24,Config+37
	tst r24
	breq .L47
	.loc 1 90 0
	ldi r25,0
	rjmp .L28
.L47:
	.loc 1 92 0
	ldi r25,lo8(-128)
.L28:
.LVL64:
	.loc 1 93 0
	lds r24,RX_good
	com r24
	andi r24,lo8(15)
	or r24,r25
.LVL65:
	.loc 1 95 0
	sts State+7,r24
.LBE44:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 144 0
	call millis
.LVL66:
	movw r16,r24
.LVL67:
	.loc 1 146 0
	lds r24,menuPage
	cpse r24,__zero_reg__
	rjmp .L30
	.loc 1 147 0
	lds r24,State+7
	cpse r24,__zero_reg__
	rjmp .L30
	.loc 1 149 0
	lds r18,startArm.2259
	lds r19,startArm.2259+1
	lds r24,State+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L32
	.loc 1 151 0
	tst r24
	breq .L33
	lds r24,RX+4
	lds r25,RX+4+1
	sbrs r25,7
	rjmp .L34
	neg r25
	neg r24
	sbc r25,__zero_reg__
.L34:
	sbiw r24,51
	brlt .L33
	.loc 1 152 0
	sts startArm.2259+1,r17
	sts startArm.2259,r16
	rjmp .L33
.L32:
	.loc 1 154 0
	tst r24
	breq .L75
	lds r24,RX+4
	lds r25,RX+4+1
	movw r20,r24
	subi r20,-49
	sbci r21,-1
	cpi r20,99
	cpc r21,__zero_reg__
	brlo .L75
	.loc 1 156 0
	movw r20,r16
	sub r20,r18
	sbc r21,r19
	movw r18,r20
	cpi r18,-48
	sbci r19,7
	brlo .L33
	.loc 1 158 0
	sbiw r24,51
	brlt .L37
	.loc 1 159 0
	ldi r24,lo8(1)
	rjmp .L74
.L37:
	.loc 1 161 0
	ldi r24,0
.L74:
	call arm
.LVL68:
.L75:
	.loc 1 162 0
	sts startArm.2259+1,__zero_reg__
	sts startArm.2259,__zero_reg__
.L33:
	.loc 1 165 0
	lds r24,Config+52
	tst r24
	breq .L30
	lds r24,Config+51
	cpse r24,__zero_reg__
	rjmp .L30
	.loc 1 167 0
	lds r24,startOff.2260
	lds r25,startOff.2260+1
	lds r18,State+1
	sbiw r24,0
	brne .L39
	.loc 1 169 0
	tst r18
	breq .L30
	lds r24,State
	tst r24
	breq .L30
	.loc 1 170 0
	sts startOff.2260+1,r17
	sts startOff.2260,r16
	rjmp .L30
.L39:
	.loc 1 172 0
	tst r18
	breq .L76
	lds r18,State
	tst r18
	breq .L76
	.loc 1 176 0
	sub r16,r24
	sbc r17,r25
.LVL69:
	cpi r16,96
	sbci r17,-22
	brlo .L30
	.loc 1 178 0
	ldi r24,0
	call arm
.LVL70:
.L76:
	.loc 1 179 0
	sts startOff.2260+1,__zero_reg__
	sts startOff.2260,__zero_reg__
.L30:
.LBE49:
.LBE48:
	.loc 1 258 0
	call sensorsRead
.LVL71:
	.loc 1 259 0
	call imuCalculate
.LVL72:
	.loc 1 260 0
	call controllerCalculate
.LVL73:
	.loc 1 261 0
	call mixerCalculate
.LVL74:
	.loc 1 262 0
	call mixerOutput
.LVL75:
	.loc 1 264 0
	call ticks
.LVL76:
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	sts State+11+1,r19
	sts State+11,r18
.LBB50:
	.loc 1 267 0
	call millis
.LVL77:
	movw r16,r24
.LVL78:
.L42:
	.loc 1 267 0 is_stmt 0 discriminator 1
	lds r24,_t267.2280
	lds r25,_t267.2280+1
	movw r18,r16
	sub r18,r24
	sbc r19,r25
	cpi r18,25
	cpc r19,__zero_reg__
	brsh .+2
	rjmp .L77
	.loc 1 268 0 is_stmt 1 discriminator 2
	call menuLoop
.LVL79:
	.loc 1 267 0 discriminator 2
	sts _t267.2280+1,r17
	sts _t267.2280,r16
	rjmp .L42
.LBE50:
.LBE54:
.LBE56:
	.cfi_endproc
.LFE21:
	.size	main, .-main
	.section	.bss.startOff.2260,"aw",@nobits
	.type	startOff.2260, @object
	.size	startOff.2260, 2
startOff.2260:
	.zero	2
	.section	.bss.startArm.2259,"aw",@nobits
	.type	startArm.2259, @object
	.size	startArm.2259, 2
startArm.2259:
	.zero	2
	.section	.progmem.data.__c.2247,"a",@progbits
	.type	__c.2247, @object
	.size	__c.2247, 17
__c.2247:
	.string	"Calibrating ESCs"
	.section	.progmem.data.__c.2264,"a",@progbits
	.type	__c.2264, @object
	.size	__c.2264, 11
__c.2264:
	.string	"KK2-Copter"
	.section	.bss._t267.2280,"aw",@nobits
	.type	_t267.2280, @object
	.size	_t267.2280, 2
_t267.2280:
	.zero	2
	.section	.bss.lastStart.2279,"aw",@nobits
	.type	lastStart.2279, @object
	.size	lastStart.2279, 4
lastStart.2279:
	.zero	4
	.section	.progmem.data.versionAuthor,"a",@progbits
	.type	versionAuthor, @object
	.size	versionAuthor, 17
versionAuthor:
	.string	"by Oliver Schulz"
	.section	.progmem.data.versionNum,"a",@progbits
	.type	versionNum, @object
	.size	versionNum, 13
versionNum:
	.string	"Version 0.2b"
	.comm	State,13,1
	.comm	menuPage,1,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../include/hardware.h"
	.file 5 "../include/mixer.h"
	.file 6 "../include/pid.h"
	.file 7 "../include/config.h"
	.file 8 "../include/global.h"
	.file 9 "../include/fonts.h"
	.file 10 "../include/rx.h"
	.file 11 "../include/menu.h"
	.file 12 "../include/controller.h"
	.file 13 "../include/lcd.h"
	.file 14 "../include/adc.h"
	.file 15 "../include/serial.h"
	.file 16 "../include/pwm.h"
	.file 17 "../include/keyboard.h"
	.file 18 "../src/../mpu6050/mpu6050.h"
	.file 19 "../include/digitals.h"
	.file 20 "../include/sensors.h"
	.file 21 "../include/imu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xedf
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF141
	.byte	0x1
	.long	.LASF142
	.long	.LASF143
	.long	.Ldebug_ranges0+0xa0
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
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x3
	.byte	0x7c
	.long	0x6a
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x7e
	.long	0x83
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.long	0x129
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
	.byte	0x12
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
	.byte	0x13
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.byte	0x14
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.byte	0x15
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x4
	.byte	0x16
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
	.byte	0x17
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x4
	.byte	0x18
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x4
	.byte	0x19
	.long	0x6a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0x1a
	.long	0x134
	.uleb128 0x7
	.long	0x98
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.long	0x175
	.uleb128 0x6
	.long	.LASF21
	.byte	0x5
	.byte	0x22
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x5
	.byte	0x23
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0x24
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x1d
	.long	0x18e
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x1f
	.long	0x3b
	.uleb128 0xa
	.long	0x139
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x5
	.byte	0x16
	.long	0x1e5
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x18
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0x19
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0x1a
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0x1b
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.byte	0x1c
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x8
	.byte	0x6
	.byte	0x5
	.byte	0x13
	.long	0x1fd
	.uleb128 0xd
	.string	"I8"
	.byte	0x5
	.byte	0x15
	.long	0x1fd
	.uleb128 0xa
	.long	0x18e
	.byte	0
	.uleb128 0xe
	.long	0x29
	.long	0x20d
	.uleb128 0xf
	.long	0x20d
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF30
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.byte	0x28
	.long	0x1e5
	.uleb128 0x10
	.byte	0x2
	.long	0x225
	.uleb128 0x11
	.long	0x22a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF32
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0x33
	.long	0x23c
	.uleb128 0xe
	.long	0x214
	.long	0x24c
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.long	0x28d
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.byte	0x10
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.byte	0x12
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0xc
	.long	0x2a6
	.uleb128 0xa
	.long	0x24c
	.uleb128 0xd
	.string	"UI8"
	.byte	0x6
	.byte	0x15
	.long	0x2a6
	.byte	0
	.uleb128 0xe
	.long	0x3b
	.long	0x2b6
	.uleb128 0xf
	.long	0x20d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x16
	.long	0x28d
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x302
	.uleb128 0xb
	.long	.LASF39
	.byte	0x7
	.byte	0x14
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x7
	.byte	0x15
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.byte	0x16
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF42
	.byte	0x7
	.byte	0x17
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x7
	.byte	0x18
	.long	0x2c1
	.uleb128 0x5
	.byte	0x7c
	.byte	0x7
	.byte	0x1a
	.long	0x466
	.uleb128 0xb
	.long	.LASF44
	.byte	0x7
	.byte	0x1c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.byte	0x1d
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0x1e
	.long	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0x1f
	.long	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xb
	.long	.LASF48
	.byte	0x7
	.byte	0x20
	.long	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xb
	.long	.LASF49
	.byte	0x7
	.byte	0x21
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x12
	.string	"PID"
	.byte	0x7
	.byte	0x22
	.long	0x496
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xb
	.long	.LASF50
	.byte	0x7
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.long	.LASF51
	.byte	0x7
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xb
	.long	.LASF52
	.byte	0x7
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.long	.LASF53
	.byte	0x7
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xb
	.long	.LASF54
	.byte	0x7
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xb
	.long	.LASF55
	.byte	0x7
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xb
	.long	.LASF56
	.byte	0x7
	.byte	0x2e
	.long	0x2a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.long	.LASF57
	.byte	0x7
	.byte	0x2f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.long	.LASF58
	.byte	0x7
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xb
	.long	.LASF59
	.byte	0x7
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xb
	.long	.LASF60
	.byte	0x7
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x12
	.string	"LVA"
	.byte	0x7
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.long	.LASF61
	.byte	0x7
	.byte	0x34
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0xb
	.long	.LASF62
	.byte	0x7
	.byte	0x35
	.long	0x2b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0xb
	.long	.LASF63
	.byte	0x7
	.byte	0x36
	.long	0x4a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.long	.LASF64
	.byte	0x7
	.byte	0x37
	.long	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.long	.LASF65
	.byte	0x7
	.byte	0x38
	.long	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0xe
	.long	0x5f
	.long	0x476
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x3b
	.long	0x486
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x5f
	.long	0x496
	.uleb128 0xf
	.long	0x20d
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x2b6
	.long	0x4a6
	.uleb128 0xf
	.long	0x20d
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x29
	.long	0x4b6
	.uleb128 0xf
	.long	0x20d
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x39
	.long	0x30d
	.uleb128 0x5
	.byte	0xd
	.byte	0x8
	.byte	0x23
	.long	0x564
	.uleb128 0xb
	.long	.LASF67
	.byte	0x8
	.byte	0x25
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF68
	.byte	0x8
	.byte	0x26
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF69
	.byte	0x8
	.byte	0x27
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF70
	.byte	0x8
	.byte	0x28
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.long	.LASF71
	.byte	0x8
	.byte	0x29
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.long	.LASF72
	.byte	0x8
	.byte	0x2a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.long	.LASF73
	.byte	0x8
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.long	.LASF74
	.byte	0x8
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.long	.LASF75
	.byte	0x8
	.byte	0x37
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.long	.LASF76
	.byte	0x8
	.byte	0x39
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.long	.LASF77
	.byte	0x8
	.byte	0x3a
	.long	0x5f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x8
	.byte	0x3b
	.long	0x4c1
	.uleb128 0x5
	.byte	0x4
	.byte	0x9
	.byte	0x11
	.long	0x5a2
	.uleb128 0xb
	.long	.LASF79
	.byte	0x9
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x9
	.byte	0x13
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF81
	.byte	0x9
	.byte	0x14
	.long	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	0x21f
	.long	0x5b2
	.uleb128 0x14
	.long	0x46
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x5a2
	.uleb128 0x2
	.long	.LASF82
	.byte	0x9
	.byte	0x15
	.long	0x56f
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF83
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF84
	.uleb128 0x15
	.byte	0x1
	.string	"arm"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.long	0x5eb
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x79
	.long	0x3b
	.byte	0
	.uleb128 0x17
	.long	.LASF144
	.byte	0x2
	.byte	0x26
	.byte	0x1
	.byte	0x3
	.long	0x60d
	.uleb128 0x18
	.string	"__m"
	.byte	0x2
	.byte	0x26
	.long	0x78
	.uleb128 0x18
	.string	"t"
	.byte	0x2
	.byte	0x26
	.long	0x78
	.byte	0
	.uleb128 0x19
	.long	.LASF145
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST0
	.byte	0x1
	.long	0x647
	.uleb128 0x1a
	.string	"v"
	.byte	0x1
	.byte	0xce
	.long	0x4d
	.long	.LLST1
	.uleb128 0x1b
	.long	.LVL1
	.long	0xca9
	.uleb128 0x1c
	.long	.LVL2
	.byte	0x1
	.long	0xca9
	.byte	0
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x1
	.byte	0x2c
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x1e
	.long	0x5d1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6c1
	.uleb128 0x1f
	.long	0x5df
	.long	.LLST2
	.uleb128 0x20
	.long	.LBB4
	.long	.LBE4
	.long	0x6ad
	.uleb128 0x1f
	.long	0x5df
	.long	.LLST3
	.uleb128 0x1b
	.long	.LVL6
	.long	0xcbd
	.uleb128 0x1b
	.long	.LVL7
	.long	0xccc
	.uleb128 0x1c
	.long	.LVL8
	.byte	0x1
	.long	0xcdb
	.byte	0
	.uleb128 0x1b
	.long	.LVL9
	.long	0xcbd
	.uleb128 0x1c
	.long	.LVL10
	.byte	0x1
	.long	0xcea
	.byte	0
	.uleb128 0x21
	.long	.LASF94
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uleb128 0x22
	.long	.LASF86
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.long	0x6f7
	.uleb128 0x23
	.long	0x6ea
	.uleb128 0x24
	.string	"__c"
	.byte	0x1
	.byte	0xbe
	.long	0x707
	.long	.LASF88
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.string	"_m"
	.byte	0x1
	.byte	0xc6
	.long	0x5f
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x22a
	.long	0x707
	.uleb128 0xf
	.long	0x20d
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.long	0x6f7
	.uleb128 0x22
	.long	.LASF87
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.long	0x739
	.uleb128 0x23
	.long	0x72d
	.uleb128 0x24
	.string	"__c"
	.byte	0x1
	.byte	0x68
	.long	0x749
	.long	.LASF89
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x22a
	.long	0x749
	.uleb128 0xf
	.long	0x20d
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	0x739
	.uleb128 0x22
	.long	.LASF90
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x764
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.byte	0x5a
	.long	0x3b
	.byte	0
	.uleb128 0x22
	.long	.LASF91
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	0x790
	.uleb128 0x27
	.long	.LASF92
	.byte	0x1
	.byte	0x8e
	.long	0x5f
	.uleb128 0x27
	.long	.LASF93
	.byte	0x1
	.byte	0x8f
	.long	0x5f
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.byte	0x90
	.long	0x5f
	.byte	0
	.uleb128 0x21
	.long	.LASF95
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x58
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xbd7
	.uleb128 0x29
	.long	0x6c1
	.long	.LBB27
	.long	.LBE27
	.byte	0x1
	.byte	0xf4
	.long	0x81b
	.uleb128 0x1b
	.long	.LVL12
	.long	0xcf9
	.uleb128 0x1b
	.long	.LVL13
	.long	0xd08
	.uleb128 0x1b
	.long	.LVL14
	.long	0xd17
	.uleb128 0x1b
	.long	.LVL15
	.long	0xd2b
	.uleb128 0x1b
	.long	.LVL16
	.long	0xd3a
	.uleb128 0x1b
	.long	.LVL17
	.long	0xd49
	.uleb128 0x1b
	.long	.LVL18
	.long	0xd58
	.uleb128 0x1b
	.long	.LVL19
	.long	0xd67
	.uleb128 0x1b
	.long	.LVL20
	.long	0xd76
	.byte	0
	.uleb128 0x2a
	.long	0x6c9
	.long	.LBB29
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf6
	.long	0x9d0
	.uleb128 0x20
	.long	.LBB31
	.long	.LBE31
	.long	0x857
	.uleb128 0x2b
	.long	0x6eb
	.long	.LLST4
	.uleb128 0x1b
	.long	.LVL31
	.long	0xd85
	.uleb128 0x1b
	.long	.LVL33
	.long	0xd85
	.byte	0
	.uleb128 0x2a
	.long	0x70c
	.long	.LBB32
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xca
	.long	0x8dd
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x30
	.long	0x88d
	.uleb128 0x2b
	.long	0x72e
	.long	.LLST5
	.uleb128 0x2d
	.long	.LVL43
	.long	0xd98
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL35
	.long	0xdb1
	.uleb128 0x2f
	.long	.LVL36
	.long	0xdc0
	.long	0x8ae
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x2e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x2f
	.long	.LVL37
	.long	0xdd9
	.long	0x8ca
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2247
	.byte	0
	.uleb128 0x1b
	.long	.LVL38
	.long	0xded
	.uleb128 0x1b
	.long	.LVL46
	.long	0xdfc
	.byte	0
	.uleb128 0x1b
	.long	.LVL21
	.long	0xdb1
	.uleb128 0x2f
	.long	.LVL22
	.long	0xdc0
	.long	0x8fe
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x2e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LVL23
	.long	0xe0b
	.uleb128 0x2f
	.long	.LVL24
	.long	0xdd9
	.long	0x923
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2264
	.byte	0
	.uleb128 0x2f
	.long	.LVL25
	.long	0xe0b
	.long	0x93b
	.uleb128 0x2e
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
	.uleb128 0x2f
	.long	.LVL26
	.long	0xdc0
	.long	0x953
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x2e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.long	.LVL27
	.long	0xdd9
	.long	0x96f
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	versionNum
	.byte	0
	.uleb128 0x2f
	.long	.LVL28
	.long	0xdc0
	.long	0x987
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.uleb128 0x2e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.long	.LVL29
	.long	0xdd9
	.long	0x9a3
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	versionAuthor
	.byte	0
	.uleb128 0x2f
	.long	.LVL30
	.long	0xe25
	.long	0x9bd
	.uleb128 0x2e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x1f4
	.byte	0
	.uleb128 0x1b
	.long	.LVL34
	.long	0xdfc
	.uleb128 0x1b
	.long	.LVL39
	.long	0xe39
	.byte	0
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x50
	.long	0xbc4
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.byte	0xf9
	.long	0x78
	.long	.LLST6
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x68
	.long	0xb93
	.uleb128 0x31
	.long	.LASF97
	.byte	0x1
	.byte	0xfb
	.long	0x78
	.byte	0x5
	.byte	0x3
	.long	lastStart.2279
	.uleb128 0x32
	.long	.LASF98
	.byte	0x1
	.word	0x10b
	.long	0x5f
	.byte	0x5
	.byte	0x3
	.long	_t267.2280
	.uleb128 0x33
	.long	0x74e
	.long	.LBB42
	.long	.Ldebug_ranges0+0x88
	.byte	0x1
	.word	0x100
	.long	0xa38
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x88
	.uleb128 0x2b
	.long	0x75a
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x790
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x115
	.long	0xab3
	.uleb128 0x2f
	.long	.LVL51
	.long	0xca9
	.long	0xa5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x2f
	.long	.LVL52
	.long	0xca9
	.long	0xa72
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x2f
	.long	.LVL53
	.long	0xca9
	.long	0xa85
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x1b
	.long	.LVL54
	.long	0x60d
	.uleb128 0x1b
	.long	.LVL55
	.long	0x60d
	.uleb128 0x1b
	.long	.LVL56
	.long	0x60d
	.uleb128 0x1b
	.long	.LVL57
	.long	0x60d
	.uleb128 0x1b
	.long	.LVL58
	.long	0x60d
	.byte	0
	.uleb128 0x35
	.long	0x764
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.word	0x101
	.long	0xb12
	.uleb128 0x36
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2b
	.long	0x786
	.long	.LLST8
	.uleb128 0x37
	.long	0x770
	.byte	0x5
	.byte	0x3
	.long	startArm.2259
	.uleb128 0x37
	.long	0x77b
	.byte	0x5
	.byte	0x3
	.long	startOff.2260
	.uleb128 0x1b
	.long	.LVL66
	.long	0xd85
	.uleb128 0x1b
	.long	.LVL68
	.long	0x5d1
	.uleb128 0x2d
	.long	.LVL70
	.long	0x5d1
	.uleb128 0x2e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LBB50
	.long	.LBE50
	.long	0xb41
	.uleb128 0x38
	.string	"_m"
	.byte	0x1
	.word	0x10b
	.long	0x5f
	.long	.LLST9
	.uleb128 0x1b
	.long	.LVL77
	.long	0xd85
	.uleb128 0x1b
	.long	.LVL79
	.long	0xe4c
	.byte	0
	.uleb128 0x1b
	.long	.LVL49
	.long	0xe5b
	.uleb128 0x1b
	.long	.LVL50
	.long	0xe6a
	.uleb128 0x1b
	.long	.LVL62
	.long	0xdfc
	.uleb128 0x1b
	.long	.LVL71
	.long	0xe79
	.uleb128 0x1b
	.long	.LVL72
	.long	0xe88
	.uleb128 0x1b
	.long	.LVL73
	.long	0xe97
	.uleb128 0x1b
	.long	.LVL74
	.long	0xea6
	.uleb128 0x1b
	.long	.LVL75
	.long	0xeb5
	.uleb128 0x1b
	.long	.LVL76
	.long	0xec4
	.byte	0
	.uleb128 0x29
	.long	0x5eb
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.byte	0xf9
	.long	0xbba
	.uleb128 0x39
	.long	0x603
	.uleb128 0x39
	.long	0x5f8
	.uleb128 0x1b
	.long	.LVL60
	.long	0xec4
	.byte	0
	.uleb128 0x1b
	.long	.LVL41
	.long	0xec4
	.byte	0
	.uleb128 0x1b
	.long	.LVL11
	.long	0xed7
	.uleb128 0x1b
	.long	.LVL40
	.long	0xded
	.byte	0
	.uleb128 0xe
	.long	0x22a
	.long	0xbe7
	.uleb128 0xf
	.long	0x20d
	.byte	0xc
	.byte	0
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.byte	0x24
	.long	0xbf8
	.byte	0x5
	.byte	0x3
	.long	versionNum
	.uleb128 0x11
	.long	0xbd7
	.uleb128 0x31
	.long	.LASF100
	.byte	0x1
	.byte	0x25
	.long	0xc0e
	.byte	0x5
	.byte	0x3
	.long	versionAuthor
	.uleb128 0x11
	.long	0x739
	.uleb128 0x3a
	.long	.LASF101
	.byte	0x7
	.byte	0x3b
	.long	0x4b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF102
	.byte	0x1
	.byte	0x23
	.long	0x564
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	State
	.uleb128 0x3a
	.long	.LASF103
	.byte	0x9
	.byte	0x1a
	.long	0xc3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x5b8
	.uleb128 0xe
	.long	0x4d
	.long	0xc54
	.uleb128 0xf
	.long	0x20d
	.byte	0x7
	.byte	0
	.uleb128 0x3c
	.string	"RX"
	.byte	0xa
	.byte	0xe
	.long	0xc44
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF104
	.byte	0xa
	.byte	0xf
	.long	0x466
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF105
	.byte	0xa
	.byte	0x10
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF106
	.byte	0xb
	.byte	0xc
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	menuPage
	.uleb128 0xe
	.long	0x4d
	.long	0xc9c
	.uleb128 0xf
	.long	0x20d
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.long	.LASF107
	.byte	0xc
	.byte	0xc
	.long	0xc8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF108
	.byte	0xf
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.long	0xcbd
	.uleb128 0x14
	.long	0x22a
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF109
	.byte	0xb
	.byte	0x10
	.byte	0x1
	.long	0xccc
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF110
	.byte	0xd
	.byte	0x1d
	.byte	0x1
	.long	0xcdb
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF111
	.byte	0xc
	.byte	0xe
	.byte	0x1
	.long	0xcea
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF112
	.byte	0xd
	.byte	0x1c
	.byte	0x1
	.long	0xcf9
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF113
	.byte	0x7
	.byte	0x3d
	.byte	0x1
	.long	0xd08
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF114
	.byte	0xe
	.byte	0xe
	.byte	0x1
	.long	0xd17
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF115
	.byte	0xa
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.long	0xd2b
	.uleb128 0x14
	.long	0x3b
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF116
	.byte	0x5
	.byte	0x39
	.byte	0x1
	.long	0xd3a
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF117
	.byte	0x10
	.byte	0xe
	.byte	0x1
	.long	0xd49
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF118
	.byte	0x11
	.byte	0x11
	.byte	0x1
	.long	0xd58
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF119
	.byte	0x12
	.byte	0x72
	.byte	0x1
	.long	0xd67
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF120
	.byte	0xd
	.byte	0x12
	.byte	0x1
	.long	0xd76
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF121
	.byte	0xb
	.byte	0xe
	.byte	0x1
	.long	0xd85
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF122
	.byte	0x2
	.byte	0x17
	.long	0x5f
	.byte	0x1
	.long	0xd98
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF123
	.byte	0x10
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.long	0xdb1
	.uleb128 0x14
	.long	0x3b
	.uleb128 0x14
	.long	0x5f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF124
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.long	0xdc0
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF125
	.byte	0xd
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0xdd9
	.uleb128 0x14
	.long	0x3b
	.uleb128 0x14
	.long	0x3b
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF126
	.byte	0xd
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.long	0xded
	.uleb128 0x14
	.long	0x21f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF127
	.byte	0x10
	.byte	0x10
	.byte	0x1
	.long	0xdfc
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF128
	.byte	0xa
	.byte	0x1f
	.byte	0x1
	.long	0xe0b
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF129
	.byte	0xd
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.long	0xe1f
	.uleb128 0x14
	.long	0xe1f
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0xc3f
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF130
	.byte	0x13
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.long	0xe39
	.uleb128 0x14
	.long	0x5f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF131
	.byte	0x11
	.byte	0x13
	.long	0x3b
	.byte	0x1
	.long	0xe4c
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF132
	.byte	0xb
	.byte	0xf
	.byte	0x1
	.long	0xe5b
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF133
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0xe6a
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF134
	.byte	0x13
	.byte	0x10
	.byte	0x1
	.long	0xe79
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF135
	.byte	0x14
	.byte	0x14
	.byte	0x1
	.long	0xe88
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF136
	.byte	0x15
	.byte	0x11
	.byte	0x1
	.long	0xe97
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF137
	.byte	0xc
	.byte	0xf
	.byte	0x1
	.long	0xea6
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF138
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.long	0xeb5
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF139
	.byte	0x5
	.byte	0x3c
	.byte	0x1
	.long	0xec4
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF140
	.byte	0x2
	.byte	0x15
	.long	0x78
	.byte	0x1
	.long	0xed7
	.uleb128 0x3f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.long	.LASF148
	.byte	0x2
	.byte	0x14
	.byte	0x1
	.uleb128 0x3f
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB19
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
	.long	.LFE19
	.word	0x2
	.byte	0x8c
	.sleb128 5
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
	.long	.LFE19
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
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9-1
	.word	0x1
	.byte	0x68
	.long	.LVL9-1
	.long	.LVL10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL10
	.long	.LFE16
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL32
	.long	.LVL48
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x5e
	.long	.LVL43
	.long	.LVL44
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.word	0x1
	.byte	0x5e
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL47
	.long	.LVL48
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST6:
	.long	.LVL48
	.long	.LVL59
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL61
	.word	0x5
	.byte	0x7c
	.sleb128 -40000
	.byte	0x9f
	.long	.LVL61
	.long	.LFE21
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL63
	.long	.LVL64
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.word	0x1
	.byte	0x69
	.long	.LVL65
	.long	.LVL66-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL67
	.long	.LVL69
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL48
	.long	.LVL61
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL78
	.long	.LFE21
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB29
	.long	.LBE29
	.long	.LBB55
	.long	.LBE55
	.long	0
	.long	0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB38
	.long	.LBE38
	.long	0
	.long	0
	.long	.LBB34
	.long	.LBE34
	.long	.LBB35
	.long	.LBE35
	.long	.LBB36
	.long	.LBE36
	.long	0
	.long	0
	.long	.LBB40
	.long	.LBE40
	.long	.LBB56
	.long	.LBE56
	.long	0
	.long	0
	.long	.LBB41
	.long	.LBE41
	.long	.LBB51
	.long	.LBE51
	.long	.LBB54
	.long	.LBE54
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LFB19
	.long	.LFE19
	.long	.LFB12
	.long	.LFE12
	.long	.LFB16
	.long	.LFE16
	.long	.LFB21
	.long	.LFE21
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"IGain"
.LASF129:
	.string	"lcdSelectFont"
.LASF97:
	.string	"lastStart"
.LASF47:
	.string	"GYRO_zero"
.LASF103:
	.string	"font12x16"
.LASF70:
	.string	"Aux1"
.LASF71:
	.string	"Aux2"
.LASF72:
	.string	"Aux3"
.LASF73:
	.string	"Aux4"
.LASF12:
	.string	"bit0"
.LASF13:
	.string	"bit1"
.LASF14:
	.string	"bit2"
.LASF15:
	.string	"bit3"
.LASF16:
	.string	"bit4"
.LASF17:
	.string	"bit5"
.LASF18:
	.string	"bit6"
.LASF19:
	.string	"bit7"
.LASF11:
	.string	"long long unsigned int"
.LASF93:
	.string	"startOff"
.LASF64:
	.string	"Mixer"
.LASF57:
	.string	"MinThrottle"
.LASF78:
	.string	"state_t"
.LASF62:
	.string	"PID_SelfLevel"
.LASF4:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF107:
	.string	"CONTROL"
.LASF90:
	.string	"checkState"
.LASF121:
	.string	"menuInit"
.LASF43:
	.string	"camera_t"
.LASF26:
	.string	"Elevator"
.LASF104:
	.string	"RX_raw"
.LASF139:
	.string	"mixerOutput"
.LASF38:
	.string	"pid_param_t"
.LASF7:
	.string	"long int"
.LASF112:
	.string	"lcdEnable"
.LASF136:
	.string	"imuCalculate"
.LASF86:
	.string	"startup"
.LASF59:
	.string	"HeightDampening"
.LASF76:
	.string	"CycleTime"
.LASF25:
	.string	"Aileron"
.LASF5:
	.string	"uint16_t"
.LASF33:
	.string	"mixer_t"
.LASF24:
	.string	"Throttle"
.LASF100:
	.string	"versionAuthor"
.LASF147:
	.string	"main"
.LASF122:
	.string	"millis"
.LASF75:
	.string	"Mode"
.LASF131:
	.string	"keyboardState"
.LASF44:
	.string	"signature"
.LASF126:
	.string	"lcdWriteString_P"
.LASF85:
	.string	"value"
.LASF41:
	.string	"PitchGain"
.LASF63:
	.string	"AccTrim"
.LASF142:
	.string	"../src/main.c"
.LASF6:
	.string	"unsigned int"
.LASF111:
	.string	"controllerReset"
.LASF50:
	.string	"SelfLevelMode"
.LASF23:
	.string	"IsHiRate"
.LASF66:
	.string	"config_t"
.LASF125:
	.string	"lcdSetPos"
.LASF77:
	.string	"CalculationTime"
.LASF9:
	.string	"long unsigned int"
.LASF55:
	.string	"MixerIndex"
.LASF130:
	.string	"digitalsBuzzBlocking"
.LASF108:
	.string	"serialWriteChar"
.LASF84:
	.string	"short unsigned int"
.LASF89:
	.string	"Calibrating ESCs"
.LASF68:
	.string	"ThrottleOff"
.LASF34:
	.string	"PGain"
.LASF88:
	.string	"KK2-Copter"
.LASF115:
	.string	"rxInit"
.LASF132:
	.string	"menuLoop"
.LASF133:
	.string	"lvaLoop"
.LASF58:
	.string	"LCDContrast"
.LASF56:
	.string	"StickScaling"
.LASF20:
	.string	"_bitreg8"
.LASF106:
	.string	"menuPage"
.LASF114:
	.string	"adcInit"
.LASF145:
	.string	"write16"
.LASF74:
	.string	"Error"
.LASF39:
	.string	"RollGain"
.LASF37:
	.string	"ILimit"
.LASF42:
	.string	"PitchOffset"
.LASF134:
	.string	"digitalsLoop"
.LASF30:
	.string	"sizetype"
.LASF65:
	.string	"Camera"
.LASF140:
	.string	"ticks"
.LASF67:
	.string	"Armed"
.LASF53:
	.string	"LinkRollPitch"
.LASF119:
	.string	"mpu6050_init"
.LASF98:
	.string	"_t267"
.LASF148:
	.string	"setup"
.LASF92:
	.string	"startArm"
.LASF94:
	.string	"init"
.LASF87:
	.string	"ESCCalibration"
.LASF51:
	.string	"ArmingMode"
.LASF124:
	.string	"lcdClear"
.LASF138:
	.string	"mixerCalculate"
.LASF127:
	.string	"pwmEnable"
.LASF110:
	.string	"lcdDisable"
.LASF143:
	.string	"D:\\\\QuadcopterSource\\\\trunk\\\\KK2-C-Source\\\\Debug"
.LASF113:
	.string	"configInit"
.LASF61:
	.string	"ServoFilter"
.LASF137:
	.string	"controllerCalculate"
.LASF141:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega324pa -g2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffast-math -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF109:
	.string	"menuRefresh"
.LASF123:
	.string	"pwmWrite"
.LASF83:
	.string	"short int"
.LASF40:
	.string	"RollOffset"
.LASF82:
	.string	"fontdescriptor_t"
.LASF52:
	.string	"AutoDisarm"
.LASF8:
	.string	"uint32_t"
.LASF135:
	.string	"sensorsRead"
.LASF144:
	.string	"__iWaitForTicks"
.LASF60:
	.string	"HeightDampeningLimit"
.LASF32:
	.string	"char"
.LASF102:
	.string	"State"
.LASF91:
	.string	"armingLoop"
.LASF96:
	.string	"_cycleStart"
.LASF29:
	.string	"Flags"
.LASF3:
	.string	"unsigned char"
.LASF105:
	.string	"RX_good"
.LASF21:
	.string	"IsMotor"
.LASF0:
	.string	"int8_t"
.LASF117:
	.string	"pwmInit"
.LASF101:
	.string	"Config"
.LASF31:
	.string	"mixer_channel_t"
.LASF49:
	.string	"CalibrateFlags"
.LASF79:
	.string	"sizeX"
.LASF80:
	.string	"sizeY"
.LASF28:
	.string	"Offset"
.LASF81:
	.string	"selector"
.LASF54:
	.string	"ReceiverMode"
.LASF1:
	.string	"uint8_t"
.LASF27:
	.string	"Rudder"
.LASF95:
	.string	"debug_output"
.LASF118:
	.string	"keyboardInit"
.LASF120:
	.string	"lcdInit"
.LASF35:
	.string	"PLimit"
.LASF146:
	.string	"stop_wdt"
.LASF46:
	.string	"RX_chmap"
.LASF45:
	.string	"RX_zero"
.LASF48:
	.string	"ACC_zero"
.LASF116:
	.string	"mixerInit"
.LASF22:
	.string	"IsServo"
.LASF69:
	.string	"SelfLevel"
.LASF99:
	.string	"versionNum"
.LASF128:
	.string	"rxRead"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
