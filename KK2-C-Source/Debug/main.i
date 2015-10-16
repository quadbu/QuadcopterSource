# 1 "../src/main.c"
# 1 "D:\\QuadcopterSource\\trunk\\KK2-C-Source\\Debug//"
# 1 "<command-line>"
# 1 "../src/main.c"
# 10 "../src/main.c"
# 1 "../include/global.h" 1
# 27 "../include/global.h"
# 1 "../include/system.h" 1
# 14 "../include/system.h"
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 1 3 4
# 121 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h" 2 3 4
# 15 "../include/system.h" 2





void setup();
uint32_t ticks();
uint16_t micros();
uint16_t millis();
# 33 "../include/system.h"
static __inline__ void __iWaitForMS(uint16_t __m, uint16_t ms)
{
 while (millis() < ms + __m);
}

static __inline__ void __iWaitForTicks(uint32_t __m, uint32_t t)
{
 while (ticks() < t + __m);
}
# 28 "../include/global.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 1 3
# 37 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 1 3
# 126 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 1 3
# 77 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 2 3
# 100 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 254 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\iom324pa.h" 1 3
# 255 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 616 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h" 1 3
# 617 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h" 1 3
# 619 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h" 1 3
# 621 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3






# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 1 3
# 239 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 628 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h" 1 3
# 631 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 38 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 39 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 2 3



static __inline__ uint8_t __iSeiRetVal(void)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    return 1;
}

static __inline__ void __iSeiParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iCliParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iRestore(const uint8_t *__s)
{
    (*(volatile uint8_t *)((0x3F) + 0x20)) = *__s;
    __asm__ volatile ("" ::: "memory");
}
# 29 "../include/global.h" 2
# 1 "../include/hardware.h" 1
# 16 "../include/hardware.h"
typedef struct
{
 unsigned int bit0 : 1;
 unsigned int bit1 : 1;
 unsigned int bit2 : 1;
 unsigned int bit3 : 1;
 unsigned int bit4 : 1;
 unsigned int bit5 : 1;
 unsigned int bit6 : 1;
 unsigned int bit7 : 1;
} volatile _bitreg8;
# 30 "../include/global.h" 2
# 1 "../include/config.h" 1
# 14 "../include/config.h"
# 1 "../include/global.h" 1
# 15 "../include/config.h" 2
# 1 "../include/mixer.h" 1
# 19 "../include/mixer.h"
typedef union
{
 int8_t I8[6];
 struct
 {
  int8_t Throttle;
  int8_t Aileron;
  int8_t Elevator;
  int8_t Rudder;
  int8_t Offset;
  union
  {
   uint8_t Flags;
   struct
   {
    uint8_t IsMotor : 1;
    uint8_t IsServo : 1;
    uint8_t IsHiRate : 1;
   };
  };
 };
} mixer_channel_t;


typedef struct
{
 const char *Name;
 uint8_t Channels;
 mixer_channel_t Channel[];
} model_t;


typedef mixer_channel_t mixer_t[8];


extern const model_t* const modelTable[22];
extern uint16_t MIXER[8];

void mixerInit();
void mixerLoadModel(uint8_t index);
void mixerCalculate();
void mixerOutput();
# 16 "../include/config.h" 2
# 1 "../include/pid.h" 1
# 12 "../include/pid.h"
typedef union
{
 struct
 {
  uint8_t PGain;
  uint8_t PLimit;
  uint8_t IGain;
  uint8_t ILimit;
 };
 uint8_t UI8[4];
} pid_param_t;

typedef struct
{
 int16_t Integral;
 int16_t Error;
} pid_state_t;
# 17 "../include/config.h" 2

typedef struct
{
 int8_t RollGain;
 int8_t RollOffset;
 int8_t PitchGain;
 int8_t PitchOffset;
} camera_t;

