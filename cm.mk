# Inherit AOSP device configuration for primoc.
$(call inherit-product, device/htc/primou/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_primou
PRODUCT_BRAND := htc
PRODUCT_DEVICE := primou
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC
PRODUCT_AUTHOR := Rastomanchik
BUILD_ID := ALPHA-5_byRastomanchik
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primou BUILD_FINGERPRINT=htc_europe/htc_primou/primou:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/user-debug PRIVATE_BUILD_DESC="$(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) user-debug"

