;--- RAM ---

.equ	LcdBuffer	=0x0100 ;to 0x04ff  Screen buffer, 1024 bytes

.equ	RamMixerTable	=0x0500 ;to 0x053f  SRAM copy of mixer table

.set	RamVariables	=0x0540 ;to 0x0fff  SRAM variables

				;0x1000-0x10ff Stack





;--- EEPROM ---

			;0x0000  to 0x0003  Signature 

.equ	EeMixerTable	=0x0004 ;to 0x0043  Mixer Table, 8bit, 64 bytes

.equ	EeParameterTable=0x0044 ;to 0x005c  Axis gain and limit parameters, 16bit, 24 bytes

.equ	EeSensorCalData	=0x005d ;to 0x006f  Sensor calibration data, 16.8bit, 18 bytes

.set	EeRegisters	=0x0070 ;to 0x03ff

.equ    EeProfileP2 =0x0400

        

;---  16.8 bit signed registers ---

FixedPointVariableEnumerate168 Temp
FixedPointVariableEnumerate168 Temp2
FixedPointVariableEnumerate168 RxChannel
FixedPointVariableEnumerate168 RxRoll
FixedPointVariableEnumerate168 RxPitch
FixedPointVariableEnumerate168 RxThrottle
FixedPointVariableEnumerate168 RxYaw
FixedPointVariableEnumerate168 RxAux
FixedPointVariableEnumerate168 RxAux2
FixedPointVariableEnumerate168 RxAux3

FixedPointVariableEnumerate168 GyroRoll
FixedPointVariableEnumerate168 GyroPitch
FixedPointVariableEnumerate168 GyroYaw
FixedPointVariableEnumerate168 GyroRollZero
FixedPointVariableEnumerate168 GyroPitchZero
FixedPointVariableEnumerate168 GyroYawZero
FixedPointVariableEnumerate168 GyroRollVC
FixedPointVariableEnumerate168 GyroPitchVC
FixedPointVariableEnumerate168 GyroRollMax
FixedPointVariableEnumerate168 GyroPitchMax
FixedPointVariableEnumerate168 GyroYawMax

FixedPointVariableEnumerate168 AccX
FixedPointVariableEnumerate168 AccY
FixedPointVariableEnumerate168 AccZ
FixedPointVariableEnumerate168 AccXZero
FixedPointVariableEnumerate168 AccYZero
FixedPointVariableEnumerate168 AccZZero
FixedPointVariableEnumerate168 AccXMax
FixedPointVariableEnumerate168 AccYMax
FixedPointVariableEnumerate168 AccZMax

FixedPointVariableEnumerate168 BatteryVoltage
FixedPointVariableEnumerate168 BatteryVoltageLowpass

FixedPointVariableEnumerate168 MPU6050Temperature

FixedPointVariableEnumerate168 CommandRoll		;output from IMU
FixedPointVariableEnumerate168 CommandPitch
FixedPointVariableEnumerate168 CommandYaw

FixedPointVariableEnumerate168 IntegralRoll	;PI control
FixedPointVariableEnumerate168 IntegralPitch
FixedPointVariableEnumerate168 IntegralYaw
FixedPointVariableEnumerate168 Error
FixedPointVariableEnumerate168 PgainRoll
FixedPointVariableEnumerate168 PgainPitch
FixedPointVariableEnumerate168 PgainYaw
FixedPointVariableEnumerate168 PlimitRoll
FixedPointVariableEnumerate168 PlimitPitch
FixedPointVariableEnumerate168 PlimitYaw
FixedPointVariableEnumerate168 IgainRoll
FixedPointVariableEnumerate168 IgainPitch
FixedPointVariableEnumerate168 IgainYaw
FixedPointVariableEnumerate168 IlimitRoll
FixedPointVariableEnumerate168 IlimitPitch
FixedPointVariableEnumerate168 IlimitYaw
FixedPointVariableEnumerate168 PgainRollP2
FixedPointVariableEnumerate168 PgainPitchP2
FixedPointVariableEnumerate168 PgainYawP2
FixedPointVariableEnumerate168 PlimitRollP2
FixedPointVariableEnumerate168 PlimitPitchP2
FixedPointVariableEnumerate168 PlimitYawP2
FixedPointVariableEnumerate168 IgainRollP2
FixedPointVariableEnumerate168 IgainPitchP2
FixedPointVariableEnumerate168 IgainYawP2
FixedPointVariableEnumerate168 IlimitRollP2
FixedPointVariableEnumerate168 IlimitPitchP2
FixedPointVariableEnumerate168 IlimitYawP2

