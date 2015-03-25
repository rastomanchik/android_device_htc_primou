#
# property for primou
#

# Qcom props 
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware=qcom \
	com.qc.hardware=true \
	com.qc.hdmi_out=false \
	ro.config.low_ram=true \
    config.disable_atlas=true \

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.vold.umsdirtyratio=20

# Ril props
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ril.disable.power.collapse=1 \
	rild.libpath=/system/lib/libhtc_ril.so \
	ro.telephony.ril.v3=signalstrength \
    ro.com.google.gmsversion=4.0_r1 \
	ro.ril.ecc.HTC-GCC=999,112,997 \
	ro.ril.ecc.HTC-WWE=999 \
	ro.ril.ecc.HTC-ELL=92,93,94 \
	ro.ril.enable.a52.HTC-ITA=1 \
	ro.ril.enable.a53.HTC-ITA=1 \
	ro.ril.enable.dtm=0 \
	ro.ril.enable.amr.wideband=0 \
	ro.ril.enable.3g.prefix=1 \
	ro.ril.egprsclass=12 \
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
	ro.sys.fw.bg_apps_limit=12 \
	ro.config.max_starting_bg=6

# Radio, network, wifi
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=0 \
	mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2 \
	ro.use_data_netmgrd=true \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=180 \
	ro.tethering.kb_disconnect=1

# Display 
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=true \
	ro.sf.lcd_density=240 \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	debug.egl.recordable.rgba8888=1 \
	debug.sf.no_hw_vsync=1 \
	debug.composition.type=gpu \
	debug.mdpcomp.logs=0 \
    dev.pm.dyn_samplingrate=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
	ro.camera.sound.disabled=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.use-awesome=true \
	lpa.decode=false \
	lpa.use-stagefright=false \
	af.resampler.quality=255

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb

# Extra debugging props
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

# Dalvik props
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-filter=interpret-only \
	dalvik.vm.image-dex2oat-filter=speed

