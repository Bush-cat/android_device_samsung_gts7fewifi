#
# Copyright (C) 2023 The LineageOS Project
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

DEVICE_PATH := device/samsung/gts7fewifi

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/gts7fewifi/gts7fewifi-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.gts7fewifi.rc

# Samsung IDC files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/sec_e-pen.idc:vendor/usr/idc/sec_e-pen.idc

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
