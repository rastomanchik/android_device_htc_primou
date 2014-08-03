# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon-ion.mk

TARGET_BOOTLOADER_BOARD_NAME := primou

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := primou
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

# Linaro toolchain
#LINARO_VERSION := 4.9
#TARGET_TOOLS_PREFIX := prebuilts/gcc/linux-x86/arm/arm-cortex_a8-linux-gnueabi-linaro_$(LINARO_VERSION)/bin/arm-eabi-

# Kernel
TARGET_KERNEL_SOURCE := kernel-pmem/htc/primou
#TARGET_KERNEL_SOURCE := kernel/htc/primou
TARGET_KERNEL_CONFIG := primou_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.9
BOARD_KERNEL_CMDLINE := no_console_suspend=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x13F00000
BOARD_KERNEL_PAGE_SIZE := 4096

# Recovery
DEVICE_RESOLUTION := 480x800
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_INITRC := device/htc/primou/recovery/init.rc
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_SCREEN_BLANK := true
ifeq ($(RECOVERY_BUILD),)
    TARGET_RECOVERY_FSTAB = device/htc/primou/ramdisk/fstab.primou
else
    TARGET_RECOVERY_FSTAB = device/htc/primou/recovery/recovery.fstab
endif
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# File System
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

# No SDK blobs
BUILD_EMULATOR_SENSORS_MODULE := false
BUILD_EMULATOR_GPS_MODULE := false
