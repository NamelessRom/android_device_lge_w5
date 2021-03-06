# Copyright (C) 2012 The CyanogenMod Project
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
# This file is the build configuration for a full Android
# build for toro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and toro, hence its name.
#

# Release name
PRODUCT_RELEASE_NAME := w5

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Get the prebuilt list of APNs
$(call inherit-product, vendor/nameless/config/apns.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nameless/config/common.mk)

# This is where we'd set a backup provider if we had one
$(call inherit-product, device/lge/w5/full_w5.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := nameless_w5
PRODUCT_DEVICE := w5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=w5 \
    TARGET_DEVICE=w5 \
    BUILD_FINGERPRINT="lge/w5_global_com/w5n:4.4.2/KOT49I.A1412741696/1412741696:user/release-keys" \
    PRIVATE_BUILD_DESC="w5_global_com-user 4.4.2 KOT49I.A1412741696 1412741696 release-keys"

PRODUCT_BOOTANIMATION := device/lge/w5/bootanimation.zip
