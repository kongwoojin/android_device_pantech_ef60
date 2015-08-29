#
# Copyright (C) 2014 The CyanogenMod Project
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
#

# Inherit from MSM8974 common
-include device/pantech/msm8974-common/BoardConfigCommon.mk
# Include path
TARGET_SPECIFIC_HEADER_PATH := device/pantech/msm8974-common/include


# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_a900_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive

# Vendor Init
TARGET_LIBINIT_DEFINES_FILE := device/pantech/ef60s/init/init_ef60s.c

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef60s/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13271448576
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59914792960
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G

# Recovery
TARGET_RECOVERY_FSTAB := device/pantech/ef60s/rootdir/etc/fstab.qcom

TARGET_OTA_ASSERT_DEVICE := ef60s,ef61k,ef62l

# Workaround for factory issue
BOARD_VOLD_CRYPTFS_MIGRATE := true

BOARD_NFC_CHIPSET := pn547

AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true

# inherit from the proprietary version
-include vendor/pantech/ef60s/BoardConfigVendor.mk
