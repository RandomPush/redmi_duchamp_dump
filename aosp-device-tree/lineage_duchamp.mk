#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from duchamp device
$(call inherit-product, device/xiaomi/duchamp/device.mk)

PRODUCT_DEVICE := duchamp
PRODUCT_NAME := lineage_duchamp
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2311DRK48C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_cn-user 14 UP1A.230905.011 V816.0.4.0.UNLCNXM release-keys"

BUILD_FINGERPRINT := Redmi/duchamp/duchamp:14/UP1A.230905.011/V816.0.4.0.UNLCNXM:user/release-keys
