
FlightInit:

.def Counter=r17


	ldi Counter, 64		;copy Mixertable from EE to RAM
	ldx RamMixerTable
	ldz EeMixerTable
fli1:	call ReadEeprom
	st x+, t
	adiw z, 1
	dec counter
	brne fli1


	ldz EeParameterTable	;copy and scale PI gain and limits from EE to 16.8 variables
	call fli2
	b16mov PgainRoll, Temp

	call fli2
	call fli5
	b16mov PlimitRoll, Temp

	call fli2
	call fli3
	b16mov IgainRoll, Temp

	call fli2
	call fli5
	b16mov IlimitRoll, Temp


	call fli2
	b16mov PgainPitch, Temp

	call fli2
	call fli5
	b16mov PlimitPitch, Temp

	call fli2
	call fli3
	b16mov IgainPitch, Temp

	call fli2
	call fli5
	b16mov IlimitPitch, Temp


	call fli2
	b16mov PgainYaw, Temp

	call fli2
	call fli5
	b16mov PlimitYaw, Temp

	call fli2
	call fli3
	b16mov IgainYaw, Temp

	call fli2
	call fli5
	b16mov IlimitYaw, Temp


	
	ldi Counter, 8			;Prepare the OutputRateBitmask and OutputTypeBitmask variable
	ldz RamMixerTable 
fli6:	ldd t, z + MixvalueFlags

	clc
	sbrc t, bMixerFlagRate
	sec
	ror xl

	clc
	sbrc t, bMixerFlagType
	sec
	ror xh

	adiw z, 8
	dec Counter
	brne fli6

	sts OutputRateBitmask, xl

	sts OutputTypeBitmask, xh

.undef Counter

	b16ldi Temp, 2220			;preload the servo filters
	lrv Index, 0
fli8:	b16store_array FilteredOut1, Temp
	rvinc Index
	rvcpi Index, 8
	brne fli8


	ldz eeEscLowLimit
	call fli2
	b16ldi Temper, 44.4
	b16mul EscLowLimit, Temp, Temper

	ldz eeStickScaleRoll
	call fli2
	call fli3
	b16mov StickScaleRoll, Temp

	ldz eeStickScalePitch
	call fli2
	call fli3
	b16mov StickScalePitch, Temp

	ldz eeStickScaleYaw
	call fli2
	call fli3
	b16mov StickScaleYaw, Temp

	ldz eeStickScaleThrottle
	call fli2
	call fli3
	b16mov StickScaleThrottle, Temp

	ldz eeServoFilter
	call fli2
	b16ldi Temper, 100
	b16sub ServoFilter, Temper, Temp
	b16fdiv ServoFilter, 7


	ldz eeSelflevelPgain
	call fli2