FixedPointVariableEnumerate168 EscLowLimit

FixedPointVariableEnumerate168 StickScaleRoll
FixedPointVariableEnumerate168 StickScalePitch
FixedPointVariableEnumerate168 StickScaleYaw
FixedPointVariableEnumerate168 StickScaleThrottle
FixedPointVariableEnumerate168 StickScaleRollP2
FixedPointVariableEnumerate168 StickScalePitchP2
FixedPointVariableEnumerate168 StickScaleYawP2
FixedPointVariableEnumerate168 StickScaleThrottleP2

FixedPointVariableEnumerate168 Mixvalue

FixedPointVariableEnumerate168 Out1
FixedPointVariableEnumerate168 Out2
FixedPointVariableEnumerate168 Out3
FixedPointVariableEnumerate168 Out4
FixedPointVariableEnumerate168 Out5
FixedPointVariableEnumerate168 Out6
FixedPointVariableEnumerate168 Out7
FixedPointVariableEnumerate168 Out8

FixedPointVariableEnumerate168 FilteredOut1
FixedPointVariableEnumerate168 FilteredOut2
FixedPointVariableEnumerate168 FilteredOut3
FixedPointVariableEnumerate168 FilteredOut4
FixedPointVariableEnumerate168 FilteredOut5
FixedPointVariableEnumerate168 FilteredOut6
FixedPointVariableEnumerate168 FilteredOut7
FixedPointVariableEnumerate168 FilteredOut8

FixedPointVariableEnumerate168 Offset1
FixedPointVariableEnumerate168 Offset2
FixedPointVariableEnumerate168 Offset3
FixedPointVariableEnumerate168 Offset4
FixedPointVariableEnumerate168 Offset5
FixedPointVariableEnumerate168 Offset6
FixedPointVariableEnumerate168 Offset7
FixedPointVariableEnumerate168 Offset8

FixedPointVariableEnumerate168 Temper

FixedPointVariableEnumerate168 SelflevelPgain
FixedPointVariableEnumerate168 SelflevelPlimit
FixedPointVariableEnumerate168 SelflevelPgainP2
FixedPointVariableEnumerate168 SelflevelPlimitP2

FixedPointVariableEnumerate168 HeightDampeningGain
FixedPointVariableEnumerate168 HeightDampeningLimit

FixedPointVariableEnumerate168 BattAlarmVoltage

FixedPointVariableEnumerate168 AccSWFilter

FixedPointVariableEnumerate168 AccAngleRoll
FixedPointVariableEnumerate168 AccAnglePitch

;FixedPointVariableEnumerate168 Debug6
;FixedPointVariableEnumerate168 Debug5
;FixedPointVariableEnumerate168 Debug7
;FixedPointVariableEnumerate168 Debug8

FixedPointVariableEnumerate168 LimitV
FixedPointVariableEnumerate168 Value

FixedPointVariableEnumerate168 LvaDdsAcc

FixedPointVariableEnumerate168 PwmOutput

FixedPointVariableEnumerate168 ServoFilter

FixedPointVariableEnumerate168 ArmedBeepDds

FixedPointVariableEnumerate168 BeeperDelay

FixedPointVariableEnumerate168 AccTrimRoll
FixedPointVariableEnumerate168 AccTrimPitch

FixedPointVariableEnumerate168 AutoDisarmDelay

FixedPointVariableEnumerate168 CheckRxDelay

FixedPointVariableEnumerate168 NoActivityTimer
FixedPointVariableEnumerate168 NoActivityDds

FixedPointVariableEnumerate168 LiveUpdateTimer

FixedPointVariableEnumerate168 EulerAngleRoll
FixedPointVariableEnumerate168 EulerAnglePitch

FixedPointVariableEnumerate168 Angle

