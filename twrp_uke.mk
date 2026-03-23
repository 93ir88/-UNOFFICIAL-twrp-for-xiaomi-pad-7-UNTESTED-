# Release name
PRODUCT_RELEASE_NAME := Xiaomi Pad 7

# Inherit from OMNI
$(call inherit-product, build/target/product/base.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/uke/device.mk)

## Device identifier
PRODUCT_DEVICE := uke
PRODUCT_NAME := twrp_uke
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2410CRP4CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="uke_global-user 14 UKQ1.240624.001 OS3.0.8.0.WOZMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/uke_global/uke:14/UKQ1.240624.001/OS3.0.8.0.WOZMIXM:user/release-keys
