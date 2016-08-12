# Inherit AOSP device configuration for nozomi
$(call inherit-product, device/sony/nozomi/full_nozomi.mk)

# Inherit common product files.
$(call inherit-product, vendor/oneofakind/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := oneofakind_nozomi
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := nozomi
PRODUCT_MODEL := Xperia S
PRODUCT_MANUFACTURER := Sony