FixedPointVariableEnumerate168 AccXfilter
FixedPointVariableEnumerate168 AccYfilter
FixedPointVariableEnumerate168 AccZfilter

FixedPointVariableEnumerate168 CamRollGain
FixedPointVariableEnumerate168 CamRollOffset
FixedPointVariableEnumerate168 CamPitchGain
FixedPointVariableEnumerate168 CamPitchOffset
FixedPointVariableEnumerate168 CamRoll
FixedPointVariableEnumerate168 CamPitch

FixedPointVariableEnumerate168 AccZTest
FixedPointVariableEnumerate168 TiltAngMult

FixedPointVariableEnumerate168 PwmErrorCounter
FixedPointVariableEnumerate168 BattAdcTrim

FixedPointVariableEnumerate168 Out1Low			
FixedPointVariableEnumerate168 Out1High
FixedPointVariableEnumerate168 Out2Low
FixedPointVariableEnumerate168 Out2High
FixedPointVariableEnumerate168 Out3Low
FixedPointVariableEnumerate168 Out3High
FixedPointVariableEnumerate168 Out4Low
FixedPointVariableEnumerate168 Out4High
FixedPointVariableEnumerate168 Out5Low
FixedPointVariableEnumerate168 Out5High
FixedPointVariableEnumerate168 Out6Low
FixedPointVariableEnumerate168 Out6High
FixedPointVariableEnumerate168 Out7Low
FixedPointVariableEnumerate168 Out7High
FixedPointVariableEnumerate168 Out8Low
FixedPointVariableEnumerate168 Out8High
FixedPointVariableEnumerate168 Out7Lowms	;for the motor sliders
FixedPointVariableEnumerate168 Out7Highms
FixedPointVariableEnumerate168 Out8Lowms
FixedPointVariableEnumerate168 Out8Highms

FixedPointVariableEnumerate832 MagicNumber
FixedPointVariableEnumerate832 MagicNumberMult
FixedPointVariableEnumerate832 MagicNumberTime
FixedPointVariableEnumerate832 Theta
FixedPointVariableEnumerate832 Sine
FixedPointVariableEnumerate832 Cosine

FixedPointVariableEnumerate832 VectorX
FixedPointVariableEnumerate832 VectorY
FixedPointVariableEnumerate832 VectorZ
FixedPointVariableEnumerate832 LengthVector

FixedPointVariableEnumerate832 VectorA
FixedPointVariableEnumerate832 VectorB

FixedPointVariableEnumerate832 TempA
FixedPointVariableEnumerate832 TempB
FixedPointVariableEnumerate832 TempC
FixedPointVariableEnumerate832 TempD

FixedPointVariableEnumerate832 VectorNewA
FixedPointVariableEnumerate832 VectorNewB

FixedPointVariableEnumerate832 Debug

FixedPointVariableEnumerate832 AccXfilter832
FixedPointVariableEnumerate832 AccXSqd
FixedPointVariableEnumerate832 AccYfilter832
FixedPointVariableEnumerate832 AccYSqd
FixedPointVariableEnumerate832 AccZfilter832
FixedPointVariableEnumerate832 AccZSqd
FixedPointVariableEnumerate832 MagAccMinTest
FixedPointVariableEnumerate832 MagAccMaxTest

;--- RAM variables (8bit)----

RamVariableEnumerate8 TWI_address
RamVariableEnumerate8 TWI_data

RamVariableEnumerate8 Xpos		;pixel pos
RamVariableEnumerate8 Ypos

RamVariableEnumerate8 X1		;line start and end
RamVariableEnumerate8 Y1
RamVariableEnumerate8 X2
RamVariableEnumerate8 Y2

RamVariableEnumerate8 PixelType		;0 = EOR   1 = OR   2 = AND

RamVariableEnumerate8 FontSelector

RamVariableEnumerate8 MainMenuCursorYposSave
RamVariableEnumerate8 MainMenuListYposSave

RamVariableEnumerate8 LoadMenuCursorYposSave
RamVariableEnumerate8 LoadMenuListYposSave

RamVariableEnumerate8 RollStartL		;used in readrx.asm
RamVariableEnumerate8 RollStartH

RamVariableEnumerate8 PitchStartL
RamVariableEnumerate8 PitchStartH

