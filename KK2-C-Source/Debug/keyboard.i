# 1 "../driver/keyboard.c"
# 1 "D:\\QuadcopterSource\\trunk\\KK2-C-Source\\Debug//"
# 1 "<command-line>"
# 1 "../driver/keyboard.c"
# 10 "../driver/keyboard.c"
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
# 11 "../driver/keyboard.c" 2
# 1 "../include/keyboard.h" 1
# 17 "../include/keyboard.h"
void keyboardInit();
uint8_t keyboardRead();
uint8_t keyboardState();
# 12 "../driver/keyboard.c" 2
# 1 "../include/digitals.h" 1
# 13 "../include/digitals.h"
void digitalsInit();
void digitalsBuzz(uint16_t ms);
void digitalsBuzzBlocking(uint16_t ms);
void digitalsLoop();
void digitalsBuzzInterval(uint16_t ms);
void digitalsLed(uint16_t ms);
void digitalsLedInterval(uint16_t ms);
# 13 "../driver/keyboard.c" 2


static uint8_t lastKeys;
static uint16_t keyDown;
static uint8_t repeat;

uint8_t keyboardState()
{
 return ~(*(volatile uint8_t *)((0x03) + 0x20)) & ((1 << (7)) | (1 << (6)) | (1 << (5)) | (1 << (4)));
}

uint8_t keyboardRead()
{
 uint16_t m = millis();
 uint8_t keys = keyboardState();
 uint8_t newkeys = keys & ~lastKeys;
 if (keys)
 {
  if (lastKeys != keys)
  {
   keyDown = m;
   repeat = 0;
   digitalsBuzz(5);
  }
  if (repeat > 15 && m - keyDown >= 20)
  {
   newkeys = keys;
   keyDown = m;
  }
  else if (repeat && m - keyDown >= 100)
  {
   newkeys = keys;
   keyDown = m;
   repeat++;
  }
  else if (!repeat && m - keyDown >= 500)
  {
   newkeys = keys;
   keyDown = m;
   repeat = 1;
  }
 }
 lastKeys = keys;
 return newkeys;
}

void keyboardInit()
{

 (*(volatile uint8_t *)((0x04) + 0x20)) |= ((1 << (7)) | (1 << (6)) | (1 << (5)) | (1 << (4)));

 (*(volatile uint8_t *)((0x05) + 0x20)) |= ((1 << (7)) | (1 << (6)) | (1 << (5)) | (1 << (4)));
}
