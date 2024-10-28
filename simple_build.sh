#!/bin/bash

# HOME path
export HOME=/root

# Compiler environment
export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export CLANG_PATH=$PWD/clang
export PATH="$CLANG_PATH:$PATH"
export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export LOCALVERSION=-ViP3R🐍-v1.0-NETHUNTER-RELOADED
export KBUILD_BUILD_USER=IamCOD3X
export KBUILD_BUILD_HOST=RYZEN
export DTC_EXT=/usr/bin/dtc

echo
echo "Setting defconfig"
echo

make ARCH=arm64 CC=clang LD=$PWD/clang/bin/ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip exynos7885-a20_defconfig

echo
echo "Compiling kernel"
echo

make ARCH=arm64 CC=clang LD=$PWD/clang/bin/ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip -j$(nproc --all) || exit 1
