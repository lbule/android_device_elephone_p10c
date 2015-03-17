# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/elephone/з10с/full_hongyu82_wet_kk.mk)

PRODUCT_NAME := cm_hongyu82_wet_kk
PRODUCT_DEVICE := hongyu82_wet_kk
PRODUCT_BRAND := elephone
PRODUCT_MANUFACTURER := Elephone
PRODUCT_MODEL := P10C