;	call fli3
	b16mov SelflevelPgain, Temp

	ldz eeSelflevelPlimit
	call fli2
	b16ldi Temper, 10
	b16mul SelflevelPlimit, Temp, Temper


	ldz eeHeightDampeningGain
	call fli2
	b16mov HeightDampeningGain, Temp

	ldz eeHeightDampeningLimit
	call fli2
	call fli5
	b16mov HeightDampeningLimit, Temp
	
	ldz eeBattAlarmVoltage
	call fli2
	b16ldi Temper, 3.94 ; was 3.7236 but they changed Vref
	b16mul BattAlarmVoltage, Temp, Temper
	
	ldz eeAccSWFilter
	call fli2
	b16fdiv Temp, 8
	b16mov AccSWFilter, Temp

	ldz eeAccTrimRoll
	call fli2
	b16fdiv Temp, 3
	b16mov AccTrimRoll, Temp

	ldz eeAccTrimPitch
	call fli2
	b16fdiv Temp, 3
	b16mov AccTrimPitch, Temp



	ldz eeCamRollGain
	call fli2
	call fli3
	b16mov CamRollGain, Temp

	ldz eeCamRollOffset
	call fli2
	call fli9
	b16mov CamRollOffset, Temp

	ldz eeCamPitchGain
	call fli2
	call fli3
	b16mov CamPitchGain, Temp

	ldz eeCamPitchOffset
	call fli2
	call fli9
	b16mov CamPitchOffset, Temp






	ldz EeSensorCalData		;load calibration data

	call GetEeVariable168
	b16store AccXZero
	call GetEeVariable168
	b16store AccYZero
	call GetEeVariable168
	b16store AccZZero


	ldz eeSelfLevelType		;read flags from EE
	call ReadEeprom
	sts flagSelfLevelType, t

	ldz eeLinkRollPitch
	call ReadEeprom
	sts flagRollPitchLink, t

	ldz eeAutoDisarm
	call ReadEeprom
	sts flagAutoDisarm, t
	
	ldz eeCppmOn
	call ReadEeprom
	sts flagCppmOn, t


	lrv OutputRateDividerCounter, 1
	lrv OutputRateDivider, 5		;slow rate divider. f = 400 / OutputRateDivider

	rvsetflagtrue flagLcdUpdate

	rvsetflagfalse flagMutePwm

	rvsetflagfalse flagArmed
	rvsetflagfalse flagArmedOldState

	lrv RxTimeoutLimit, 250

	lrv ButtonDelay, 0
	
	b16clr AutoDisarmDelay

	b16ldi BatteryVoltageLowpass, 1023

	b16clr BeeperDelay

	b16clr ArmedBeepDds

	b16clr NoActivityTimer
	b16clr NoActivityDds
	 
	rvsetflagfalse flagGeneralBuzzerOn
	rvsetflagfalse flagLvaBuzzerOn
	rvsetflagfalse flagDebugBuzzerOn
	rvsetflagfalse flagGyrosCalibrated

	b16clr LiveUpdateTimer

	b832clr VectorX				;set 3d vector to point straigth up
	b832clr VectorY
	b832ldi VectorZ, 1

	b16clr EulerAngleRoll
	b16clr EulerAnglePitch
		
	lds		t,afs_sel			; get acc setting
	andi	t,0b00011000
	lsr		t
	lsr		t
	lsr		t

	cpi		t,3					;  is it 16g?
	brge	setup16g			;  yes
	cpi		t,2					;  is it 8g?
	brge	setup8g				;  yes
	cpi		t,1					;  is it 4g?
	brge	setup4g				;  yes

;AccZTest : 2g = 128 : 4g = 64 : 8g = 32 : 16g = 16
;TiltAngMul : 0.33 is 2g multiplier : 0.66 is 4g multiplier : 1.32 is 8g multiplier : 2.64 is 16g multiplier

setup2g:
	b16ldi	AccZTest,128
	b16ldi	TiltAngMult,0.33
	rjmp	accsetupend

setup4g:
	b16ldi	AccZTest,64
	b16ldi	TiltAngMult,0.66
	rjmp	accsetupend

setup8g:
	b16ldi	AccZTest,32
	b16ldi	TiltAngMult,1.32
	rjmp	accsetupend

setup16g:
	b16ldi	AccZTest,16
	b16ldi	TiltAngMult,2.64

accsetupend:

	lds		t,gfs_sel			; get gyro setting
	andi	t,0b00011000
	lsr		t
	lsr		t
	lsr		t

	cpi		t,3					;  is it 2000 dps
	brge	setup2000			;  yes
	cpi		t,2					;  is it 1000 dps
	brge	setup1000			;  yes
	cpi		t,1					;  is it  500 dps
	brge	setup500			;  yes
	rjmp	Setup250

setup2000:
	b832ldi	MagicNumber, 11.1699367704
	b16ldi	GyroMult, 4
	rjmp	gyrosetupend

setup1000:
	b832ldi	MagicNumber,5.5849683852
	b16ldi	GyroMult, 2
	rjmp	gyrosetupend

setup500:
	b832ldi	MagicNumber, 2.7924841926
	b16ldi	GyroMult, 1
	rjmp	gyrosetupend

Setup250:
	b832ldi	MagicNumber,1.3962420963		
	b16ldi	GyroMult, 0.5

