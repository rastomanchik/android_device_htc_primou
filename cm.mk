# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit AOSP device configuration for primou.
$(call inherit-product, device/htc/primou/primou.mk)

PRODUCT_NAME := cm_primou
PRODUCT_BRAND := htc
PRODUCT_DEVICE := primou
PRODUCT_MODEL := One V
PRODUCT_MANUFACTURER := HTC
CM_BUILDTYPE := RELEASE
PRODUCT_VERSION_MAINTENANCE := 0.8
PRODUCT_VERSION_DEVICE_SPECIFIC := _byRastomanchik

PRODUCT_LOCALES += ru_RU
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primou BUILD_FINGERPRINT=htc_europe/htc_primou/primou:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/user-debug PRIVATE_BUILD_DESC="$(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) user-debug"

