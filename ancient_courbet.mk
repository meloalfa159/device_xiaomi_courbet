#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common Ancient OS stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Ancient
ANCIENT_OFFICIAL := true
ANCIENT_GAPPS := true
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := ancient_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="courbet_global-user 12 RKQ1.210614.002 V13.0.8.0.SKQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/courbet_global/courbet:12/RKQ1.210614.002/V13.0.8.0.SKQMIXM:user/release-keys
