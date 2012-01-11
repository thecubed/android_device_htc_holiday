#
# Copyright (C) 2011 The Evervolv Project
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


PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_PROPERTY_OVERRIDES += \
    #ro.com.google.clientidbase=android-sprint-us \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/root/init.holiday.rc:root/init.holiday.rc \
    device/htc/holiday/prebuilt/root/init.holiday.usb.rc:root/init.holiday.usb.rc \
    device/htc/holiday/prebuilt/root/ueventd.holiday.rc:root/ueventd.holiday.rc

# Recovery Chargemode Support
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/holiday/prebuilt/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/holiday/prebuilt/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/holiday/prebuilt/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt \
    device/htc/holiday/prebuilt/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_0.png:recovery/root/res/offmode_charging_images/batt_0.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_100.png:recovery/root/res/offmode_charging_images/batt_100.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_10.png:recovery/root/res/offmode_charging_images/batt_10.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_20.png:recovery/root/res/offmode_charging_images/batt_20.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_30.png:recovery/root/res/offmode_charging_images/batt_30.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_40.png:recovery/root/res/offmode_charging_images/batt_40.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_50.png:recovery/root/res/offmode_charging_images/batt_50.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_5.png:recovery/root/res/offmode_charging_images/batt_5.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_60.png:recovery/root/res/offmode_charging_images/batt_60.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_70.png:recovery/root/res/offmode_charging_images/batt_70.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_80.png:recovery/root/res/offmode_charging_images/batt_80.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_90.png:recovery/root/res/offmode_charging_images/batt_90.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/batt_95.png:recovery/root/res/offmode_charging_images/batt_95.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_00.png:recovery/root/res/offmode_charging_images/charging_00.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_01.png:recovery/root/res/offmode_charging_images/charging_01.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_02.png:recovery/root/res/offmode_charging_images/charging_02.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_03.png:recovery/root/res/offmode_charging_images/charging_03.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_04.png:recovery/root/res/offmode_charging_images/charging_04.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_05.png:recovery/root/res/offmode_charging_images/charging_05.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_06.png:recovery/root/res/offmode_charging_images/charging_06.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_07.png:recovery/root/res/offmode_charging_images/charging_07.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_08.png:recovery/root/res/offmode_charging_images/charging_08.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/charging_09.png:recovery/root/res/offmode_charging_images/charging_09.png \
    device/htc/holiday/prebuilt/recovery/root/res/offmode_charging_images/error.png:recovery/root/res/offmode_charging_images/error.png



# Temporary hack
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1

#Using prebuilt audio libs right now
#PRODUCT_COPY_FILES += \
#    device/htc/holiday/prebuilt/system/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
#    device/htc/holiday/prebuilt/system/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
#    device/htc/holiday/prebuilt/system/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so



#Add touchscreen config file
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/usr/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc
#    device/htc/holiday/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl 
#    device/htc/holiday/prebuilt/system/usr/idc/holiday-keypad.idc:system/usr/idc/holiday-keypad.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keychars/holiday-keypad.kcm.bin:system/usr/keychars/holiday-keypad.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/holiday/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/holiday-keypad.kl:system/usr/keylayout/holiday-keypad.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/holiday/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl


## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/holiday/holiday-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	#ro.com.google.clientidbase=android-sprint-us \
	#ro.com.google.clientidbase.yt=android-sprint-us \
	#ro.com.google.clientidbase.am=android-sprint-us \
	#ro.com.google.clientidbase.vs=android-sprint-us \
	#ro.com.google.clientidbase.gmm=android-sprint-us \
	#ro.com.google.clientidbase.ms=android-sprint-us \
	#ro.phone.min_match=7 \
	#ro.product.model=PG86100 \
	#ro.cdma.home.operator.alpha=sprint \
	#gsm.sim.operator.alpha=sprint \
	#gsm.operator.alpha=sprint \
	#ro.cdma.home.operator.numeric=310120 \
	#gsm.sim.operator.numeric=310120 \
	#gsm.operator.numeric=310120 \
	#gsm.sim.operator.iso-country=us \
	#gsm.operator.iso-country=us \
	ro.com.google.locationfeatures=1 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	ro.opengles.version=131072

DEVICE_PACKAGE_OVERLAYS += device/htc/holiday/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    librs_jni \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd:system/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd \
    device/htc/holiday/prebuilt/system/etc/firmware/fw_bcm4330.bin:system/etc/firmware/fw_bcm4330.bin \
    device/htc/holiday/prebuilt/system/etc/firmware/fw_bcm4330b2.bin:system/etc/firmware/fw_bcm4330b2.bin \
    device/htc/holiday/prebuilt/system/etc/firmware/fw_bcm4330_apsta.bin:system/etc/firmware/fw_bcm4330_apsta.bin \
    device/htc/holiday/prebuilt/system/etc/firmware/fw_bcm4330b2_apsta.bin:system/etc/firmware/fw_bcm4330b2_apsta.bin \
    device/htc/holiday/prebuilt/system/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/holiday/prebuilt/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/holiday/prebuilt/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw
    
# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/A1026_CFG.csv:system/etc/A1026_CFG.csv \
    device/htc/holiday/prebuilt/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/holiday/prebuilt/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/holiday/prebuilt/system/etc/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
    device/htc/holiday/prebuilt/system/etc/AIC3254_REG_DualMic_WA.txt:system/etc/AIC3254_REG_DualMic_WA.txt \
    device/htc/holiday/prebuilt/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/holiday/prebuilt/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/holiday/prebuilt/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/holiday/prebuilt/system/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/holiday/prebuilt/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/holiday/prebuilt/system/etc/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/holiday/prebuilt/system/etc/vpimg:system/etc/vpimg \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/holiday/prebuilt/system/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/holiday/prebuilt/system/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/holiday/prebuilt/system/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/holiday/prebuilt/system/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
#    device/htc/holiday/prebuilt/system/bin/snd3254:system/bin/snd3254

# Wifi Module
PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko 
#    device/htc/holiday/prebuilt/system/lib/modules/sequans_sdio.ko:system/lib/modules/sequans_sdio.ko 


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise


PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/holiday/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/holiday/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/holiday/prebuilt/root/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# media profiles and capabilities spec
$(call inherit-product, device/htc/holiday/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/holiday/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_holiday
PRODUCT_DEVICE := holiday
PRODUCT_MODEL := HTC Holiday
PRODUCT_MANUFACTURER := HTC
