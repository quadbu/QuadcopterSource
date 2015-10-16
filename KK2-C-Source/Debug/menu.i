# 1 "../menu/menu.c"
# 1 "D:\\QuadcopterSource\\trunk\\KK2-C-Source\\Debug//"
# 1 "<command-line>"
# 1 "../menu/menu.c"
# 12 "../menu/menu.c"
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
# 13 "../menu/menu.c" 2
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
# 14 "../menu/menu.c" 2
# 1 "../include/keyboard.h" 1
# 17 "../include/keyboard.h"
void keyboardInit();
uint8_t keyboardRead();
uint8_t keyboardState();
# 15 "../menu/menu.c" 2
# 1 "../include/sensors.h" 1
# 14 "../include/sensors.h"
extern int16_t GYRO[3];
extern uint16_t GYRO_raw[3];
extern int16_t ACC[3];
extern uint16_t ACC_raw[3];
extern uint8_t BATT;

void sensorsRead();
void sensorsCalibrate();
# 16 "../menu/menu.c" 2
# 1 "../include/rx.h" 1
# 14 "../include/rx.h"
extern int16_t RX[8];
extern uint16_t RX_raw[8];
extern uint8_t RX_good;
# 30 "../include/rx.h"
void rxInit(uint8_t mode);
void rxRead();
uint8_t rxCalibrate();
# 17 "../menu/menu.c" 2
# 1 "../include/mixer.h" 1
# 18 "../menu/menu.c" 2
# 1 "../include/digitals.h" 1
# 13 "../include/digitals.h"
void digitalsInit();
void digitalsBuzz(uint16_t ms);
void digitalsBuzzBlocking(uint16_t ms);
void digitalsLoop();
void digitalsBuzzInterval(uint16_t ms);
void digitalsLed(uint16_t ms);
void digitalsLedInterval(uint16_t ms);
# 19 "../menu/menu.c" 2

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
# 21 "../menu/menu.c" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\avr\\wdt.h" 1 3
# 22 "../menu/menu.c" 2
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
# 23 "../menu/menu.c" 2
# 1 "../include/controller.h" 1
# 12 "../include/controller.h"
extern int16_t CONTROL[4];

void controllerReset();
void controllerCalculate();
int16_t limit(int16_t value, int16_t low, int16_t high);
# 24 "../menu/menu.c" 2
# 1 "../include/imu.h" 1
# 14 "../include/imu.h"
extern int16_t ANGLE[3];
extern int16_t GYRO_RATE[3];

void imuCalculate();
# 25 "../menu/menu.c" 2

static uint8_t keys;
# 41 "../menu/menu.c"
typedef struct
{
 uint8_t X, Y;
 void *valuePtr;
 int16_t loLimit, hiLimit;
 uint8_t len;
} edit_element_t;

typedef void (pageHandler)(void);

typedef struct
{
 const char *softkeys;
 pageHandler *handler;
 const char *screen;
} page_t;

typedef struct
{
 uint8_t len;
 const char * (*textSelector)(uint8_t);
 uint8_t top;
 uint8_t marked;
} menu_t;




# 1 "../menu/menu_text.h" 1
# 18 "../menu/menu_text.h"
static const char __attribute__((__progmem__)) strSAFE[] = "SAFE";
static const char __attribute__((__progmem__)) strARMED[] = "ARMED";
static const char __attribute__((__progmem__)) strOFF[] = "OFF";
static const char __attribute__((__progmem__)) strON[] = "ON";


static const char __attribute__((__progmem__)) strPIEditor[] = "PI Editor";
static const char __attribute__((__progmem__)) strReceiverTest[] = "Receiver Test";
static const char __attribute__((__progmem__)) strModeSettings[] = "Mode Settings";
static const char __attribute__((__progmem__)) strStickScaling[] = "Stick Scaling";
static const char __attribute__((__progmem__)) strMiscSettings[] = "Misc. Settings";
static const char __attribute__((__progmem__)) strSelflevelSettings[] = "Self-level Settings";
static const char __attribute__((__progmem__)) strCameraStabSerrings[] = "Camera Stab Settings";
static const char __attribute__((__progmem__)) strSensorTest[] = "Sensor Test";
static const char __attribute__((__progmem__)) strSensorCalibration[] = "Sensor Calibration";
static const char __attribute__((__progmem__)) strCPPMSettings[] = "CPPM Settings";
static const char __attribute__((__progmem__)) strESCCalibration[] = "ESC Calibration";
static const char __attribute__((__progmem__)) strRadioCalibration[] = "Stick Centering";
static const char __attribute__((__progmem__)) strMixerEditor[] = "Mixer Editor";
static const char __attribute__((__progmem__)) strShowMotorLayout[] = "Show Model Layout";
static const char __attribute__((__progmem__)) strLoadMotorLayout[] = "Load Model Layout";
static const char __attribute__((__progmem__)) strDebug[] = "Debug";
static const char __attribute__((__progmem__)) strFactoryReset[] = "Factory Reset";


static const char __attribute__((__progmem__)) strSelflevel[] = "Self-level";
static const char __attribute__((__progmem__)) strIofPI[] = "I of PI";
static const char __attribute__((__progmem__)) strSpIsSp[] = " is ";
static const char __attribute__((__progmem__)) strRollAngle[] = "Roll angle:";
static const char __attribute__((__progmem__)) strPitchAngle[] = "Pitch angle:";