typedef struct
{
 uint8_t signature;
 uint16_t RX_zero[8];
 uint8_t RX_chmap[8];
 uint16_t GYRO_zero[3];
 uint16_t ACC_zero[3];
 uint8_t CalibrateFlags;
 pid_param_t PID[3];




 uint8_t SelfLevelMode;

 uint8_t ArmingMode;
 uint8_t AutoDisarm;
 uint8_t LinkRollPitch;
 uint8_t ReceiverMode;
 uint8_t MixerIndex;
 uint8_t StickScaling[4];
 uint8_t MinThrottle;
 uint8_t LCDContrast;
 uint8_t HeightDampening;
 uint8_t HeightDampeningLimit;
 uint8_t LVA;
 uint8_t ServoFilter;
 pid_param_t PID_SelfLevel;
 int8_t AccTrim[2];
 mixer_t Mixer;
 camera_t Camera;
} config_t;

extern config_t Config;

void configInit();
void configLoad();
void configSave();
void configReset();
# 31 "../include/global.h" 2




typedef struct
{
 uint8_t Armed;
 uint8_t ThrottleOff;
 uint8_t SelfLevel;
 uint8_t Aux1;
 uint8_t Aux2;
 uint8_t Aux3;
 uint8_t Aux4;







 uint8_t Error;



 uint8_t Mode;

 uint16_t CycleTime;
 uint16_t CalculationTime;
} state_t;

extern state_t State;
void arm(uint8_t);
# 11 "../src/main.c" 2
# 1 "../include/lcd.h" 1
# 14 "../include/lcd.h"
# 1 "../include/fonts.h" 1
# 15 "../include/fonts.h"
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 1 3
# 87 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h" 1 3 4
# 212 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 88 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 2 3
# 1137 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static inline size_t strlen_P(const char * s);
static inline size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 16 "../include/fonts.h" 2

typedef struct
{
 uint8_t sizeX, sizeY;
 const char * (*selector)(unsigned char);
} fontdescriptor_t;


extern const fontdescriptor_t font4x6;
extern const fontdescriptor_t font6x8;
extern const fontdescriptor_t font12x16;

extern const fontdescriptor_t *fonts[];
# 15 "../include/lcd.h" 2
# 1 "../include/glyphs.h" 1
# 16 "../include/glyphs.h"
typedef struct
{
 uint8_t sizeX, sizeY;
 char glyph[];
} glyph_t;

extern const glyph_t glyArrowDown;
extern const glyph_t glyArrowUp;
extern const glyph_t glyBall;
extern const glyph_t glyDirCW;
extern const glyph_t glyDirCCW;
extern const glyph_t glyLogo;
extern const glyph_t glyFC;
# 16 "../include/lcd.h" 2


void lcdInit();
void lcdClear();
void lcdSetPos(uint8_t line, uint8_t column);
void lcdWriteChar(char c);
void lcdWriteString(char *s);
void lcdWriteString_P(const char * s);
void lcdReverse(uint8_t reversed);
void lcdSetContrast(uint8_t contrast);
void lcdSetPixel(uint8_t x, uint8_t y, uint8_t on);
void lcdLine(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1);
void lcdEnable();
void lcdDisable();
void lcdSelectFont(const fontdescriptor_t *font);
void lcdXY(uint8_t x, uint8_t y);
void lcdWriteGlyph_P(const glyph_t *glyph, uint8_t mode);
void lcdFillRectangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t color);
void lcdRectangle(uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1, uint8_t color);
# 12 "../src/main.c" 2
# 1 "../include/adc.h" 1
# 14 "../include/adc.h"
void adcInit();
uint16_t adcRead(uint8_t channel);
uint16_t adcGet(uint8_t channel);
# 13 "../src/main.c" 2
# 1 "../include/rx.h" 1
# 14 "../include/rx.h"
extern int16_t RX[8];
extern uint16_t RX_raw[8];
extern uint8_t RX_good;
# 30 "../include/rx.h"
void rxInit(uint8_t mode);
void rxRead();
uint8_t rxCalibrate();
# 14 "../src/main.c" 2
# 1 "../include/sensors.h" 1
# 14 "../include/sensors.h"
extern int16_t GYRO[3];
extern uint16_t GYRO_raw[3];
extern int16_t ACC[3];
extern uint16_t ACC_raw[3];
extern uint8_t BATT;

