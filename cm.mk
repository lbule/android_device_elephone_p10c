## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := p10c

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/elephone/p10c/device_p10c.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p10c
PRODUCT_NAME := cm_p10c
PRODUCT_BRAND := elephone
PRODUCT_MODEL := p10c
PRODUCT_MANUFACTURER := elephone