static const char __attribute__((__progmem__)) strRollAil[] = "Roll (Aileron)";
static const char __attribute__((__progmem__)) strPitchEle[] = "Pitch (Elevator)";
static const char __attribute__((__progmem__)) strYawRud[] = "Yaw (Rudder)";
static const char __attribute__((__progmem__)) strStick[] = "Stick";
static const char __attribute__((__progmem__)) strAUX[] = "AUX";
static const char __attribute__((__progmem__)) strYes[] = "Yes";
static const char __attribute__((__progmem__)) strNo[] = "No";
static const char __attribute__((__progmem__)) strESC[] = "ESC";
static const char __attribute__((__progmem__)) strServo[] = "Servo";
static const char __attribute__((__progmem__)) strHigh[] = "Hi";
static const char __attribute__((__progmem__)) strLow[] = "Lo";
static const char __attribute__((__progmem__)) strNoSignal[] = "No signal";
static const char __attribute__((__progmem__)) strLeft[] = "Left";
static const char __attribute__((__progmem__)) strRight[] = "Right";
static const char __attribute__((__progmem__)) strBack[] = "Back";
static const char __attribute__((__progmem__)) strForward[] = "Frwrd";
static const char __attribute__((__progmem__)) strIdle[] = "Idle";
static const char __attribute__((__progmem__)) strFull[] = "Full";
static const char __attribute__((__progmem__)) strOn[] = "On";
static const char __attribute__((__progmem__)) strOff[] = "Off";
static const char __attribute__((__progmem__)) strOK[] = "OK";
static const char __attribute__((__progmem__)) strNot[] = "Not";
static const char __attribute__((__progmem__)) strBattery[] = "Battery:";
static const char __attribute__((__progmem__)) strError[] = "Error:";

static const char __attribute__((__progmem__)) strRoll[] = "Roll";
static const char __attribute__((__progmem__)) strPitch[] = "Pitch";
static const char __attribute__((__progmem__)) strYaw[] = "Yaw";
static const char __attribute__((__progmem__)) strThro[] = "Thro";

static const char __attribute__((__progmem__)) strWait[] = "Waiting";
static const char __attribute__((__progmem__)) strSec[] = "sec";
static const char __attribute__((__progmem__)) strCalSucc[] = "Calibration succeeded";
static const char __attribute__((__progmem__)) strAreYouSure[] = "Are you sure?";

static const char __attribute__((__progmem__)) strMotor[] = "Motor:";
static const char __attribute__((__progmem__)) strOutput[] = "Output:";
static const char __attribute__((__progmem__)) strDirSeen[] = "Direction\nseen from\nabove:";
static const char __attribute__((__progmem__)) strCW[] = "CW";
static const char __attribute__((__progmem__)) strCCW[] = "CCW";
static const char __attribute__((__progmem__)) strALL[] = "ALL";
static const char __attribute__((__progmem__)) strUnused[] = "Unused.";

static const char __attribute__((__progmem__)) strSensorNotCal[] = "no calibration";
# 70 "../menu/menu.c" 2
# 1 "../menu/menu_screen.h" 1
# 18 "../menu/menu_screen.h"
static const char __attribute__((__progmem__)) scrStart[] =
 "Self-level is\n"
 "\n"
 "Battery:\n"
 "Roll angle:\n"
 "Pitch angle:";

static const char __attribute__((__progmem__)) scrPIEditor[] =
 "Axis:\n"
 "\n"
 "P Gain:\n"
 "P Limit:\n"
 "I Gain:\n"
 "I Limit:";

static const char __attribute__((__progmem__)) scrReceiverTest[] =
 "Aileron:\n"
 "Elevator:\n"
 "Rudder:\n"
 "Throttle:\n"
 "Aux1:\n"
 "Aux2:";

static const char __attribute__((__progmem__)) scrSensorTest[] =
 "Gyro X:\n"
 "Gyro Y:\n"
 "Gyro Z:\n"
 "Acc  X:\n"
 "Acc  Y:\n"
 "Acc  Z:\n"
 "Batt:";

static const char __attribute__((__progmem__)) scrModeSettings[] =
 "Self-Level:\n"
 "Arming:\n"
 "Link Roll Pitch:\n"
 "Auto Disarm:\n"
 "CPPM Enabled:";

static const char __attribute__((__progmem__)) scrStickScaling[] =
 "Stick Scaling\n"
 "\n"
 "Roll (Ail):\n"
 "Pitch (Ele):\n"
 "Yaw (Rud):\n"
 "Throttle:";

static const char __attribute__((__progmem__)) scrMiscSettings[] =
 "Minimum throttle:\n"
 "Height Dampening:\n"
 "Height D. Limit:\n"
 "Alarm 1/10 volts:\n"
 "Servo filter:";

static const char __attribute__((__progmem__)) scrSelflevelSettings[] =
 "P Gain:\n"
 "P Limit:\n"
 "\n"
 "Acc Trim Roll:\n"
 "Acc Trim Pitch:";

