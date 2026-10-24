#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from zircon device
$(call inherit-product, device/xiaomi/zircon/device.mk)

PRODUCT_NAME := lineage_zircon
PRODUCT_DEVICE := zircon
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 13 Pro+ 5G

PRODUCT_SYSTEM_NAME := zircon
PRODUCT_SYSTEM_DEVICE := zircon

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="zircon-user 16 BP2A.250605.031.A3 OS3.0.305.0.WNOCNXM release-keys" \
    BuildFingerprint=Redmi/zircon/zircon:16/BP2A.250605.031.A3/OS3.0.305.0.WNOCNXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
