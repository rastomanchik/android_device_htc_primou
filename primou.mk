# Vendor
$(call inherit-product-if-exists, vendor/htc/msm7x30-common/msm7x30-vendor.mk)
$(call inherit-product-if-exists, vendor/htc/primou/primou-vendor.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/full_base_telephony.mk)

# Wifi firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt \
    $(LOCAL_PATH)/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/root/sbin/power_test:recovery/root/sbin/power_test

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.primou.rc:root/init.primou.rc \
	$(LOCAL_PATH)/ramdisk/init.primou.usb.rc:root/init.primou.usb.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.primou.rc:root/ueventd.primou.rc \
	$(LOCAL_PATH)/ramdisk/fstab.primou:root/fstab.primou

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
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
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    $(LOCAL_PATH)/configs/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(LOCAL_PATH)/configs/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(LOCAL_PATH)/configs/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv 

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(LOCAL_PATH)/keylayout/primou-keypad.kl:system/usr/keylayout/primou-keypad.kl \

# Input device config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/primou-keypad.idc:system/usr/idc/primou-keypad.idc \
	$(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Firmware
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/default.acdb:system/etc/firmware/default.acdb \
	$(LOCAL_PATH)/configs/default_org.acdb:system/etc/firmware/default_org.acdb
	
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Device-Specific HALs
PRODUCT_PACKAGES += \
    lights.msm7x30 \
    sensors.msm7x30 \
    power.msm7x30

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x30 \
    libaudio-resampler \
	libaudioparameter

# Camera
PRODUCT_PACKAGES += \
    libsurfaceflinger_client

# Display
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    memtrack.msm7x30

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x30

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x30

# Media
PRODUCT_PACKAGES += \
	libOmxCore \
	libOmxVdec \
	libOmxVenc \
	libc2dcolorconvert \
    libdivxdrmdecrypt \
	libdashplayer \
	libstagefrighthw

PRODUCT_BOOT_JARS += qcmediaplayer
PRODUCT_PACKAGES += qcmediaplayer

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Common build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.gsm.2nd_data_retry_config=max_retries=3,2000,2000,2000 \
    com.qc.hardware=true \
    rild.libpath=/system/lib/libhtc_ril.so \
	ro.telephony.ril.v3=signalstrength \
    ro.com.google.gmsversion=4.0_r1 \
    ro.ril.ecc.HTC-GCC=999,112,997 \
    ro.ril.ecc.HTC-WWE=999 \
    ro.ril.ecc.HTC-ELL=92,93,94 \
    ro.ril.enable.a52.HTC-ITA=1 \
    ro.ril.enable.a53.HTC-ITA=1 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
    ro.ril.enable.sdr=1 \
    ro.ril.enable.amr.wideband=0 \
    ro.ril.enable.dtm=0 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=10 \
    ro.ril.hsupa.category=6 \
    ro.ril.hsxpa=2 \
    ro.ril.def.agps.mode=2 \
    ro.ril.disable.power.collapse=1 \
    ro.telephony.default_network=0 \
    mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2 \
    ro.use_data_netmgrd=true \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.tethering.kb_disconnect=1 \
    ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=true \
	ro.config.low_ram=true \
    debug.composition.type=gpu \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.egl.recordable.rgba8888=1 \
	debug.sf.no_hw_vsync=1 \
	debug.mdpcomp.logs=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.sys.media.use-awesome=true \
    camera2.portability.force_api=1 \
    persist.sys.usb.config=mass_storage,adb \
    ro.vold.umsdirtyratio=20 \
    ro.sys.fw.bg_apps_limit=16 \
    ro.config.max_starting_bg=8 \
    config.disable_atlas=true \
    ro.ksm.default=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1 \
    ro.product.locale.language=en \
    ro.product.locale.region=US \
    persist.sys.strictmode.visual=0 \
    persist.sys.strictmode.disable=1 \
	dalvik.vm.dex2oat-filter=interpret-only \
	dalvik.vm.image-dex2oat-filter=speed

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# use high-density artwork where available
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
