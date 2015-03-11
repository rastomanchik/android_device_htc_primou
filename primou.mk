$(call inherit-product, build/target/product/full_base_telephony.mk)

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# Common proprietary blobs
$(call inherit-product-if-exists, vendor/htc/msm7x30-common/msm7x30-vendor.mk)

# Vendor
$(call inherit-product, vendor/htc/primou/primou-vendor.mk)

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt \
    $(LOCAL_PATH)/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

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

# Media Profiles
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Common GPS config
PRODUCT_COPY_FILES += \
	device/common/gps/gps.conf_EU_SUPL:system/etc/gps.conf

# Device-Specific HALs
PRODUCT_PACKAGES += \
	lights.msm7x30 \
	sensors.msm7x30 \
	power.msm7x30 \
	gps.primou

PRODUCT_PACKAGES += \
	libbt-vendor \
	librpc

# Filesystem
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	e2fsck

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.msm7x30 \
	audio_policy.msm7x30 \
	libaudio-resampler \
	libaudioutils
	
# Video
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	hwcomposer.msm7x30 \
    memtrack.msm7x30

# QCOM OMX
PRODUCT_PACKAGES += \
	libOmxCore \
	libOmxVdec \
	libOmxVenc \
    libdivxdrmdecrypt \
	libstagefrighthw
	
#	libc2dcolorconvert \

PRODUCT_PACKAGES += \
	Torch \
	com.android.future.usb.accessory \
	libsurfaceflinger_client \
	libnetcmdiface
	
# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.primou.rc:root/init.primou.rc \
	$(LOCAL_PATH)/ramdisk/init.htc7x30.usb.rc:root/init.htc7x30.usb.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.primou.rc:root/ueventd.primou.rc \
	$(LOCAL_PATH)/ramdisk/fstab.primou:root/fstab.primou

# Input device config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/primou-keypad.idc:system/usr/idc/primou-keypad.idc \
	$(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts and keychars
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(LOCAL_PATH)/keylayout/primou-keypad.kl:system/usr/keylayout/primou-keypad.kl \
	$(LOCAL_PATH)/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

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

# Apps
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/apps/FileManager.apk:system/app/FileManager.apk \
	$(LOCAL_PATH)/apps/OpenCamera.apk:system/app/Camera2.apk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Misc. property overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \
	ro.com.google.gmsversion=4.0_r1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	ro.zygote.disable_gl_preload=true \
	ro.config.low_ram=true \
	ro.sf.lcd_density=240 \
	ro.vold.umsdirtyratio=20 \
	ro.sys.fw.bg_apps_limit=12 \
	ro.config.max_starting_bg=6 \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	debug.egl.recordable.rgba8888=1 \
	debug.sf.no_hw_vsync=1 \
	debug.mdpcomp.logs=0 \
	dev.pm.dyn_samplingrate=1 \
	ro.opengles.version=131072 \
	ro.telephony.ril.v3=signalstrength \
	com.qc.hardware=true \
	debug.composition.type=gpu \
	persist.sys.usb.config=mass_storage,adb \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=0 \
	htc.audio.alt.enable=0 \
	htc.audio.hac.enable=0

# Low Power Audio
PRODUCT_PROPERTY_OVERRIDES += \
	lpa.decode=false \
	lpa.use-stagefright=false

# Extra debugging props
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

# Resampler quality
PRODUCT_PROPERTY_OVERRIDES += \
	af.resampler.quality=255

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