static const char __attribute__((__progmem__)) scrCameraStabSettings[] =
 "Camera Stab Setup\n"
 "\n"
 "Roll gain:\n"
 "Roll offset:\n"
 "Pitch gain:\n"
 "Pitch offset:\n";

static const char __attribute__((__progmem__)) scrCPPMSettings1[] =
 "Roll (Ail):\n"
 "Pitch (Ele):\n"
 "Yaw (Rud):\n"
 "Throttle:";

static const char __attribute__((__progmem__)) scrCPPMSettings2[] =
 "Aux1:\n"
 "Aux2:\n"
 "Aux3:\n"
 "Aux4:";

static const char __attribute__((__progmem__)) scrSensorCal0[] =
 "Place the aircraft on\n"
 "a level surface and\n"
 "press CONTINUE.\n"
 "The FC will then wait\n"
 "5 sec to let the\n"
 "aircraft settle down.";
static const char __attribute__((__progmem__)) scrSensorCal1[] =
 "Calibration failed.\n"
 "\n"
 "Make sure the air-\n"
 "craft is level and\n"
 "stationary, and try\n"
 "again.";

static const char __attribute__((__progmem__)) scrESCCal0[] =
 "1 TAKE OFF THE\n"
 "  PROPELLERS!!\n"
 "2 Check the throttle\n"
 "  direction in the\n"
 "  receiver test menu.\n"
 "  Reverse if\n"
 "  necessary.";
static const char __attribute__((__progmem__)) scrESCCal1[] =
 "3 Memorize the rest\n"
 "  of the instructions\n"
 "  because the next\n"
 "  step is to turn off\n"
 "  the power.\n"
 "4 Turn off the power.\n"
 "5 Turn on the radio.";
static const char __attribute__((__progmem__)) scrESCCal2[] =
 "6 Set the throttle to\n"
 "  full.\n"
 "7 Press down buttons\n"
 "  1 and 4 and keep\n"
 "  them down until the\n"
 "  last step.\n"
 "8 Turn on power.";
static const char __attribute__((__progmem__)) scrESCCal3[] =
 "9 Wait for the ESCs\n"
 "  full-throttle cali-\n"
 "  bration sound.\n"
 "10 Set the throttle\n"
 "  to idle.\n"
 "11 Wait for the idle";
static const char __attribute__((__progmem__)) scrESCCal4[] =
 "  calibration sound.\n"
 "12 Release the\n"
 "  buttons.\n"
 "13 Check if the mot-\n"
 "  ors start at the\n"
 "  same time. If not,\n"
 "  adjust the";
static const char __attribute__((__progmem__)) scrESCCal5[] =
 "  'Minimum throttle'\n"
 "  in the 'Misc. Set-\n"
 "  tings menu.\n"
 "\n"
 "  You are now done!";

static const char* const scrESCCal[] __attribute__((__progmem__)) =
 {
  scrESCCal0,
  scrESCCal1,
  scrESCCal2,
  scrESCCal3,
  scrESCCal4,
  scrESCCal5,
 };

static const char __attribute__((__progmem__)) scrRadioCal0[] =
 "Release sticks on the\n"
 "transmitter and set \n"
 "throttle to idle.\n"
 "\n"
 "Press CONTINUE to\n"
 "calibrate.";

static const char __attribute__((__progmem__)) scrRadioCal1[] =
 "\n"
 "Check the correct\n"
 "signals from\n"
 "receiver.\n"
 "One or more signals\n"
 "are missing.";

static const char __attribute__((__progmem__)) scrRadioCal2[] =
 "Calibration failed.\n"
 "\n"
 "Make sure the sticks\n"
 "are released and\n"
 "throttle is idle.";

static const char __attribute__((__progmem__)) scrMixerEditor[] =
 "Throttle:       Ch:\n"
 "Aileron:\n"
 "Elevator:\n"
 "Rudder:\n"
 "Offset:\n"
 "Type:       Rate:";

static const char __attribute__((__progmem__)) scrDebug[] =
 "MixerIndex:\n"
 "Channel0:\n"
 "Channel1:\n"
 "Channel2:\n"
 "Channel3:";
# 71 "../menu/menu.c" 2


static void _hStart();
static void _hMenu();
static void _hReceiverTest();
static void _hSensorTest();
static void _hSensorCalibration();
static void _hESCCalibration();
static void _hStickCentering();
static void _hStickScaling();
static void _hShowModelLayout();
static void _hLoadModelLayout();
static void _hFactoryReset();
static void _hPIEditor();
static void _hMiscSettings();
static void _hSelflevelSettings();
static void _hCameraStabSettings();
static void _hCPPMSettings();
static void _hModeSettings();
static void _hMixerEditor();


static void _hDebug();




static const char __attribute__((__progmem__)) _skSTART[] = "                 MENU";
static const char __attribute__((__progmem__)) _skMENU[] = "BACK  UP   DOWN ENTER";
static const char __attribute__((__progmem__)) _skBACK[] = "BACK";
static const char __attribute__((__progmem__)) _skCONTINUE[] = "BACK         CONTINUE";
static const char __attribute__((__progmem__)) _skCANCELYES[] = "CANCEL            YES";
static const char __attribute__((__progmem__)) _skPAGE[] = "BACK PREV NEXT CHANGE";
static const char __attribute__((__progmem__)) _skEDIT[] = "CLR  DOWN   UP   DONE";
static const char __attribute__((__progmem__)) _skBACKNEXT[] = "BACK  NEXT";
static const char __attribute__((__progmem__)) _skCANCEL[] = "CANCEL";


