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
	device/htc/primou/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	device/htc/primou/idc/primou-keypad.idc:system/usr/idc/primou-keypad.idc \
	device/htc/primou/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts and keychars
PRODUCT_COPY_FILES += \
	device/htc/primou/keylayout/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	device/htc/primou/keylayout/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/htc/primou/keylayout/keylayout/primou-keypad.kl:system/usr/keylayout/primou-keypad.kl \
	device/htc/primou/keylayout/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# ACDB
PRODUCT_COPY_FILES += \
	device/htc/primou/configs/default.acdb:system/etc/firmware/default.acdb \
	device/htc/primou/configs/default_org.acdb:system/etc/firmware/default_org.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	device/htc/primou/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	device/htc/primou/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	device/htc/primou/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
	device/htc/primou/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv 

# BCM4330 firmware
PRODUCT_COPY_FILES += \
	device/htc/primou/firmware/bcm4330.hcd:system/etc/firmware/bcm4330.hcd \
	device/htc/primou/firmware/fw_bcm4330_apsta_b1.bin:system/etc/firmware/fw_bcm4330_apsta_b1.bin \
	device/htc/primou/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
	device/htc/primou/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
	device/htc/primou/firmware/fw_bcm4330_b1.bin:system/etc/firmware/fw_bcm4330_b1.bin \
	device/htc/primou/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin \
	device/htc/primou/firmware/fw_bcm4330_p2p_b1.bin:system/etc/firmware/fw_bcm4330_p2p_b1.bin \
	device/htc/primou/firmware/calibration:system/etc/calibration

# Media Profiles
PRODUCT_COPY_FILES += \
	device/htc/primou/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/htc/primou/configs/media_codecs.xml:system/etc/media_codecs.xml \
	device/htc/primou/configs/audio_policy.conf:system/etc/audio_policy.conf

# Common GPS config
PRODUCT_COPY_FILES += \
	device/common/gps/gps.conf_EU_SUPL:system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
	device/htc/primou/ramdisk/init.primou.rc:root/init.primou.rc \
	device/htc/primou/ramdisk/init.htc7x30.usb.rc:root/init.htc7x30.usb.rc \
	device/htc/primou/ramdisk/ueventd.primou.rc:root/ueventd.primou.rc \
	device/htc/primou/ramdisk/fstab.primou:root/fstab.primou

# Device-Specific HALs
PRODUCT_PACKAGES += \
	lights.msm7x30 \
	sensors.msm7x30 \
	power.msm7x30

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.msm7x30 \
	audio_policy.msm7x30 \
	libaudioutils

# Video
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	hwcomposer.msm7x30  \
	memtrack.msm7x30

# QCOM OMX
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libOmxCore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libc2dcolorconvert

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	libsurfaceflinger_client \
	libnetcmdiface

# GPS / BT / Lights / Sensors
PRODUCT_PACKAGES += \
	libbt-vendor \
	gps.primou \
	librpc

# CFX Packages
PRODUCT_PACKAGES += \
	Torch \
	e2fsck

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Misc. property overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \
	ro.com.google.gmsversion=4.0_r1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=36m \
	dalvik.vm.heapsize=128m \
	dalvik.vm.heaptargetutilization=0.25 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=2m \
	dalvik.vm.debug.alloc=0 \
	ro.config.low_ram=true \
	ro.sf.lcd_density=240 \
	ro.vold.umsdirtyratio=20 \
	ro.sys.fw.bg_apps_limit=12 \
	ro.config.max_starting_bg=6 \
	ro.zygote.disable_gl_preload=true \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	video.accelerate.hw=1 \
	debug.egl.recordable.rgba8888=1 \
	debug.sf.no_hw_vsync=1 \
	debug.mdpcomp.logs=0 \
	dev.pm.dyn_samplingrate=1 \
	ro.opengles.version=131072 \
	com.qc.hardware=true \
	debug.composition.type=gpu \
	persist.sys.usb.config=mass_storage,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=0 \
	htc.audio.alt.enable=0 \
	htc.audio.hac.enable=1

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
