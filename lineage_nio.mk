#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from nio device
$(call inherit-product, device/motorola/nio/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_nio
PRODUCT_DEVICE := nio
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2125-4
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_NAME := nio_retcn

# Build info
BUILD_FINGERPRINT := "motorola/nio_retcn/nio:12/S1RN32.55-16-2/125d6-32b4dd:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nio_retcn-user 12 S1RN32.55-16-2 125d6-32b4dd release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)


# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# GAPPS
WITH_GAPPS := true
TARGET_INCLUDE_GOOGLE_APP := false
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CALENDAR := false
TARGET_INCLUDE_GOOGLE_CHROME := false
TARGET_INCLUDE_GOOGLE_DESKCLOCK := true
TARGET_INCLUDE_GOOGLE_DRIVE := false
TARGET_INCLUDE_GMAIL := true
TARGET_INCLUDE_GOOGLE_MAPS := true
TARGET_INCLUDE_GOOGLE_PHOTOS := true
# (NOT YET) TARGET_INCLUDE_GOOGLE_SETUP := false
TARGET_INCLUDE_PIXEL_FRAMEWORK := true

# Debugging
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := false

# Maintainer
#ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := seba_3567