RamVariableEnumerate8 ThrottleStartL
RamVariableEnumerate8 ThrottleStartH

RamVariableEnumerate8 YawStartL
RamVariableEnumerate8 YawStartH

RamVariableEnumerate8 AuxStartL
RamVariableEnumerate8 AuxStartH


RamVariableEnumerate8 RollL		;output from readrx.asm
RamVariableEnumerate8 RollH

RamVariableEnumerate8 PitchL
RamVariableEnumerate8 PitchH

RamVariableEnumerate8 ThrottleL
RamVariableEnumerate8 ThrottleH

RamVariableEnumerate8 YawL
RamVariableEnumerate8 YawH

RamVariableEnumerate8 AuxL
RamVariableEnumerate8 AuxH

RamVariableEnumerate8 RollDcnt
RamVariableEnumerate8 PitchDcnt
RamVariableEnumerate8 ThrottleDcnt
RamVariableEnumerate8 YawDcnt
RamVariableEnumerate8 AuxDcnt

RamVariableEnumerate8 flagRollValid
RamVariableEnumerate8 flagPitchValid
RamVariableEnumerate8 flagThrottleValid
RamVariableEnumerate8 flagYawValid
RamVariableEnumerate8 flagAuxValid

RamVariableEnumerate8 RxTimeoutLimit

RamVariableEnumerate8 OutputRateBitmask	;for each output channel: 0=slow rate  1=fast rate
RamVariableEnumerate8 OutputTypeBitmask	;for each output channel: 0=servo 1=ESC
RamVariableEnumerate8 OutputRateDivider	;
RamVariableEnumerate8 OutputRateDividerCounter

RamVariableEnumerate8 flagRollPitchLink

RamVariableEnumerate8 flagPwmEnd
RamVariableEnumerate8 flagPwmGenM7M8

RamVariableEnumerate8 flagArmed
RamVariableEnumerate8 flagArmedOldState
RamVariableEnumerate8 flagThrottleZero
RamVariableEnumerate8 ArmingDelay

RamVariableEnumerate8 TimeStampL		;for debug purposes
RamVariableEnumerate8 TimeStampH

RamVariableEnumerate8 flagLcdUpdate

RamVariableEnumerate8 flagSelfLevelType
RamVariableEnumerate8 flagSelfLevelOn
RamVariableEnumerate8 flagStickCommandSelfLevelOn

RamVariableEnumerate8 flagAuxOn
RamVariableEnumerate8 flagAuxOnOldState

RamVariableEnumerate8 ButtonDelay

RamVariableEnumerate8 flagSensorsOk

RamVariableEnumerate8 flagA
RamVariableEnumerate8 flagB
RamVariableEnumerate8 flagC

RamVariableEnumerate8 Index

RamVariableEnumerate8 OutputTypeBitmaskCopy

RamVariableEnumerate8 flagInactive

RamVariableEnumerate8 flagLvaBuzzerOn

RamVariableEnumerate8 flagGeneralBuzzerOn

RamVariableEnumerate8 flagLMABuzzerOn

RamVariableEnumerate8 Status
RamVariableEnumerate8 StatusOldState

RamVariableEnumerate8 flagAutoDisarm
RamVariableEnumerate8 flagLMA

RamVariableEnumerate8 flagMutePwm

RamVariableEnumerate8 flagCppmOn			; set for CPPM, Sat or SBUS

RamVariableEnumerate8 flagDebugBuzzerOn

RamVariableEnumerate8 flagGyrosCalibrated

RamVariableEnumerate8 CppmPulseStartL
RamVariableEnumerate8 CppmPulseStartH

RamVariableEnumerate8 CppmPulseArrayAddressL
RamVariableEnumerate8 CppmPulseArrayAddressH

RamVariableEnumerate8 CppmChannel1L
RamVariableEnumerate8 CppmChannel1H
RamVariableEnumerate8 CppmChannel2L
RamVariableEnumerate8 CppmChannel2H
RamVariableEnumerate8 CppmChannel3L
RamVariableEnumerate8 CppmChannel3H
RamVariableEnumerate8 CppmChannel4L
RamVariableEnumerate8 CppmChannel4H
RamVariableEnumerate8 CppmChannel5L
RamVariableEnumerate8 CppmChannel5H
RamVariableEnumerate8 CppmChannel6L
RamVariableEnumerate8 CppmChannel6H
RamVariableEnumerate8 CppmChannel7L
RamVariableEnumerate8 CppmChannel7H
RamVariableEnumerate8 CppmChannel8L
RamVariableEnumerate8 CppmChannel8H
RamVariableEnumerate8 CppmChannel9L
RamVariableEnumerate8 CppmChannel9H

