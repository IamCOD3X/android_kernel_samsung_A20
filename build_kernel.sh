#!/bin/bash


export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export ARCH=arm64
export LOCALVERSION=-ViP3R🐍-v1.0-NETHUNTER-SPECIAL-EDITION
export KBUILD_BUILD_USER=IamCOD3X
export KBUILD_BUILD_HOST=RYZEN
export DTC_EXT=/usr/bin/dtc

make ARCH=arm64 nethunter_defconfig
make ARCH=arm64 -j$(nproc --all)

