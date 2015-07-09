HW Version 2.1
SW Version 1.12S1Beginner With Spektrum (R) Satellite Support
Steveis

I realised that the KK2.1 configuration is becomming less simple for people new to the hobby so I have created this "Beginner" version which has all the bells and whistles removed.  It's practically like the KK2.0 V1.6 and flys the same too.

I don't think I can improve the KK2.0 "look-a-like" any further so this will most likely be the only "Beginner" version I will produce.

If you fly aggressive acro, please update to the latest version without "Beginner" on the end of the version.

Changes since HK V1.6 for KK2.1

Default settings are are close to KK2.0 so P&I and Stick Scale values should be close to those used on KK2.0.  I've test flown both and I can't tell the difference.

Warnings:

i)  Firmware will reset all settings

Critical bug(s) corrected: 

i)	Corrected pin assignment for Output 5 and Output 6
ii)	Initialisation settings didn't get written to the MPU6050 so it was stuck on 250 deg/sec and 2g

Minor bug(s) corrected: 

i) Updated KK1_6_MPU6050 to remove unused code for menu button press (thanks RC911)
ii) Updated KK1_6_MPU6050 to correct Meny code to disable OCR1A and B interrupt (thanks RC911)
iii) Changed/Corrected I2C routines so they actually work now
iV) Tidied up I2C routine for burst reading of sensor data
v)  More accurate battery voltage - adjusted to read the same as my KK2.0 (thanks HappySundays)
vi) Corrected low voltage alarm calculation
vii) RC911 bug fix in the Number Editor (original firmware) that allowed setting a value to zero (CLR) when the lower limit was higher.
viii) RC911 bug fix in the original firmware that kept the "Link Roll Pitch" flag from being updated until the user returned to the SAFE screen.

Addition(s): 

i)  MPU6050 Temperature shown on SAFE screen
ii) Added support for Spektrum (R) Satellite and clones (See Note 1 below)
iii) 8.32 maths library to accomodate high gyro rates for self level (probably not required in this "Beginner" version but included nevertheless as I am using it in my future versions.

Changes in operation:

i)  Defaults to AUX for Self Level On/Off
ii) All mixing resets to zero when you do a factory reset so you have to select a motor layout

Note 1 (Many thanks to David Thompson of OpenAero(2) fame for this feature)

Supports Spektrum(R) satellite with Tarot cable
Tested with Spektrum AR7/8000 DSM2 satellite and Orange R100 Satellite
Only supports 10 bit with all data in 1 frame 
Only supports 7 channels
Uses Throttle input for Tarot cable
Hold buttons 2&3 on power up to enter binding mode
If you switch between CPPM, Sat or normal receivers, power cycle the KK2.1
Debug lists 16 frame bytes from satellite - you'll know if there are 2 frames of data (so bind again).
KK2.1 Settings: -
You will need to set "Sat or CPPM" to "Yes" in Mode Settings
You will need to assign the channels correctly in Sat-CPPM Channels as  A=2,E=3,T=1,R=4,Aux=5