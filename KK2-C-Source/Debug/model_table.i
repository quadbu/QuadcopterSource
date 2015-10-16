# 1 "../src/model_table.c"
# 1 "D:\\QuadcopterSource\\trunk\\KK2-C-Source\\Debug//"
# 1 "<command-line>"
# 1 "../src/model_table.c"
# 15 "../src/model_table.c"
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
# 16 "../src/model_table.c" 2
# 1 "../include/mixer.h" 1
# 17 "../src/model_table.c" 2
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
# 18 "../src/model_table.c" 2






static const char __attribute__((__progmem__)) strModel01[] = "SingleCopter 2M 2S";
static const char __attribute__((__progmem__)) strModel02[] = "SingleCopter 1M 4S";
static const char __attribute__((__progmem__)) strModel03[] = "DualCopter";
static const char __attribute__((__progmem__)) strModel04[] = "TriCopter";
static const char __attribute__((__progmem__)) strModel05[] = "Y6";
static const char __attribute__((__progmem__)) strModel06[] = "QuadroCopter +";
static const char __attribute__((__progmem__)) strModel07[] = "QuadroCopter x";
static const char __attribute__((__progmem__)) strModel08[] = "X8 +";
static const char __attribute__((__progmem__)) strModel09[] = "X8 x";
static const char __attribute__((__progmem__)) strModel10[] = "HexaCopter +";
static const char __attribute__((__progmem__)) strModel11[] = "HexaCopter x";
static const char __attribute__((__progmem__)) strModel12[] = "OctoCopter +";
static const char __attribute__((__progmem__)) strModel13[] = "OctoCopter x";
static const char __attribute__((__progmem__)) strModel14[] = "H6";
static const char __attribute__((__progmem__)) strModel15[] = "H8";
static const char __attribute__((__progmem__)) strModel16[] = "V6";
static const char __attribute__((__progmem__)) strModel17[] = "V8";
static const char __attribute__((__progmem__)) strModel18[] = "Airplane 1S Ail";
static const char __attribute__((__progmem__)) strModel19[] = "Airplane 2S Ail";
static const char __attribute__((__progmem__)) strModel20[] = "Flying Wing";
static const char __attribute__((__progmem__)) strModel21[] = "Y4";
static const char __attribute__((__progmem__)) strModel22[] = "V-Tail";




static const model_t model01 __attribute__((__progmem__)) =
{
    strModel01, 4,
    {

        {{ 100, 0, 0, 100, 0, 1 }},
        {{ 100, 0, 0, -100, 0, 1 }},
        {{ 0, 100, 0, 0, 0, 2 }},
        {{ 0, 0, 100, 0, 0, 2 }},
    }
};


static const model_t model02 __attribute__((__progmem__)) =
{
    strModel02, 5,
    {

        {{ 100, 0, 0, 0, 0, 1 }},
        {{ 0, 100, 0, 100, 0, 2 }},
        {{ 0, 0, 100, 100, 0, 2 }},
        {{ 0, -100, 0, 100, 0, 2 }},
        {{ 0, 0, -100, 100, 0, 2 }},
    }
};


static const model_t model03 __attribute__((__progmem__)) =
{
    strModel03, 4,
    {

        {{ 100, 100, 0, 0, 0, 1 }},
        {{ 100, -100, 0, 0, 0, 1 }},
        {{ 0, 0, 100, 100, 0, 2 }},
        {{ 0, 0, -100, 100, 0, 2 }},
    }
};


static const model_t model04 __attribute__((__progmem__)) =
{
    strModel04, 4,
    {

        {{ 100, -87, 50, 0, 0, 1 }},
        {{ 100, 87, 50, 0, 0, 1 }},
        {{ 100, 0, -100, 0, 0, 1 }},
        {{ 0, 0, 0, 100, 0, 2 }},
    }
};


static const model_t model05 __attribute__((__progmem__)) =
{
    strModel05, 6,
    {

        {{ 100, -87, 50, 100, 0, 1 }},
        {{ 100, -87, 50, -100, 0, 1 }},
        {{ 100, 87, 50, 100, 0, 1 }},
        {{ 100, 87, 50, -100, 0, 1 }},
        {{ 100, 0, -100, 100, 0, 1 }},
        {{ 100, 0, -100, -100, 0, 1 }},
    }
};


