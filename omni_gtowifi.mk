#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gtowifi device
$(call inherit-product, device/samsung/gtowifi/device.mk)

PRODUCT_DEVICE := gtowifi
PRODUCT_NAME := omni_gtowifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T290
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gtowifixx-user 11 RP1A.200720.012 T290XXS4CWC1 release-keys"

BUILD_FINGERPRINT := samsung/gtowifixx/gtowifi:11/RP1A.200720.012/T290XXS4CWC1:user/release-keys