static const page_t pages[] __attribute__((__progmem__)) = {
         { _skSTART, _hStart },
         { _skMENU, _hMenu },
         { _skPAGE, _hPIEditor, scrPIEditor},
         { _skBACK, _hReceiverTest, scrReceiverTest},
         { _skPAGE, _hModeSettings, scrModeSettings},
         { _skPAGE, _hStickScaling, scrStickScaling},
         { _skPAGE, _hMiscSettings, scrMiscSettings},
         { _skPAGE, _hSelflevelSettings, scrSelflevelSettings},
            { _skPAGE, _hCameraStabSettings, scrCameraStabSettings},
         { _skBACK, _hSensorTest, scrSensorTest},
         { _skCONTINUE, _hSensorCalibration, scrSensorCal0},
         { _skCONTINUE, _hESCCalibration, scrESCCal0},
         { _skPAGE, _hCPPMSettings },
         { _skCONTINUE, _hStickCentering},
         { _skPAGE, _hMixerEditor, scrMixerEditor},
         { _skBACKNEXT, _hShowModelLayout},
         { _skMENU, _hLoadModelLayout },
         { _skCANCELYES, _hFactoryReset },

         { _skBACK, _hDebug, scrDebug },

};

static const char* const lstMenu[] __attribute__((__progmem__)) = {
 strPIEditor,
 strReceiverTest,
 strModeSettings,
 strStickScaling,
 strMiscSettings,
 strSelflevelSettings,
 strCameraStabSerrings,
 strSensorTest,
 strSensorCalibration,
 strESCCalibration,
 strCPPMSettings,
 strRadioCalibration,
 strMixerEditor,
 strShowMotorLayout,
 strLoadMotorLayout,
 strFactoryReset,

 strDebug,

};





static const char * tsmMain(uint8_t);
static const char * tsmLoadModelLayout(uint8_t);

uint8_t menuPage;
static uint8_t elementIndex, subpage;
static uint16_t _tStart;
static page_t currentPage;
static menu_t mnuMain = {(sizeof(lstMenu)/sizeof(*lstMenu)), tsmMain};
static menu_t mnuMLayout = {22, tsmLoadModelLayout};
static int16_t editValue, editLoLimit, editHiLimit, editInitialValue;
static uint8_t editMode, editValueType;
static void* editValuePtr;





static void writeSpace(int8_t len)
{
 for (int8_t i = 0; i < len; i++)
  lcdWriteChar(32);
}

static void writePadded(char *s, uint8_t len)
{
 lcdWriteString(s);
 writeSpace(len - strlen(s));
}

static void writePadded_P(const char *s, uint8_t len)
{
 lcdWriteString_P(s);
 writeSpace(len - strlen_P(s));
}

static void writeSoftkeys(const char* sk)
{
 if (!sk)
  sk = currentPage.softkeys;
 if (sk)
 {
  lcdSetPos(7, 0);
  writePadded_P(sk, 21);
 }
}

static void writeString_P(uint8_t x, uint8_t y, const char * str, uint8_t len, uint8_t index)
{
 lcdReverse(index == elementIndex);
 lcdSetPos(x, y);
 writePadded_P(str, len);
 lcdReverse(0);
}

static void writeValue(uint8_t x, uint8_t y, int16_t value, uint8_t len, uint8_t index)
{
 char s[7];
 itoa(value, s, 10);
 lcdReverse(index == elementIndex);
 lcdSetPos(x, y);
 writePadded(s, len);
 lcdReverse(0);
}

static void loadPage(uint8_t pageIndex)
{
 memcpy_P(&currentPage, &pages[pageIndex], sizeof(currentPage));
 menuPage = pageIndex;
 keys = 4;
 elementIndex = 0;
 subpage = 0;
}

static void elementKey(uint8_t num)
{
 if ((keys & (1 << (6))))
  elementIndex = elementIndex == 0 ? num - 1 : elementIndex - 1;
 else if ((keys & (1 << (5))))
  elementIndex = (elementIndex + 1) % num;
}

static void editModeHandler();
static void defaultHandler()
{
 if (editMode)
  editModeHandler();
 else
 {
  if ((keys & 1) | (keys & 2))
  {
   lcdClear();
   if (currentPage.screen)
    lcdWriteString_P(currentPage.screen);
   writeSoftkeys(((void *)0));
   lcdSetPos(0, 0);
  }

  if (currentPage.handler)
   currentPage.handler();

 }
}

static void editModeHandler()
{
 if ((keys & (1 << (4))))
 {
  editMode = 0;

  if (editValueType == 0)
   *(uint8_t*)editValuePtr = editValue;
  else if (editValueType == 1)
   *(int8_t*)editValuePtr = editValue;


  lcdSelectFont(((void *)0));
  keys = 2;

  defaultHandler();
  return;
 }
 if ((keys))
 {
  if ((keys & (1 << (6))))
  {
   if (editValue > editLoLimit)
    editValue--;
  }
  else if ((keys & (1 << (5))))
  {
   if (editValue < editHiLimit)
    editValue++;
  }
  else if ((keys & (1 << (7))))
   editValue = editInitialValue;

  writeValue(2, 34, editValue, 5, -1);
 }
}