static const model_t model06 __attribute__((__progmem__)) =
{
    strModel06, 4,
    {

        {{ 100, 0, 100, 100, 0, 1 }},
        {{ 100, 100, 0, -100, 0, 1 }},
        {{ 100, 0, -100, 100, 0, 1 }},
        {{ 100, -100, 0, -100, 0, 1 }},
    }
};


static const model_t model07 __attribute__((__progmem__)) =
{
    strModel07, 4,
    {

        {{ 100, -71, 71, 100, 0, 1 }},
        {{ 100, 71, 71, -100, 0, 1 }},
        {{ 100, 71, -71, 100, 0, 1 }},
        {{ 100, -71, -71, -100, 0, 1 }},
    }
};


static const model_t model08 __attribute__((__progmem__)) =
{
    strModel08, 8,
    {

        {{ 100, 0, 100, 100, 0, 1 }},
        {{ 100, 0, 100, -100, 0, 1 }},
        {{ 100, 100, 0, 100, 0, 1 }},
        {{ 100, 100, 0, -100, 0, 1 }},
        {{ 100, 0, -100, 100, 0, 1 }},
        {{ 100, 0, -100, -100, 0, 1 }},
        {{ 100, -100, 0, 100, 0, 1 }},
        {{ 100, -100, 0, -100, 0, 1 }},
    }
};


static const model_t model09 __attribute__((__progmem__)) =
{
    strModel09, 8,
    {

        {{ 100, -71, 71, 100, 0, 1 }},
        {{ 100, -71, 71, -100, 0, 1 }},
        {{ 100, 71, 71, 100, 0, 1 }},
        {{ 100, 71, 71, -100, 0, 1 }},
        {{ 100, 71, -71, 100, 0, 1 }},
        {{ 100, 71, -71, -100, 0, 1 }},
        {{ 100, -71, -71, 100, 0, 1 }},
        {{ 100, -71, -71, -100, 0, 1 }},
    }
};


static const model_t model10 __attribute__((__progmem__)) =
{
    strModel10, 6,
    {

        {{ 100, 0, 100, 100, 0, 1 }},
        {{ 100, 87, 50, -100, 0, 1 }},
        {{ 100, 87, -50, 100, 0, 1 }},
        {{ 100, 0, -100, -100, 0, 1 }},
        {{ 100, -87, -50, 100, 0, 1 }},
        {{ 100, -87, 50, -100, 0, 1 }},
    }
};


static const model_t model11 __attribute__((__progmem__)) =
{
    strModel11, 6,
    {

        {{ 100, 50, 87, 100, 0, 1 }},
        {{ 100, 100, 0, -100, 0, 1 }},
        {{ 100, 50, -87, 100, 0, 1 }},
        {{ 100, -50, -87, -100, 0, 1 }},
        {{ 100, -100, 0, 100, 0, 1 }},
        {{ 100, -50, 87, -100, 0, 1 }},
    }
};


static const model_t model12 __attribute__((__progmem__)) =
{
    strModel12, 8,
    {

        {{ 100, 0, 100, 100, 0, 1 }},
        {{ 100, 71, 71, -100, 0, 1 }},
        {{ 100, 100, 0, 100, 0, 1 }},
        {{ 100, 71, -71, -100, 0, 1 }},
        {{ 100, 0, -100, 100, 0, 1 }},
        {{ 100, -71, -71, -100, 0, 1 }},
        {{ 100, -100, 0, 100, 0, 1 }},
        {{ 100, -71, 71, -100, 0, 1 }},
    }
};


static const model_t model13 __attribute__((__progmem__)) =
{
    strModel13, 8,
    {

        {{ 100, 38, 92, 100, 0, 1 }},
        {{ 100, 92, 38, -100, 0, 1 }},
        {{ 100, 92, -38, 100, 0, 1 }},
        {{ 100, 38, -92, -100, 0, 1 }},
        {{ 100, -38, -92, 100, 0, 1 }},
        {{ 100, -92, -38, -100, 0, 1 }},
        {{ 100, -92, 38, 100, 0, 1 }},
        {{ 100, -38, 92, -100, 0, 1 }},
    }
};


