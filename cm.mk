## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/cube/u30gt2/full_u30gt2.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Release name
PRODUCT_RELEASE_NAME := u30gt2

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u30gt2
PRODUCT_NAME := cm_u30gt2
PRODUCT_BRAND := cube
PRODUCT_MODEL := u30gt2
PRODUCT_MANUFACTURER := cube
