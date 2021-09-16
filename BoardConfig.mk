#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/courbet

# Kernel
TARGET_KERNEL_CONFIG := courbet_user_defconfig

# Inherit from proprietary files
include vendor/xiaomi/courbet/BoardConfigVendor.mk