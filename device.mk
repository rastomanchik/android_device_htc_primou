# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Input device config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(LOCAL_PATH)/idc/primou-keypad.idc:system/usr/idc/primou-keypad.idc \
	$(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts and keychars
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	$(LOCAL_PATH)/keylayout/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(LOCAL_PATH)/keylayout/keylayout/primou-keypad.kl:system/usr/keylayout/primou-keypad.kl \
	$(LOCAL_PATH)/keylayout/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# ACDB
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/default.acdb:system/etc/firmware/default.acdb \
	$(LOCAL_PATH)/configs/default_org.acdb:system/etc/firmware/default_org.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	$(LOCAL_PATH)/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(LOCAL_PATH)/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(LOCAL_PATH)/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv 

# BCM4330 firmware
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/firmware/bcm4330.hcd:system/etc/firmware/bcm4330.hcd \
	$(LOCAL_PATH)/firmware/fw_bcm4330_apsta_b1.bin:system/etc/firmware/fw_bcm4330_apsta_b1.bin \
	$(LOCAL_PATH)/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
	$(LOCAL_PATH)/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
	$(LOCAL_PATH)/firmware/fw_bcm4330_b1.bin:system/etc/firmware/fw_bcm4330_b1.bin \
	$(LOCAL_PATH)/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin \
	$(LOCAL_PATH)/firmware/fw_bcm4330_p2p_b1.bin:system/etc/firmware/fw_bcm4330_p2p_b1.bin \
	$(LOCAL_PATH)/firmware/calibration:system/etc/calibration

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Common GPS config
PRODUCT_COPY_FILES += \
	device/common/gps/gps.conf_EU_SUPL:system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.primou.rc:root/init.primou.rc \
	$(LOCAL_PATH)/ramdisk/init.htc7x30.usb.rc:root/init.htc7x30.usb.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.primou.rc:root/ueventd.primou.rc \
	$(LOCAL_PATH)/ramdisk/fstab.primou:root/fstab.primou

# Device-Specific HALs
PRODUCT_PACKAGES += \
	lights.msm7x30 \
	sensors.msm7x30 \
	power.msm7x30 \
	gps.primou

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.msm7x30 \
	audio_policy.msm7x30 \
	libaudio-resampler \
	libaudioutils

# Camera
PRODUCT_PACKAGES += \
	libsurfaceflinger_client

# Display
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	hwcomposer.msm7x30  \
	libgenlock \
	memtrack.msm7x30

# OMX
PRODUCT_PACKAGES += \
	libdashplayer \
	libOmxVdec \
	libOmxVenc \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libstagefrighthw

# Wifi
PRODUCT_PACKAGES += \
	libnetcmdiface \
	macloader \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant \
	wpa_supplicant.conf

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \
	setup_fs

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Misc. property overrides
PRODUCT_PROPERTY_OVERRIDES += \
	com.qc.hardware=true \
	debug.composition.type=gpu \
	debug.egl.hw=1 \
	debug.sf.hw=1 \
	debug.sf.no_hw_vsync=1 \
	video.accelerate.hw=1 \
	debug.mdpcomp.logs=0 \
	dev.pm.dyn_samplingrate=1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=36m \
	dalvik.vm.heapsize=128m \
	dalvik.vm.heaptargetutilization=0.25 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=2m \
	dalvik.vm.debug.alloc=0 \
	media.stagefright.use-awesome=true \
	persist.hwc.mdpcomp.enable=false \
	persist.sys.media.use-awesome=true \
	persist.sys.usb.config=mass_storage,adb \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \
	ro.com.google.gmsversion=4.0_r1 \
	ro.config.low_ram=true \
	ro.opengles.version=131072 \
	ro.setupwizard.enable_bypass=1 \
	ro.sys.fw.bg_apps_limit=12 \
	ro.config.max_starting_bg=6 \
	ro.zygote.disable_gl_preload=true \
	wifi.interface=wlan0 \
	ro.vold.umsdirtyratio=20 \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Vendor
$(call inherit-product, vendor/htc/primou/primou-vendor.mk)

# Qcom proprietary
$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

# Gapps-minimal 
#$(call inherit-product-if-exists, vendor/gapps_min/gapps-vendor.mk)

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# use high-density artwork where available
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