static void startEditMode(void* valuePtr, int16_t loLimit, int16_t hiLimit, uint8_t valueType)
{
 editMode = 1;
 keys = 1;
 editValuePtr = valuePtr;
 editValueType = valueType;

 if (valueType == 0)
  editValue = *(uint8_t*)valuePtr;
 else if (valueType == 1)
  editValue = *(int8_t*)valuePtr;



 editLoLimit = loLimit;
 editHiLimit = hiLimit;
 editInitialValue = editValue;

 lcdFillRectangle(30, 11, 98, 34, 0);
 lcdRectangle(30, 11, 98, 34, 1);
 lcdRectangle(31, 12, 97, 33, 1);
 writeSoftkeys(_skEDIT);
 lcdSelectFont(&font12x16);
 editModeHandler();
}

static uint8_t doMenu(menu_t *menu)
{
 if (!keys) return 0;


 if ((keys & (1 << (6))))
 {
  if (menu->marked > 0)
   menu->marked--;
 }
 else if ((keys & (1 << (5))))
 {
  if (menu->marked < menu->len - 1)
   menu->marked++;
 }
 else if ((keys & (1 << (4))))
  return 1;

 if (menu->marked < menu->top)
  menu->top = menu->marked;
 else if (menu->marked - menu->top >= 5)
  menu->top = menu->marked - 4;


 lcdSetPos(0, 58);
 lcdReverse(menu->top == 0);
 lcdWriteGlyph_P(&glyArrowUp, 1);


 for (uint8_t i = 0; i < 5 && i < menu->len; i++)
 {
  lcdSetPos(i + 1, 0);
  const char * item = menu->textSelector(menu->top + i);
  lcdReverse(menu->top + i == menu->marked);
  writePadded_P(item, 21);
 }


 lcdSetPos(6, 58);
 lcdReverse(menu->top >= menu->len - 5);
 lcdWriteGlyph_P(&glyArrowDown, 1);

 return 0;
}

void _hMenu()
{
 if (doMenu(&mnuMain))
  loadPage(mnuMain.marked + 2);
}




static void showMotor(uint8_t motor, uint8_t withDir)
{
 uint8_t x, y;
 mixer_channel_t *channel = &Config.Mixer[motor];

 if (channel->IsMotor)
 {
  x = 96 + (channel->Aileron / 4);
  y = 32 - (channel->Elevator / 4);

  lcdLine(x, y, 96, 32);
  lcdXY(96 - 2, 32 - 2);
  lcdWriteGlyph_P(&glyFC, 0);
  lcdXY(x - 4, y - 4);
  lcdWriteGlyph_P(&glyBall, 1);
  lcdXY(x - 4, y - 7);
  if (channel->Rudder >= 0)
   lcdWriteGlyph_P(&glyDirCW, 1);
  else
   lcdWriteGlyph_P(&glyDirCCW, 1);

  lcdXY(x - 2, y - 2);
  lcdReverse(1);
  lcdSelectFont(&font4x6);
  lcdWriteChar(motor + '1');
  lcdSelectFont(((void *)0));
  lcdReverse(0);

  if (withDir)
  {
   lcdSetPos(2, 0);
   lcdWriteString_P(strDirSeen);
   lcdSetPos(5, 0);
   if (channel->Rudder >= 0)
    lcdWriteString_P(strCW);
   else
    lcdWriteString_P(strCCW);
  }
 }
 else if (withDir)
 {
  lcdSetPos(3, 64);
  if (channel->IsServo)
   lcdWriteString_P(strServo);
  else
   lcdWriteString_P(strUnused);
 }
}

static void _hShowModelLayout()
{
 if ((keys))
 {
  if ((keys & (1 << (6))))
   elementIndex = (elementIndex + 1) % 9;

  lcdClear();
  writeSoftkeys(((void *)0));
  lcdSetPos(0, 0);
  lcdWriteString_P(strOutput);
  lcdWriteChar(32);
  if (elementIndex == 0)
  {
   lcdWriteString_P(strALL);
   for (uint8_t i = 0; i < 8; i++)
    showMotor(i, 0);
  }
  else
  {
   lcdWriteChar(elementIndex + '0');
   showMotor(elementIndex - 1, 1);
  }
 }
}

static void _hLoadModelLayout()
{
 if ((keys & 1))
  mnuMLayout.marked = Config.MixerIndex;

 if (elementIndex == 0)
 {
  if (doMenu(&mnuMLayout))
  {
   lcdClear();
   lcdSetPos(3, 18);
   lcdWriteString_P(strAreYouSure);
   writeSoftkeys(_skCANCELYES);
   elementIndex = 1;
  }
 }
 else if ((keys & (1 << (4))))
 {
  mixerLoadModel(mnuMLayout.marked);

  loadPage(15);
 }
}

