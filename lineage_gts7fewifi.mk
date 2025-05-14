#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/gts7fewifi/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gts7fewifi
PRODUCT_DEVICE := gts7fewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T733
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/gts7fewifixx/gts7fewifi:11/RP1A.200720.012/T733XXS9DYE1:user/release-keys" \
    BuildDesc="gts7fewifixx-user 13 TP1A.220624.014 T733XXS9DYE1 release-keys" \
    DeviceProduct=gts7fewifixx \
    SystemName=gts7fewifixx
