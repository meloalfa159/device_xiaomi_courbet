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

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_INCLUDE_GRAMOPHONE := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_USES_PICO_GAPPS := true

PRODUCT_NAME := evolution_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/courbet/courbet:13/TKQ1.221013.002/V14.0.3.0.TKQMIXM:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="courbet_global-user 13 TKQ1.221013.002 V14.0.3.0.TKQMIXM release-keys"