static void _hStart()
{
 char s[7];
 if ((keys & (1 << (4))))
 {
  arm(0);
  loadPage(1);
  return;
 }

 if ((keys & 1) || (keys & 2))
 {
  if (Config.ArmingMode)
   arm(1);

  if (State.Armed)
  {
   lcdSetPos(3, 36);
   lcdSelectFont(&font12x16);
   lcdWriteString_P(strARMED);
   lcdSelectFont(((void *)0));
   return;
  }
  else
  {
   lcdSetPos(0, 36);
   lcdSelectFont(&font12x16);
   lcdWriteString_P(strSAFE);
   lcdSelectFont(((void *)0));
   lcdSetPos(2, 0);
   lcdWriteString_P(scrStart);
  }
 }

 if (!State.Armed)
 {
  lcdSetPos(2, 84);
  if (State.SelfLevel)
   writePadded_P(strON, 3);
  else
   writePadded_P(strOFF, 3);

  lcdSetPos(3, 0);
  if (State.Error)
  {
   lcdWriteString_P(strError);
   lcdWriteChar(32);
   if (State.Error & 0x80)
    lcdWriteString_P(strSensorNotCal);
   else
   {
    lcdWriteString_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("no "); &__c[0];})));
    const char* s;
    if ((State.Error & (0x01 | 0x02 | 0x04 | 0x08)) == (0x01 | 0x02 | 0x04 | 0x08))
     s = (__extension__({static const char __c[] __attribute__((__progmem__)) = ("RX"); &__c[0];}));
    else if (State.Error & 0x01)
     s = strRoll;
    else if (State.Error & 0x02)
     s = strPitch;
    else if (State.Error & 0x04)
     s = strYaw;
    else
     s = strThro;
    lcdWriteString_P(s);
    lcdWriteString_P((__extension__({static const char __c[] __attribute__((__progmem__)) = (" input"); &__c[0];})));
   }
  }
  else
   lcdWriteString_P((__extension__({static const char __c[] __attribute__((__progmem__)) = ("Ready for departure!"); &__c[0];})));


  lcdSetPos(4, 13*6);
  utoa(BATT / 10, s, 10);
  lcdWriteString(s);
  lcdWriteChar('.');
  utoa(BATT % 10, s, 10);
  writePadded(s, 3);


  writeValue(5, 13*6, (int16_t)ANGLE[0] >> 8, 7, -1);


  writeValue(6, 13*6, (int16_t)ANGLE[1] >> 8, 7, -1);
 }
}

static void _hSensorTest()
{
 for (uint8_t i = 0; i < 3; i++)
 {
  writeValue(i, 48, GYRO[i], 5, -1);
  writeValue(i + 3, 48, ACC[i], 5, -1);
 }
 writeValue(6, 48, BATT, 5, -1);
}

static void _hReceiverTest()
{
 static const char* const info[6][2] __attribute__((__progmem__)) = {
  { strLeft, strRight },
  { strForward, strBack },
  { strRight, strLeft },
  { strIdle, strFull },
  { strOff, strOn },
  { strOff, strOn },
 };

 for (uint8_t i = 0; i < 6; i++)
 {
  if (RX_good & (1 << (i)))
  {
   writeValue(i, 66, RX[i], 4, -1);
   lcdSetPos(i, 96);
   if (i == 3)
   {
    if (State.ThrottleOff)
     writePadded_P(strIdle, 5);
    else if (RX[3] >= 50)
     writePadded_P(strFull, 5);
    else
     writeSpace(5);
   }
   else
   {
    if (__builtin_abs(RX[i]) > (50 / 2))
     writePadded_P((const char *)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&info[i][RX[i] > 0])); uint16_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; })), 5);
    else
     writeSpace(5);
   }
  }
  else
  {
   lcdSetPos(i, 66);
   lcdWriteString_P(strNoSignal);
  }
 }
}

static void _hSensorCalibration()
{
 if (elementIndex == 0)
 {
  if ((keys & (1 << (4))))
  {
   elementIndex = 1;
   lcdClear();
   lcdSetPos(3, 18);
   lcdWriteString_P(strWait);
   lcdSetPos(3, 78);
   lcdWriteString_P(strSec);
   writeSoftkeys(_skCANCEL);
   _tStart = millis();
  }
 }
 else if (elementIndex == 1)
 {
  lcdSetPos(3, 66);
  uint8_t sec = (millis() - _tStart) / 1000;
  lcdWriteChar((5-sec) + 48);
  if (sec >= 5)
  {
   sensorsCalibrate();
   configSave();
   lcdSetPos(3, 0);
   lcdWriteString_P(strCalSucc);
   writeSoftkeys(((void *)0));
   elementIndex = 2;
  }
 }
 else if ((keys & (1 << (4))))
  loadPage(1);
}

static void _hESCCalibration()
{
 if ((keys))
 {
  if (elementIndex >= (sizeof(scrESCCal)/sizeof(*scrESCCal)))
   loadPage(1);
  else
  {
   lcdClear();
   const char * s = (const char *)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&scrESCCal[elementIndex])); uint16_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }));
   lcdWriteString_P(s);
   writeSoftkeys(((void *)0));
   elementIndex++;
  }
 }
}

