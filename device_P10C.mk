$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/elephone/P10C/P10C-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/elephone/P10C/overlay

LOCAL_PATH := device/elephone/P10C
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif


PRODUCT_PACKAGES += \
    lights.mt6582

PRODUCT_PACKAGES += \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.mt6582

PRODUCT_PACKAGES += \
    audio_policy.default

PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
    SIMSwitcher

PRODUCT_COPY_FILES += \
    device/elephone/P10C/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    device/elephone/P10C/configs/mtk-tpd.kl:system/usr/keylayout/mtk-tpd.kl

PRODUCT_COPY_FILES += \
    device/elephone/P10C/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
	device/elephone/P10C/rootdir/factory_init.rc:root/factory_init.rc \
	device/elephone/P10C/rootdir/fstab.mt6582:root/fstab.mt6582 \
	device/elephone/P10C/rootdir/init.fuse.rc:root/init.fuse.rc\
	device/elephone/P10C/rootdir/init.modem.rc:root/init.modem.rc \
	device/elephone/P10C/rootdir/init.mt6582.rc:root/init.mt6582.rc \
	device/elephone/P10C/rootdir/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
    device/elephone/P10C/rootdir/init.project.rc:root/init.project.rc \
    device/elephone/P10C/rootdir/init.rc:root/init.rc \
    device/elephone/P10C/rootdir/init.recovery.mt6582.rc:root/init.recovery.mt6582.rc \
    device/elephone/P10C/rootdir/recovery.fstab:root/recovery.fstab \
    device/elephone/P10C/rootdir/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

PRODUCT_COPY_FILES += \
    device/elephone/P10C/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/elephone/P10C/configs/media_profiles.xml:system/etc/media_profile.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.secure=1 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
	ro.telephony.ril_class=SproutRIL \
    persist.service.debuggable=1

PRODUCT_PACKAGES += \
    Torch

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_P10C
PRODUCT_DEVICE := P10C

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
