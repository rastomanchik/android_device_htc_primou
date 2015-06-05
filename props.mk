#
# property for primou
#

# Qcom props 
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware=qcom \
	com.qc.hardware=true \
	com.qc.hdmi_out=false \
	ro.config.low_ram=true \
	persist.sys.force_highendgfx=true \
    ro.product.locale.language=ru \
    ro.product.locale.region=RU 

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.vold.umsdirtyratio=20

# Ril props
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ril.disable.power.collapse=1 \
	rild.libpath=/system/lib/libhtc_ril.so \
	ro.telephony.ril.v3=signalstrength \
	ro.ril.enable.a52.HTC-ITA=1 \
	ro.ril.enable.a53.HTC-ITA=1 \
	ro.ril.enable.dtm=0 \
	ro.ril.enable.amr.wideband=1 \
	ro.ril.gprsclass=12 \
	ro.ril.hsdpa.category=10 \
	ro.ril.hsupa.category=6 \
	ro.ril.hsxpa=2 \
	ro.ril.def.agps.mode=2 \
	ro.ril.enable.sdr=1 \
	ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
	ro.ril.enable.a52=0 \
	ro.ril.enable.a53=1
 
# Backgroung apps and services
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.bg_apps_limit=16 \
	ro.config.max_starting_bg=8

# Radio, network, wifi
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=0 \
	mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2 \
	ro.use_data_netmgrd=true \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=180 \

# Display 
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=240 \
	debug.sf.hw=1 \
	persist.sys.ui.hw=1 \
	debug.performance.tuning=1 \
	video.accelerate.hw=1 \
	debug.egl.profiler=1 \
	debug.egl.hw=1 \
	debug.sf.no_hw_vsync=1 \
	debug.composition.type=gpu \
	dev.pm.dyn_samplingrate=1 \
	ro.zygote.disable_gl_preload=true \
	debug.mdpcomp.logs=0 \
	debug.egl.recordable.rgba8888=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	ro.camera.sound.disabled=1

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	lpa.min_duration=60000000 \
	lpa.decode=false \
	lpa.use-stagefright=false \
    af.resampler.quality=255 \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=0 \
	htc.audio.alt.enable=0 \
	htc.audio.hac.enable=1

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb

# Extra debugging props
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

# Dalvik props
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-data-only=0 \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.debug.alloc=0

# Set our own VM heap values
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=48m \
	dalvik.vm.heapsize=126m \
	dalvik.vm.heaptargetutilization=0.25 \
	dalvik.vm.heapminfree=512m \
	dalvik.vm.heapmaxfree=2m

# lower the increment
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.heapgrowthlimit=36m

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	ro.secure=0