void sensorsRead();
void sensorsCalibrate();
# 15 "../src/main.c" 2
# 1 "../include/pwm.h" 1
# 14 "../include/pwm.h"
void pwmInit();
void pwmWrite(uint8_t channel, uint16_t value);
void pwmEnable();
void pwmDisable();
# 16 "../src/main.c" 2
# 1 "../include/mixer.h" 1
# 17 "../src/main.c" 2
# 1 "../include/keyboard.h" 1
# 17 "../include/keyboard.h"
void keyboardInit();
uint8_t keyboardRead();
uint8_t keyboardState();
# 18 "../src/main.c" 2
# 1 "../include/menu.h" 1
# 12 "../include/menu.h"
uint8_t menuPage;

void menuInit();
void menuLoop();
void menuRefresh();
# 19 "../src/main.c" 2
# 1 "../include/digitals.h" 1
# 13 "../include/digitals.h"
void digitalsInit();
void digitalsBuzz(uint16_t ms);
void digitalsBuzzBlocking(uint16_t ms);
void digitalsLoop();
void digitalsBuzzInterval(uint16_t ms);
void digitalsLed(uint16_t ms);
void digitalsLedInterval(uint16_t ms);
# 20 "../src/main.c" 2
# 1 "../include/controller.h" 1
# 12 "../include/controller.h"
extern int16_t CONTROL[4];

void controllerReset();
void controllerCalculate();
int16_t limit(int16_t value, int16_t low, int16_t high);
# 21 "../src/main.c" 2
# 1 "../include/imu.h" 1
# 14 "../include/imu.h"
extern int16_t ANGLE[3];
extern int16_t GYRO_RATE[3];

void imuCalculate();
# 22 "../src/main.c" 2
# 1 "../include/serial.h" 1
# 14 "../include/serial.h"
void serialInit();
void serialTerminate();
void serialWriteChar(char c);
int16_t serialReadChar();
uint8_t serialAvail();
# 23 "../src/main.c" 2
# 1 "../include/msp.h" 1
# 14 "../include/msp.h"
void mspLoop();
# 24 "../src/main.c" 2
# 1 "../src/../mpu6050/mpu6050.h" 1
# 21 "../src/../mpu6050/mpu6050.h"
# 1 "../src/../mpu6050/mpu6050registers.h" 1
# 22 "../src/../mpu6050/mpu6050.h" 2
# 114 "../src/../mpu6050/mpu6050.h"
extern void mpu6050_init();
extern uint8_t mpu6050_testConnection();


extern void mpu6050_getRawData(int16_t* ax, int16_t* ay, int16_t* az, int16_t* gx, int16_t* gy, int16_t* gz);
extern void mpu6050_getConvData(double* axg, double* ayg, double* azg, double* gxds, double* gyds, double* gzds);


extern void mpu6050_setSleepDisabled();
extern void mpu6050_setSleepEnabled();

extern int8_t mpu6050_readBytes(uint8_t regAddr, uint8_t length, uint8_t *data);
extern int8_t mpu6050_readByte(uint8_t regAddr, uint8_t *data);
extern void mpu6050_writeBytes(uint8_t regAddr, uint8_t length, uint8_t* data);
extern void mpu6050_writeByte(uint8_t regAddr, uint8_t data);
extern int8_t mpu6050_readBits(uint8_t regAddr, uint8_t bitStart, uint8_t length, uint8_t *data);
extern int8_t mpu6050_readBit(uint8_t regAddr, uint8_t bitNum, uint8_t *data);
extern void mpu6050_writeBits(uint8_t regAddr, uint8_t bitStart, uint8_t length, uint8_t data);
extern void mpu6050_writeBit(uint8_t regAddr, uint8_t bitNum, uint8_t data);
# 25 "../src/main.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\wdt.h" 1 3
# 26 "../src/main.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\sleep.h" 1 3
# 27 "../src/main.c" 2

void lvaLoop();


# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 1 3
# 47 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h" 1 3 4
# 324 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h" 3 4
typedef int wchar_t;
# 48 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 2 3
# 68 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 114 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 128 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 151 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 183 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 216 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 250 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 262 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 274 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 286 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 298 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 346 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 372 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 417 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 462 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 505 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 547 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 579 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 638 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 655 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 32 "../src/main.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\string.h" 1 3
# 45 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stddef.h" 1 3 4
# 46 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\string.h" 2 3
# 111 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int ffs (int __val) __attribute__((__const__));
extern int ffsl (long __val) __attribute__((__const__));
extern int ffsll (long long __val) __attribute__((__const__));
extern void *memccpy(void *, const void *, int, size_t);
extern void *memchr(const void *, int, size_t) __attribute__((__pure__));
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memcpy(void *, const void *, size_t);
extern void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern void *memmove(void *, const void *, size_t);
extern void *memrchr(const void *, int, size_t) __attribute__((__pure__));
extern void *memset(void *, int, size_t);
extern char *strcat(char *, const char *);
extern char *strchr(const char *, int) __attribute__((__pure__));
extern char *strchrnul(const char *, int) __attribute__((__pure__));
extern int strcmp(const char *, const char *) __attribute__((__pure__));
extern char *strcpy(char *, const char *);
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
extern char *strdup(const char *s1);
extern size_t strlcat(char *, const char *, size_t);
extern size_t strlcpy(char *, const char *, size_t);
extern size_t strlen(const char *) __attribute__((__pure__));
extern char *strlwr(char *);
extern char *strncat(char *, const char *, size_t);
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncpy(char *, const char *, size_t);
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
extern char *strrchr(const char *, int) __attribute__((__pure__));
extern char *strrev(char *);
extern char *strsep(char **, const char *);
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
extern char *strstr(const char *, const char *) __attribute__((__pure__));
extern char *strtok(char *, const char *);
extern char *strtok_r(char *, const char *, char **);
extern char *strupr(char *);
# 33 "../src/main.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdfix.h" 1 3 4
# 36 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdfix.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdfix-gcc.h" 1 3 4
# 37 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdfix.h" 2 3 4




typedef signed char int_hr_t;
typedef unsigned char uint_uhr_t;

typedef short int int_r_t;
typedef short unsigned int uint_ur_t;

typedef short int int_hk_t;
typedef short unsigned int uint_uhk_t;

typedef long int int_lr_t;
typedef long unsigned int uint_ulr_t;

typedef long int int_k_t;
typedef long unsigned int uint_uk_t;

typedef long long int int_llr_t;
typedef long long unsigned int uint_ullr_t;

typedef long long int int_lk_t;
typedef long long unsigned int uint_ulk_t;

typedef long long int int_llk_t;
typedef long long unsigned int uint_ullk_t;
# 34 "../src/main.c" 2

state_t State;
static const char versionNum[] __attribute__((__progmem__)) = "Version 0.2b";
static const char versionAuthor[] __attribute__((__progmem__)) = "by Oliver Schulz";



__attribute__((naked))
__attribute__((section(".init3")))
__attribute__((used))
static void stop_wdt()
{

 (*(volatile uint8_t *)((0x34) + 0x20)) = 0;

 __asm__ __volatile__ ( "in __tmp_reg__, __SREG__" "\n\t" "cli" "\n\t" "sts %0, %1" "\n\t" "sts %0, __zero_reg__" "\n\t" "out __SREG__,__tmp_reg__" "\n\t" : : "M" (((uint16_t) &((*(volatile uint8_t *)(0x60))))), "r" ((uint8_t)((1 << (4)) | (1 << (3)))) : "r0" );
}

static void init()
{
 configInit();
 adcInit();


 rxInit(Config.ReceiverMode);

 mixerInit();
 pwmInit();
 keyboardInit();


 mpu6050_init();



 lcdInit();
 menuInit();

}

static void checkState()
{
 State.ThrottleOff = RX[3] < 5;
 State.Aux1 = RX[4] > 10;
 State.Aux2 = RX[5] > 10;
 State.Aux3 = RX[6] > 10;
 State.Aux4 = RX[7] > 10;

 if (Config.SelfLevelMode != 0)
 {
  if (Config.SelfLevelMode == 2)
   State.SelfLevel = 1;
  else
   State.SelfLevel = State.Aux1;
 }

 uint8_t e = 0;
 if (!Config.CalibrateFlags)
  e |= 0x80;
 e |= (~RX_good) & (0x02|0x01|0x08|0x04);

 State.Error = e;
}

