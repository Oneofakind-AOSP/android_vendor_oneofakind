# Generic product
PRODUCT_NAME := oneofakind
PRODUCT_BRAND := oneofakind
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dataroaming=false \
    ro.adb.secure=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/oneofakind/overlay/common

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Extra packages
PRODUCT_PACKAGES += \
    Busybox

# Oneofakind™ Home
ifneq ($(filter oneofakind_nozomi oneofakind_devices-with-no-navigation-bar,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    OneofakindHome
else
PRODUCT_PACKAGES += \
    OneofakindHomeOsb
endif

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/oneofakind/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip
