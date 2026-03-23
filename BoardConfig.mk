[span_6](start_span)DEVICE_PATH := device/xiaomi/uke[span_6](end_span)

# Architecture
[span_7](start_span)TARGET_ARCH := arm64[span_7](end_span)
[span_8](start_span)TARGET_ARCH_VARIANT := armv8-a[span_8](end_span)
[span_9](start_span)TARGET_CPU_ABI := arm64-v8a[span_9](end_span)
[span_10](start_span)TARGET_CPU_VARIANT := generic[span_10](end_span)

# Bootloader
[span_11](start_span)TARGET_BOOTLOADER_BOARD_NAME := uke[span_11](end_span)
[span_12](start_span)TARGET_NO_BOOTLOADER := true[span_12](end_span)

# Platform
[span_13](start_span)TARGET_BOARD_PLATFORM := crow[span_13](end_span)

# Kernel & Header Settings
[span_14](start_span)BOARD_BOOT_HEADER_VERSION := 4[span_14](end_span)
[span_15](start_span)BOARD_KERNEL_PAGESIZE := 4096[span_15](end_span)
[span_16](start_span)BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)[span_16](end_span)
[span_17](start_span)BOARD_VENDOR_RAMDISK_COMPRESSION := lz4[span_17](end_span)

# Partitions
[span_18](start_span)BOARD_FLASH_BLOCK_SIZE := 262144[span_18](end_span)
[span_19](start_span)BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592[span_19](end_span)
[span_20](start_span)BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608[span_20](end_span)
[span_21](start_span)BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296[span_21](end_span)

# Dynamic Partitions
[span_22](start_span)BOARD_SUPER_PARTITION_SIZE := 9663676416[span_22](end_span)
[span_23](start_span)BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions[span_23](end_span)
[span_24](start_span)BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 9659482112[span_24](end_span)

# Recovery & A/B Logic
[span_25](start_span)AB_OTA_UPDATER := true[span_25](end_span)
[span_26](start_span)BOARD_USES_RECOVERY_AS_BOOT := false[span_26](end_span)
[span_27](start_span)BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true[span_27](end_span)
[span_28](start_span)BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true[span_28](end_span)

# Crypto & Versioning
[span_29](start_span)PLATFORM_VERSION := 16.0.0[span_29](end_span)
[span_30](start_span)PLATFORM_SECURITY_PATCH := 2099-12-31[span_30](end_span)
[span_31](start_span)TW_INCLUDE_CRYPTO := true[span_31](end_span)
[span_32](start_span)TW_INCLUDE_CRYPTO_FBE := true[span_32](end_span)

# Screen
[span_33](start_span)TARGET_SCREEN_WIDTH := 2136[span_33](end_span)
[span_34](start_span)TARGET_SCREEN_HEIGHT := 3200[span_34](end_span)

# Fix for build errors
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

# Force the compiler to ignore size checks if it's slightly over
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296