static void ESCCalibration()
{
 State.Mode = 1;

 lcdClear();
 lcdSetPos(3, 18);
 lcdWriteString_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("Calibrating ESCs"); &__c[0];})));

 State.Armed = 1;
 pwmEnable();
 while(1)
 {
  rxRead();
  for (uint8_t i = 0; i < 8; i++)
  {
   if (Config.Mixer[i].IsMotor)
    pwmWrite(i, RX_raw[3]);
   else
    pwmWrite(i, 1520);
  }
 }
}

void arm(uint8_t value)
{
 if (value && !State.Armed)
 {
  State.Armed = 1;
  ((*(_bitreg8*)&(*(volatile uint8_t *)((0x05) + 0x20))).bit3) = 1;
  menuRefresh();
  lcdDisable();
  controllerReset();
 }
 else if (!value && State.Armed)
 {
  State.Armed = 0;
  ((*(_bitreg8*)&(*(volatile uint8_t *)((0x05) + 0x20))).bit3) = 0;
  menuRefresh();
  lcdEnable();
 }
}

static void armingLoop()
{
 static uint16_t startArm;
 static uint16_t startOff;
 uint16_t t = millis();

 if (menuPage != 0) return;
 if (State.Error != 0) return;

 if (startArm == 0)
 {
  if (State.ThrottleOff && __builtin_abs(RX[2]) > 50)
   startArm = t;
 }
 else if (!State.ThrottleOff || __builtin_abs(RX[2]) < 50)
  startArm = 0;
 else if (t - startArm >= 2000)
 {
  if (RX[2] > 50)
   arm(1);
  else
   arm(0);
  startArm = 0;
 }

 if (Config.AutoDisarm && !Config.ArmingMode)
 {
  if (startOff == 0)
  {
   if (State.ThrottleOff && State.Armed)
    startOff = t;
  }
  else if (!State.ThrottleOff || !State.Armed)
  {
   startOff = 0;
  }
  else if (t - startOff >= 60000)
  {
   arm(0);
   startOff = 0;
  }
 }
}

static void startup()
{

 lcdClear();
 lcdSetPos(0, 0);
 lcdSelectFont(&font12x16);
 lcdWriteString_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("KK2-Copter"); &__c[0];})));
 lcdSelectFont(((void *)0));
 lcdSetPos(3, 0);
 lcdWriteString_P(versionNum);
 lcdSetPos(4, 0);
 lcdWriteString_P(versionAuthor);

 digitalsBuzzBlocking(500);
 for(uint16_t _m = millis(); millis() - _m < (700););

 rxRead();
 if (RX[3] >= 90 || keyboardState() == ((1 << (7)) | (1 << (4))))
  ESCCalibration();
}


static void write16(int16_t v)
{
 serialWriteChar(v & 0xFF);
 serialWriteChar(v >> 8);
}

static void debug_output()
{
 serialWriteChar(0x1F);
 serialWriteChar(0x1E);
 serialWriteChar(0x1C);



 write16(CONTROL[0]);
 write16(CONTROL[1]);
 write16(CONTROL[2]);
 write16(CONTROL[3]);







 write16(State.CalculationTime);
}


int main(void)
{

 setup();


 __asm__ __volatile__ ("sei" ::: "memory");


 init();

 startup();

 pwmEnable();
 for(uint32_t _cycleStart = ticks(); 1; __iWaitForTicks(_cycleStart, ((2000) * (20UL))), _cycleStart += ((2000) * (20UL)))
 {
  static uint32_t lastStart;
  State.CycleTime = ((_cycleStart - lastStart) / (20UL));
  lastStart = _cycleStart;

  rxRead();
  checkState();
  armingLoop();
  sensorsRead();
  imuCalculate();
  controllerCalculate();
  mixerCalculate();
  mixerOutput();

  State.CalculationTime = ((ticks() - _cycleStart) / (20UL));


  static uint16_t _t267; for(uint16_t _m = millis(); _m - _t267 >= 25; _t267 = _m)
   menuLoop();


  lvaLoop();
   digitalsLoop();




  debug_output();

 }
}
