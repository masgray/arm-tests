#/usr/bin/bash

CFLAGS="-O2 -mcpu=cortex-a53 -mfloat-abi=hard -mfpu=neon-fp-armv8 -mneon-for-64bits -mtune=cortex-a53 -funsafe-math-optimizations -lc -specs=nosys.specs"
TOOLCHAIN="/usr/toolchain/gcc-arm-none-eabi/bin"

rm kernel.elf
$TOOLCHAIN/arm-none-eabi-gcc $CFLAGS src/main.c -o ./.build/kernel.elf
$TOOLCHAIN/arm-none-eabi-objcopy ./.build/kernel.elf -O binary ./.build/kernel.img
