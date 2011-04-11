# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8220/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom

TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

BOARD_KERNEL_CMDLINE := mem=128M androidboot.hardware=qcom no_console_suspend=1 console=null

BOARD_HAVE_BLUETOOTH := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/u8220/egl.cfg

TARGET_USES_OLD_LIBSENSORS_HAL := true

NO_FALLBACK_FONT:=true

TARGET_PROVIDES_LIBAUDIO := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8220
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true

JS_ENGINE := v8

# Stagefright fully enabled
#BUILD_WITH_FULL_STAGEFRIGHT := true

AVOID_DRAW_TEXTURE_EXTENSION := true

TARGET_OTA_ASSERT_DEVICE := pulse,u8220,u8230
TARGET_BOOTLOADER_BOARD_NAME=u8220

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00280000 00020000 "boot"
# mtd1: 06e00000 00020000 "system"
# mtd2: 05040000 00020000 "userdata"
# mtd3: 01400000 00020000 "cache"
# mtd4: 004c0000 00020000 "recovery"
# mtd5: 00080000 00020000 "misc"

BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00280000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x004c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x06e00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x05040000

TARGET_PREBUILT_KERNEL := device/huawei/u8220/kernel