static const model_t model14 __attribute__((__progmem__)) =
{
    strModel14, 6,
    {

        {{ 100, 71, 71, 100, 0, 1 }},
        {{ 100, 71, 0, -100, 0, 1 }},
        {{ 100, 71, -71, 100, 0, 1 }},
        {{ 100, -71, -71, -100, 0, 1 }},
        {{ 100, -71, 0, 100, 0, 1 }},
        {{ 100, -71, 71, -100, 0, 1 }},
    }
};


static const model_t model15 __attribute__((__progmem__)) =
{
    strModel15, 8,
    {

        {{ 100, 71, 71, 100, 0, 1 }},
        {{ 100, 71, 24, -100, 0, 1 }},
        {{ 100, 71, -24, 100, 0, 1 }},
        {{ 100, 71, -71, -100, 0, 1 }},
        {{ 100, -71, -71, 100, 0, 1 }},
        {{ 100, -71, -24, -100, 0, 1 }},
        {{ 100, -71, 24, 100, 0, 1 }},
        {{ 100, -71, 71, -100, 0, 1 }},
    }
};


static const model_t model16 __attribute__((__progmem__)) =
{
    strModel16, 6,
    {

        {{ 100, 100, 71, 100, 0, 1 }},
        {{ 100, 71, 0, -100, 0, 1 }},
        {{ 100, 42, -71, 100, 0, 1 }},
        {{ 100, -42, -71, -100, 0, 1 }},
        {{ 100, -71, 0, 100, 0, 1 }},
        {{ 100, -100, 71, -100, 0, 1 }},
    }
};


static const model_t model17 __attribute__((__progmem__)) =
{
    strModel17, 8,
    {

        {{ 100, 100, 71, 100, 0, 1 }},
        {{ 100, 81, 24, -100, 0, 1 }},
        {{ 100, 61, -24, 100, 0, 1 }},
        {{ 100, 42, -71, -100, 0, 1 }},
        {{ 100, -42, -71, 100, 0, 1 }},
        {{ 100, -61, -24, -100, 0, 1 }},
        {{ 100, -81, 24, 100, 0, 1 }},
        {{ 100, -100, 71, -100, 0, 1 }},
    }
};


static const model_t model18 __attribute__((__progmem__)) =
{
    strModel18, 4,
    {

        {{ 100, 0, 0, 0, 0, 1 }},
        {{ 0, 100, 0, 0, 0, 2 }},
        {{ 0, 0, 100, 0, 0, 2 }},
        {{ 0, 0, 0, 100, 0, 2 }},
    }
};


static const model_t model19 __attribute__((__progmem__)) =
{
    strModel19, 5,
    {

        {{ 100, 0, 0, 0, 0, 1 }},
        {{ 0, 100, 0, 0, 0, 2 }},
        {{ 0, 100, 0, 0, 0, 2 }},
        {{ 0, 0, 100, 0, 0, 2 }},
        {{ 0, 0, 0, 100, 0, 2 }},
    }
};


static const model_t model20 __attribute__((__progmem__)) =
{
    strModel20, 3,
    {

        {{ 100, 0, 0, 0, 0, 1 }},
        {{ 0, 50, 50, 0, 0, 2 }},
        {{ 0, 50, -50, 0, 0, 2 }},
    }
};


static const model_t model21 __attribute__((__progmem__)) =
{
    strModel21, 4,
    {

        {{ 100, -71, 71, 100, 0, 1 }},
        {{ 100, 71, 71, -100, 0, 1 }},
        {{ 100, 0, -100, 100, 0, 1 }},
        {{ 100, 0, -100, -100, 0, 1 }},
    }
};


static const model_t model22 __attribute__((__progmem__)) =
{
    strModel22, 4,
    {

        {{ 100, -71, 71, 0, 0, 1 }},
        {{ 100, 71, 71, 0, 0, 1 }},
        {{ 120, 0, -90, 100, 0, 1 }},
        {{ 120, 0, -90, -100, 0, 1 }},
    }
};



const model_t* const modelTable[] __attribute__((__progmem__)) = {
    &model01,
    &model02,
    &model03,
    &model04,
    &model05,
    &model06,
    &model07,
    &model08,
    &model09,
    &model10,
    &model11,
    &model12,
    &model13,
    &model14,
    &model15,
    &model16,
    &model17,
    &model18,
    &model19,
    &model20,
    &model21,
    &model22,
};
