# 1 "../driver/system.c"
# 1 "D:\\QuadcopterSource\\trunk\\KK2-C-Source\\Debug//"
# 1 "<command-line>"
# 1 "../driver/system.c"
# 10 "../driver/system.c"
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
# 11 "../driver/system.c" 2

static uint16_t t1_millis, t1_millis_fract, t1_ovf;

void __vector_15 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_15 (void)
{
 t1_ovf++;

 t1_millis += 3;
 t1_millis_fract += 2768;
 if (t1_millis_fract >= 10000)
 {
  t1_millis_fract -= 10000;
  t1_millis++;
 }
}

uint32_t ticks()
{
 uint16_t t1, t2;
 for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 )
 {
  t1 = t1_ovf;
  t2 = (*(volatile uint16_t *)(0x84));
  if (((*(volatile uint8_t *)((0x16) + 0x20)) & (1 << (0))) && (t2 < 65533))
   t1++;
 }
 return ((uint32_t)t1 << 16) | t2;
}


uint16_t micros()
{
# 52 "../driver/system.c"
 return ((ticks()) / (20UL));
}


uint16_t millis()
{
 uint16_t t;
 for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 )
  t = t1_millis;
 return t;
}

void setup()
{

 (*(volatile uint8_t *)((0x35) + 0x20)) |= (1 << (7));
 (*(volatile uint8_t *)((0x35) + 0x20)) |= (1 << (7));





 ((*(_bitreg8*)&(*(volatile uint8_t *)((0x04) + 0x20))).bit3) = 1;


 (*(volatile uint8_t *)(0x81)) = (1 << (0));
 (*(volatile uint8_t *)(0x6F)) = (1 << (0));
}