gyrosetupend:

	ldz eeSensorsCalibrated
	call ReadEeprom
	brflagtrue t, fli11
	lrv Status, 1
	ret

fli11:	call SanityCheck
	ret
	
	
	;---

fli3:	b16fdiv Temp, 4		;divide temp by 16
	ret


	;---

fli2:	call ReadEeprom		;Temp = (Z+)
	adiw z, 1
	mov xl, t
	call ReadEeprom
	adiw z, 1
	mov xh, t
	clr yh
	b16store Temp
	ret

fli5:	b16ldi Temper, 113.664	;most limit values (0-100%) are scaled with 113.664 to fit to the 11366.4 full throttle value
	b16mul Temp, Temp, Temper
	ret

fli9:	b16ldi Temper, 44.4
	b16mul Temp, Temp, Temper
	ret

	;---

SanityCheck:
	call LcdClear
	
	lrv PixelType, 1
	lrv FontSelector, f6x8

;	CheckLimit SelflevelGain, 0, 501, san1
;	CheckLimit SelflevelLimit, 0, 3411, san1			;30%
	

	CheckLimit EscLowLimit, 0, 888, san1				;20%

	CheckLimit HeightDampeningGain, 0, 501 ,san1
	CheckLimit HeightDampeningLimit, 0, 3411 ,san1			;30%


	CheckLimit GyroRollZero, GyroLowLimit, GyroHighLimit, san2
	CheckLimit GyroPitchZero, GyroLowLimit, GyroHighLimit, san2
	CheckLimit GyroYawZero, GyroLowLimit, GyroHighLimit, san2

	CheckLimit AccXZero, AccLowLimit, AccHighLimit, san2
	CheckLimit AccYZero, AccLowLimit, AccHighLimit, san2
	CheckLimit AccZZero, AccLowLimit, AccHighLimit, san2

	call AdcRead
	call AdcRead

	CheckLimit GyroRoll, 100, 900, san3
	CheckLimit GyroPitch, 100, 900, san3
	CheckLimit GyroYaw, 100, 900, san3

	CheckLimit AccX, 100, 900, san3
	CheckLimit AccY, 100, 900, san3
	CheckLimit AccZ, 100, 900, san3

	ret 				;No errors, return


san1:	lrv X1,0			;yes, print error message			
	lrv Y1,15
	mPrintString mad1
	lrv X1,0
	lrv Y1,24
	mPrintString mad2
	rjmp san4


		
san2:	lrv X1,0			;yes, print error message			
	lrv Y1,15
	mPrintString mad5
	lrv X1,0
	lrv Y1,24
	mPrintString mad6
	rjmp san4

		
san3:	lrv X1,0			;yes, print error message			
	lrv Y1,15
	mPrintString mad7
	lrv X1,0
	lrv Y1,24
	mPrintString mad6


san4:	lrv Status, 7			;Error
	
	lrv X1,0
	lrv Y1,40
	mPrintString mad3

	lrv X1,35
	lrv Y1,1
	mPrintString mad8

	lrv X1, 0
	lrv Y1, 57
	mPrintString mad4

	call LcdUpdate

	BuzzerOn
	ldi yh, 39
san5:	ldi yl, 0
	call wms
	dec yh
	brne san5
	BuzzerOff

san6:	call GetButtonsBlocking
	cpi t, 0x01
	brne san6	

	ret





limit:
	cp  xl, yl	;less?
	cpc xh, yh
	brlt lim1
	cp  xl, zl	;greater?
	cpc xh, zh
	brge lim1
	clc		;OK
	ret
lim1:	sec		;not OK
	ret




mad1:	.db "One or more setting", 0
mad2:	.db "is outside its limits", 0

mad3:	.db "Check your settings.", 0, 0

mad4:	.db "             CONTINUE", 0

mad5:	.db "Sensor calibration", 0, 0
mad6:	.db "data out of limits.", 0

mad7:	.db "Sensor raw data", 0

mad8:	.db "WARNING!", 0, 0

;call SerOut16
;ldi xl, 0x0d
;call SerByteOut

