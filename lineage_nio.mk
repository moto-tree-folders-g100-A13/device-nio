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

#$(call inherit-product, device/motorola/nio/TwrpConfigCommon.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_nio
PRODUCT_DEVICE := nio
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G100
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_NAME := nio_retcn

# Build info
BUILD_FINGERPRINT := "motorola/nio_retcn/nio:12/S1RN32.55-16-2/125d6-32b4dd:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nio_retcn-user 12 S1RN32.55-16-2 125d6-32b4dd release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Pixel
WITH_GMS := true
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true


# Package Type
RISING_PACKAGE_TYPE := Gapps
TARGET_ENABLE_BLUR := true

# Official
RISING_MAINTAINER := Seba3567
RISING_CHIPSET := "SND 870"

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := false

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false
