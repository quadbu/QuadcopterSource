/*
 * sensors.c
 *
 * Created: 27.07.2012 20:11:35
 *  Author: OliverS
 *
 * $Id$
 */ 

#include "global.h"
#include "adc.h"
#include <string.h>
#include <stdlib.h>

#include "../mpu6050/mpu6050.h"

uint16_t GYRO_raw[3], ACC_raw[3];
int16_t GYRO[3], ACC[3];
uint8_t BATT;

#define GYRO_DEADBAND	2


// Edit do read data from MPU6050 [10/14/2015 QuocTuanIT]
void sensorsRead()
{
	int16_t ax = 0;
	int16_t ay = 0;
	int16_t az = 0;
	int16_t gx = 0;
	int16_t gy = 0;
	int16_t gz = 0;
	mpu6050_getRawData(&ax, &ay, &az, &gx, &gy, &gz);

	GYRO_raw[PIT] = gx;//adcGet(ADC_GYR_X);
	GYRO[PIT] = -(int16_t)(GYRO_raw[PIT] - Config.GYRO_zero[PIT]);
#if GYRO_DEADBAND > 0
	if (abs(GYRO[PIT]) <= GYRO_DEADBAND) GYRO[PIT] = 0;
#endif

	GYRO_raw[ROL] = gy;//adcGet(ADC_GYR_Y);
	GYRO[ROL] = -(int16_t)(GYRO_raw[ROL] - Config.GYRO_zero[ROL]);
#if GYRO_DEADBAND > 0
	if (abs(GYRO[ROL]) <= GYRO_DEADBAND) GYRO[ROL] = 0;
#endif

	GYRO_raw[YAW] = gz;//adcGet(ADC_GYR_Z);
	GYRO[YAW] = (int16_t)(GYRO_raw[YAW] - Config.GYRO_zero[YAW]);
#if GYRO_DEADBAND > 0
	if (abs(GYRO[YAW]) <= GYRO_DEADBAND) GYRO[YAW] = 0;
#endif
	
	ACC_raw[PIT] = ax;//adcGet(ADC_ACC_X);
	ACC[PIT] = (int16_t)(ACC_raw[PIT] - Config.ACC_zero[PIT]);
	ACC_raw[ROL] = ay;//adcGet(ADC_ACC_Y);
	ACC[ROL] = (int16_t)(ACC_raw[ROL] - Config.ACC_zero[ROL]);
	ACC_raw[YAW] = az;//adcGet(ADC_ACC_Z);
	ACC[YAW] = (int16_t)(ACC_raw[YAW] - Config.ACC_zero[YAW]);

	BATT = adcGet(ADC_VBAT) * 100 / 376;
	
#ifdef SIMULATOR
	GYRO[0] = 100;
	GYRO[1] = 100;
	GYRO[2] = 100;
	ACC[0] = 100;
	ACC[1] = 100;
	ACC[2] = 100;
#endif
}

void sensorsCalibrate()
{
	sensorsRead();
	memcpy(&Config.GYRO_zero, &GYRO_raw, sizeof(Config.GYRO_zero));
	memcpy(&Config.ACC_zero, &ACC_raw, sizeof(Config.ACC_zero));
	//Config.ACC_zero[ZAXIS] -= 124;
	Config.CalibrateFlags = 1;
}
