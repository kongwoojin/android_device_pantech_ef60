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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef60s device
$(call inherit-product, device/pantech/ef60s/ef60s.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_ef60s
PRODUCT_DEVICE := ef60s
PRODUCT_MANUFACTURER := pantech
PRODUCT_MODEL := IM-A900

PRODUCT_GMS_CLIENTID_BASE := android-pantech

PRODUCT_BRAND := pantech
TARGET_VENDOR := pantech
TARGET_VENDOR_PRODUCT_NAME := ef60s
TARGET_VENDOR_DEVICE_NAME := IM-A900

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=pantech/ef60s/IM-A900:5.0.2/LRX22G/YNG1TAS2I3:user/release-keys \
    PRIVATE_BUILD_DESC="ef60s-user 5.0.2 LRX22G YNG1TAS2I3 release-keys"
endif
