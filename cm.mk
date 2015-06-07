## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := P10C

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/elephone/P10C/device_P10C.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P10C
PRODUCT_NAME := cm_P10C
PRODUCT_BRAND := elephone
PRODUCT_MODEL := P10C
PRODUCT_MANUFACTURER := elephone
