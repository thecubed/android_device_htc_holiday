USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/holiday/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := holiday
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/htc/holiday/include

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4330/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4330.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4330_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "fwb1_path=/system/etc/firmware/fw_bcm4330_apsta.bin fwb2_path=/system/etc/firmware/fw_bcm4330b2_apsta.bin nvram_path=/system/etc/calibration iface_name=wl0.1"

WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_BAND                        := 802_11_ABG

# Audio 
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_PREBUILT_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Gps
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := holiday
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Define egl.cfg location
ARCH_ARM_HAVE_VFP := true
USE_OPENGL_RENDERER := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_HAVE_HDMI_OUT := true
TARGET_HARDWARE_3D := true
BOARD_EGL_CFG := device/htc/holiday/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_ADRENO_200 := true
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_NO_RGBX_8888 := true
#BOARD_USES_OVERLAY := true
#BOARD_USES_HGL := true

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

#COMMON_GLOBAL_CFLAGS += \
#    -DREFRESH_RATE=60 \
#    -DMISSING_EGL_EXTERNAL_IMAGE \
#    -DMISSING_EGL_PIXEL_FORMAT_YV12 \
#    -DMISSING_GRALLOC_BUFFERS

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_LEGACY := false
BOARD_CAMERA_USE_GETBUFFERINFO := true

# Legacy touchscreen support
BOARD_USE_LEGACY_TOUCHSCREEN := true

BOARD_USE_NEW_LIBRIL_HTC := true
TARGET_PROVIDES_LIBRIL := vendor/htc/holiday/proprietary/libril.so

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=holiday no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/holiday/prebuilt/root/kernel
# We use a recoverykernel since our 'kernel' is for ICS, and doesn't properly support USB Mass Storage
# (either that, or I'm a moron... most likely.)
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/holiday/prebuilt/root/recoverykernel

# For recovery-chargemode
TARGET_RECOVERY_INITRC := device/htc/holiday/prebuilt/recovery/root/init.rc

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/holiday/graphics.c
#BOARD_USES_RECOVERY_CHARGEMODE := true