static void _hStickCentering()
{
 if ((keys & 1))
 {
  if ((RX_good & 0x0F) != 0x0F)
  {
   lcdWriteString_P(scrRadioCal1);
   elementIndex = 1;
   writeSoftkeys(_skBACK);
  }
  else
   lcdWriteString_P(scrRadioCal0);
 }

 if (elementIndex == 0)
 {
  if ((keys & (1 << (4))))
  {
   lcdClear();
   if (rxCalibrate())
   {
    configSave();
    lcdSetPos(3, 0);
    lcdWriteString_P(strCalSucc);
   }
   else
    lcdWriteString_P(scrRadioCal2);

   writeSoftkeys(((void *)0));
   elementIndex = 1;
  }
 }
 else if ((keys & (1 << (4))))
  loadPage(1);
}


static void _hDebug()
{
 writeValue(0, 66, Config.MixerIndex, 2, -1);
 writeValue(1, 66, CONTROL[0], 6, -1);
 writeValue(2, 66, CONTROL[1], 6, -1);
 writeValue(3, 66, CONTROL[2], 6, -1);
 writeValue(4, 66, CONTROL[3], 6, -1);
}


static void _hFactoryReset()
{
 if ((keys & 1))
 {
  lcdSetPos(3, 18);
  lcdWriteString_P(strAreYouSure);
 }
 else if ((keys & (1 << (4))))
 {
  configReset();
  configSave();


  __asm__ __volatile__ ("cli" ::: "memory");
  __asm__ __volatile__ ( "in __tmp_reg__,__SREG__" "\n\t" "cli" "\n\t" "wdr" "\n\t" "sts %0,%1" "\n\t" "out __SREG__,__tmp_reg__" "\n\t" "sts %0,%2" "\n\t" : : "M" (((uint16_t) &((*(volatile uint8_t *)(0x60))))), "r" ((1 << (4)) | (1 << (3))), "r" ((uint8_t) ((0 & 0x08 ? (1 << (5)) : 0x00) | (1 << (3)) | (0 & 0x07)) ) : "r0" );
  for(;;);
 }
}

static void _hModeSettings()
{
 {if (!keys) return;};
 elementKey(5);
 if ((keys & (1 << (4))))
 {
  if (elementIndex == 0) Config.SelfLevelMode = (Config.SelfLevelMode + 1) % 3;
  else if (elementIndex == 1) Config.ArmingMode = !Config.ArmingMode;
  else if (elementIndex == 2) Config.LinkRollPitch = !Config.LinkRollPitch;
  else if (elementIndex == 3) Config.AutoDisarm = !Config.AutoDisarm;
  else Config.ReceiverMode = !Config.ReceiverMode; rxInit(Config.ReceiverMode);

 }

 const char* str;
 if (Config.SelfLevelMode == 2) str = strOn;
 else if (Config.SelfLevelMode == 1) str = strAUX;
 else str = strStick;

 writeString_P(0, 84, str, 5, 0);
 writeString_P(1, 84, Config.ArmingMode ? strOn : strStick, 5, 1);
 writeString_P(2, 102, Config.LinkRollPitch ? strYes : strNo, 3, 2);
 writeString_P(3, 84, Config.AutoDisarm ? strYes : strNo, 3, 3);
 writeString_P(4, 84, Config.ReceiverMode ? strYes : strNo, 3, 4);
}

static void _hPIEditor()
{
 {if (!keys) return;};

 elementKey(5);

 uint8_t index = subpage;
 if (Config.LinkRollPitch) index = subpage & 0xFE;

 if ((keys & (1 << (4))))
 {
  if (elementIndex == 0)
  {
   subpage = (subpage + 1) % 3;
   index = subpage;
   if (Config.LinkRollPitch) index = subpage & 0xFE;
  }
  else
  {
   startEditMode(&Config.PID[index].UI8[elementIndex - 1], 0, 200, 0);
   return;
  }
 }

 lcdSetPos(0, 30);
 lcdReverse(elementIndex == 0);
 switch (subpage)
 {
  case 0: writePadded_P(strRollAil, 16); break;
  case 1: writePadded_P(strPitchEle, 16); break;
  default: writePadded_P(strYawRud, 16); break;
 }

 for (uint8_t i = 0; i < 4; i++)
  writeValue(i + 2, 60, Config.PID[index].UI8[i], 5, i + 1);
}

static void _hMixerEditor()
{
 {if (!keys) return;};

 if ((keys & (1 << (4))))
 {
  if (elementIndex == 0)
   subpage = (subpage + 1) % (sizeof(Config.Mixer)/sizeof(*Config.Mixer));
  else if (elementIndex <= 5)
  {
   startEditMode(&Config.Mixer[subpage].I8[elementIndex - 1], -127, 127, 1);
   return;
  }
  else if (elementIndex == 6)
  {
   if (Config.Mixer[subpage].Flags == 0)
    Config.Mixer[subpage].Flags = 1 | 4;
   else if (Config.Mixer[subpage].IsMotor)
    Config.Mixer[subpage].Flags = 2;
   else
    Config.Mixer[subpage].Flags = 0;
  }
  else
   Config.Mixer[subpage].Flags ^= 4;
 }

 elementKey(8);
 writeValue(0, 120, subpage + 1, 1, 0);
 for (uint8_t i = 0; i < 5; i++)
  writeValue(i, 60, Config.Mixer[subpage].I8[i], 4, i + 1);
 const char *s;

 if (Config.Mixer[subpage].IsMotor)
  s = strESC;
 else if (Config.Mixer[subpage].IsServo)
  s = strServo;
 else
  s = strOff;

 writeString_P(5, 36, s, 5, 6);
 writeString_P(5, 108, Config.Mixer[subpage].IsMotor || Config.Mixer[subpage].IsHiRate ? strHigh : strLow, 3, 7);
}

