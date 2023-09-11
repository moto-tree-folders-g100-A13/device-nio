#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

#TWRP specific build flags
# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_NTFS_3G := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 3515
TW_DEFAULT_BRIGHTNESS := 1024
TW_FRAMERATE := 60
TW_HAS_EDL_MODE := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone39/temp
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_SUPPORT_INPUT_AIDL_HAPTICS_FIX_OFF := true