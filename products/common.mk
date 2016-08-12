# Generic product
PRODUCT_NAME := oneofakind
PRODUCT_BRAND := oneofakind
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/oneofakind/overlay/common

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Extra packages
PRODUCT_PACKAGES += \
    Busybox

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/oneofakind/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip
