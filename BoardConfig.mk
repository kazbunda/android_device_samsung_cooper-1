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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/samsung/msm7x27-common/BoardConfigCommon.mk

## Graphics
TARGET_DISABLE_TRIPLE_BUFFERING := true

## Kernel, bootloader
TARGET_BOOTLOADER_BOARD_NAME := cooper
TARGET_KERNEL_CONFIG := cyanogenmod_cooper_defconfig
TARGET_OTA_ASSERT_DEVICE := cooper,GT-S5830

## Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/cooper/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/cooper/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/cooper/recovery/recovery.fstab

SMALLER_FONT_FOOTPRINT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/cooper/bluetooth

## TWRP
DEVICE_RESOLUTION := 320x480
TW_NO_REBOOT_BOOTLOADER := true
TW_FLASH_FROM_STORAGE := true
BOARD_USES_BML_OVER_MTD := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TWRP_EVENT_LOGGING := true
TW_CUSTOM_POWER_BUTTON := 107