RamVariableEnumerate8 CppmTimeoutCounter

RamVariableEnumerate8 SerialByteArrayAddressL
RamVariableEnumerate8 SerialByteArrayAddressH

RamVariableEnumerate8 SerialByte0
RamVariableEnumerate8 SerialByte1
RamVariableEnumerate8 SerialByte2
RamVariableEnumerate8 SerialByte3
RamVariableEnumerate8 SerialByte4
RamVariableEnumerate8 SerialByte5
RamVariableEnumerate8 SerialByte6
RamVariableEnumerate8 SerialByte7
RamVariableEnumerate8 SerialByte8
RamVariableEnumerate8 SerialByte9
RamVariableEnumerate8 SerialByte10
RamVariableEnumerate8 SerialByte11
RamVariableEnumerate8 SerialByte12
RamVariableEnumerate8 SerialByte13
RamVariableEnumerate8 SerialByte14
RamVariableEnumerate8 SerialByte15 ;used up to here for Spektrum satellite
RamVariableEnumerate8 SerialByte16 ;additional bytes used for SBus
RamVariableEnumerate8 SerialByte17
RamVariableEnumerate8 SerialByte18
RamVariableEnumerate8 SerialByte19
RamVariableEnumerate8 SerialByte20
RamVariableEnumerate8 SerialByte21
RamVariableEnumerate8 SerialByte22
RamVariableEnumerate8 SerialByte23
RamVariableEnumerate8 SerialByte24

RamVariableEnumerate8 SerialRxStartL
RamVariableEnumerate8 SerialRxStartH

RamVariableEnumerate8 flagSerialBufferFull  ;flag to let you know the satellite RX buffer is full
RamVariableEnumerate8 flagSerialRx          ;flag to let you know that a serial RX is used (Sat or SBus)
RamVariableEnumerate8 flagSatRx				;Satellite Receiver is used
RamVariableEnumerate8 flagDSM2Rx			;DSM2 Satellite Receiver is used
RamVariableEnumerate8 flagDSMXRx			;DSMX Satellite Receiver is used
RamVariableEnumerate8 flagSBusRx			;SBus Receiver is used
RamVariableEnumerate8 RxType				;0 = Std, 1 = CPPM, 2 = Sat, 3 = SBus

RamVariableEnumerate8 gfs_sel
RamVariableEnumerate8 afs_sel
RamVariableEnumerate8 afs_sel_in
RamVariableEnumerate8 afs_sel_out
RamVariableEnumerate8 dlpf

RamVariableEnumerate8 BoardOffset
RamVariableEnumerate8 flagSpinOnArm
RamVariableEnumerate8 flagSSGimbal
RamVariableEnumerate8 TXGimbal
RamVariableEnumerate8 flagChannelMap

RamVariableEnumerate8 flagServoOnArm

RamVariableEnumerate8 GyroMult
RamVariableEnumerate8 TrigTimerL
RamVariableEnumerate8 TrigTimerH

