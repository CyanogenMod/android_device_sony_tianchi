# Copyright (C) 2014 The CyanogenMod Project
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

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
BUILD_KERNEL_WITH_ROM := true
TARGET_KERNEL_CONFIG := cm_yukon_tianchi_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D5303,tianchi

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/tianchi/rootdir/fstab.yukon

# Inherit from tianchi device
$(call inherit-product, device/sony/tianchi/aosp_d5303.mk)

# Inherit from common resources
$(call inherit-product, device/sony/common/resources.mk)

# Inherit CM common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D5303 \
    BUILD_FINGERPRINT=Sony/D5303/D5303:4.4.3/19.1.1.A.0.165/Wv93Zw:user/release-keys \
    PRIVATE_BUILD_DESC="D5303-user 4.4.3 19.1.1.A.0.165 Wv93Zw release-keys"

PRODUCT_NAME := cm_tianchi
PRODUCT_DEVICE := tianchi
