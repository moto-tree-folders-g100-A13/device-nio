#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit from nio device
$(call inherit-product, device/motorola/nio/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := spark_nio
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


TARGET_USES_BLUR := true
WITH_FOD_ANIMATIONS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := true
WITH_GMS := true  # nio flag , specific for build with gapps

PRODUCT_SYSTEM_EXT_PROPERTIES += ro.spark.maintainer=seba_3567


ifneq ($(WITH_GMS),true)
PRODUCT_PACKAGES += \
	GoogleCam \  #build from vendor google cam when gapps it installer

endif

NO_APERTURE := true  # remove lineage aperture camara

# clean device
PRODUCT_PACKAGES += \
	RemovePackageskona