RamVariableEnumerate8 SelectedMotorLayout ;used to save motor layout selected for display on Alt Safe Screen (it's a guide as you could use mixer editor)

RamVariableEnumerate8 flagAltSafeScreen

RamVariableEnumerate8 flagProfileP1
RamVariableEnumerate8 flagSwitchSSPI

RamVariableEnumerate8 flagSLPGZero
RamVariableEnumerate8 flagSLPGP2Zero

;--- EEPROM registers ----

EEVariableEnumerate16 eeLcdContrast

EEVariableEnumerate16 eeSelflevelPgain		;do not change the order of these variables, works as an array
EEVariableEnumerate16 eeSelflevelPlimit
EEVariableEnumerate16 eeAccTrimRoll
EEVariableEnumerate16 eeAccTrimPitch

EEVariableEnumerate16 eeEscLowLimit		;do not change the order of these variables, works as an array
EEVariableEnumerate16 eeHeightDampeningGain
EEVariableEnumerate16 eeHeightDampeningLimit
EEVariableEnumerate16 eeBattAlarmVoltage
EEVariableEnumerate16 eeServoFilter
EEVariableEnumerate16 eeAccSWFilter

EEVariableEnumerate16 eeStickScaleRoll		;do not change the order of these variables, works as an array
EEVariableEnumerate16 eeStickScalePitch
EEVariableEnumerate16 eeStickScaleYaw
EEVariableEnumerate16 eeStickScaleThrottle

EEVariableEnumerate8 eeCppmRoll			;do not change the order of these variables, works as an array
EEVariableEnumerate8 eeCppmPitch
EEVariableEnumerate8 eeCppmThrottle
EEVariableEnumerate8 eeCppmYaw
EEVariableEnumerate8 eeCppmAux

EEVariableEnumerate8 eeSelfLevelType	;true=Stick command  false=Aux    ;do not change the order of these variables, works as an array
EEVariableEnumerate8 eeLinkRollPitch	;true=on  false=off 
EEVariableEnumerate8 eeAutoDisarm		;true=on  false=off
EEVariableEnumerate8 eeRxType			;0 = Std, 1 = CPPM, 2 = Sat, 3 = SBus
EEVariableEnumerate8 eeChannelMap		;true=on  false=off
EEVariableEnumerate8 eeflagLMA			;true=on  false=off

EEVariableEnumerate16 eeCamRollGain		;do not change the order of these variables, works as an array
EEVariableEnumerate16 eeCamRollOffset
EEVariableEnumerate16 eeCamPitchGain
EEVariableEnumerate16 eeCamPitchOffset

EEVariableEnumerate8 eeSensorsCalibrated

EEVariableEnumerate8 eegfs_sel			;for MPU setup
EEVariableEnumerate8 eeafs_sel
EEVariableEnumerate8 eedlpf
										;for misc settings 2, works as an array
EEVariableEnumerate8 eeBoardOffset		;-45 0 +45		
EEVariableEnumerate8 eeSpinOnArm		;true=on false=off
EEVariableEnumerate8 eeSSGimbal			;true=on false=off
EEVariableEnumerate8 eeTXGimbal			;No, Aux, 6&7
EEVariableEnumerate8 eeAltSafeScreen	;true=on false=off
EEVariableEnumerate16 eeBattAdcTrim		;range -6 to +6

										;for misc settings 3, works as an array
EEVariableEnumerate8 eeServoOnArm		;true=on false=off		

EEVariableEnumerate8 eeSelectedMotorLayout		;used to save motor layout selected for display on Alt Safe Screen (it's a guide as you could use mixer editor)

EEVariableEnumerate16 eeOut1Low			; for setting end point limits - work as an array
EEVariableEnumerate16 eeOut1High
EEVariableEnumerate16 eeOut2Low
EEVariableEnumerate16 eeOut2High
EEVariableEnumerate16 eeOut3Low
EEVariableEnumerate16 eeOut3High
EEVariableEnumerate16 eeOut4Low
EEVariableEnumerate16 eeOut4High
EEVariableEnumerate16 eeOut5Low
EEVariableEnumerate16 eeOut5High
EEVariableEnumerate16 eeOut6Low
EEVariableEnumerate16 eeOut6High
EEVariableEnumerate16 eeOut7Low
EEVariableEnumerate16 eeOut7High
EEVariableEnumerate16 eeOut8Low
EEVariableEnumerate16 eeOut8High

EEVariableEnumerate8 eeProfileP1	;true=P1 false=P2   works as array, do not change order
EEVariableEnumerate8 eeSwitchSSPI	;true=Yes false=No

;--- Registers (global) ----

					;r0-r1 used by the HW multiplier

					;r2-r13 part of the local variables pool

.def	treg			=r14	;temp reg for ISR

.def	SregSaver		=r15	;Storage of the SREG, used in ISR

.def	t			=r16	;Main temporary register

					;R17-R24 is the local variables pool

.def	tt			=r25	;Temp reg for ISR

