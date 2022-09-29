#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m31 device
$(call inherit-product, device/samsung/m31/device.mk)

PRODUCT_DEVICE := m31
PRODUCT_NAME := omni_m31
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M315F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m31nsxx-user 12 SP1A.210812.016 M315FXXU3CVH1 release-keys"

BUILD_FINGERPRINT := samsung/m31nsxx/m31:12/SP1A.210812.016/M315FXXU3CVH1:user/release-keys
