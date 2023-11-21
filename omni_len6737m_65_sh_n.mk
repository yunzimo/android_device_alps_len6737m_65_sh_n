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

# Inherit from len6737m_65_sh_n device
$(call inherit-product, device/alps/len6737m_65_sh_n/device.mk)

PRODUCT_DEVICE := len6737m_65_sh_n
PRODUCT_NAME := omni_len6737m_65_sh_n
PRODUCT_BRAND := alps
PRODUCT_MODEL := ZC2018-02
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_len6737m_65_sh_n-user 7.0 NRD90M 1554169541 test-keys"

BUILD_FINGERPRINT := alps/full_len6737m_65_sh_n/len6737m_65_sh_n:7.0/NRD90M/1554169541:user/test-keys
