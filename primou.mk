$(call inherit-product, build/target/product/full_base_telephony.mk)

# Vendor
$(call inherit-product-if-exists, vendor/htc/primou/primou-vendor-blobs.mk)

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/init.rc:root/init.recovery.primou.rc \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
	$(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom

# Apps
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/apps/FileManager.apk:system/app/FileManager.apk \
	$(LOCAL_PATH)/apps/KernelAdiutor.apk:system/app/KernelAdiutor.apk

# Media Profiles
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

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

# Common GPS config
PRODUCT_COPY_FILES += \
	device/common/gps/gps.conf_EU_SUPL:system/etc/gps.conf

# Device-Specific HALs
PRODUCT_PACKAGES += \
	lights.msm7x30 \
	sensors.msm7x30 \
	power.msm7x30 \
	gps.primou \
	camera.msm7x30

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
    audio.usb.default \
	audio.primary.msm7x30 \
	audio_policy.msm7x30 \
	libaudio-resampler \
	libaudioparameter \
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
	libOmxVenc \
	libOmxVdec \
	libc2dcolorconvert \
	libstagefrighthw
	
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	libnetcmdiface \
	libbt-vendor \
	librpc \
	libgps.utils \
	Camera2 \
	Torch

# All props
-include $(LOCAL_PATH)/props.mk