static void simplePageHandler(const edit_element_t *elements, uint8_t len)
{
 {if (!keys) return;};
 edit_element_t element;
 elementKey(len);
 if ((keys & (1 << (4))))
 {
  memcpy_P(&element, &elements[elementIndex], sizeof(element));
  startEditMode(element.valuePtr, element.loLimit, element.hiLimit, 0);
  return;
 }
 for (uint8_t i = 0; i < len; i++)
 {
  memcpy_P(&element, &elements[i], sizeof(element));
  writeValue(element.X, element.Y, *(uint8_t*)element.valuePtr, element.len, i);
 }
}

static void _hStickScaling()
{
 static edit_element_t const elements[] __attribute__((__progmem__)) = {
  { 2, 78, &Config.StickScaling[0], 0, 200, 5 },
  { 3, 78, &Config.StickScaling[1], 0, 200, 5 },
  { 4, 78, &Config.StickScaling[2], 0, 200, 5 },
  { 5, 78, &Config.StickScaling[3], 0, 200, 5 },
 };
 simplePageHandler(elements, (sizeof(elements)/sizeof(*elements)));
}

static void _hMiscSettings()
{
 static edit_element_t const elements[] __attribute__((__progmem__)) = {
  { 0, 102, &Config.MinThrottle, 0, 20, 4 },
  { 1, 102, &Config.HeightDampening, 0, 250, 4 },
  { 2, 102, &Config.HeightDampeningLimit, 0, 30, 4 },
  { 3, 102, &Config.LVA, 0, 250, 4 },
  { 4, 102, &Config.ServoFilter, 0, 100, 4 },
 };
 simplePageHandler(elements, (sizeof(elements)/sizeof(*elements)));
}

static void _hSelflevelSettings()
{
 static edit_element_t const elements[] __attribute__((__progmem__)) = {
  { 0, 54, &Config.PID_SelfLevel.PGain, 0, 250, 5 },
  { 1, 54, &Config.PID_SelfLevel.PLimit, 0, 250, 5 },
  { 3, 96, &Config.AccTrim[0], -45, 45, 5 },
  { 4, 96, &Config.AccTrim[1], -45, 45, 5 },
 };
 simplePageHandler(elements, (sizeof(elements)/sizeof(*elements)));
}

static void _hCameraStabSettings()
{
 static edit_element_t const elements[] __attribute__((__progmem__)) = {
  { 2, 84, &Config.Camera.RollGain, -128, 127, 5 },
  { 3, 84, &Config.Camera.RollOffset, -128, 127, 5 },
  { 4, 84, &Config.Camera.PitchGain, -128, 127, 5 },
  { 5, 84, &Config.Camera.PitchOffset, -128, 127, 5 },
 };
 simplePageHandler(elements, (sizeof(elements)/sizeof(*elements)));
}

static void writeCPPMScreen(uint8_t index)
{
 lcdClear();
 lcdWriteString_P(strCPPMSettings);
 lcdSetPos(2, 0);
 if (index == 0)
  lcdWriteString_P(scrCPPMSettings1);
 else
  lcdWriteString_P(scrCPPMSettings2);
 writeSoftkeys(((void *)0));
}

static void _hCPPMSettings()
{
 {if (!keys) return;};
 uint8_t oldsubpage = elementIndex / 4;
 elementKey(8);
 uint8_t subpage = elementIndex / 4;

 if ((keys & 1) || (keys & 2) || oldsubpage != subpage)
  writeCPPMScreen(subpage);

 if ((keys & (1 << (4))))
 {
  startEditMode(&Config.RX_chmap[subpage * 4 + elementIndex - 1], 1, 8, 0);
  return;
 }

 for (int i = 0; i < 4; i++)
  writeValue(2 + i, 13*6, Config.RX_chmap[subpage * 4 + i], 1, i + subpage * 4);
}

void menuLoop()
{
 if (keys == 0)
  keys = keyboardRead();

 if ((keys & (1 << (7))) && !editMode)
 {
  if (menuPage > 1)
   loadPage(1);
  else if (menuPage == 1)
  {
   configSave();
   loadPage(0);
  }
 }

 if ((keys & 4))
  keys = 1;
 defaultHandler();
 keys &= 4;
}

void menuInit()
{
 loadPage(0);
}

void menuRefresh()
{
 keys |= 2;
 menuLoop();
}

static const char * tsmMain(uint8_t index)
{
 return (const char *)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&lstMenu[index])); uint16_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }));
}

static const char * tsmLoadModelLayout(uint8_t index)
{
 model_t model;
 model_t* pmodel = (model_t*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&modelTable[index])); uint16_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }));
 memcpy_P(&model, pmodel, sizeof(model));
 return (const char *)model.Name;
}
