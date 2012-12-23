## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := I997

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/infuse4g/full_infuse4g.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_COPY_FILES += \
vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
ro.camera.res=8MP

#copy 00check
PRODUCT_COPY_FILES += \
vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := infuse4g
PRODUCT_NAME := slim_infuse4g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I997

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I997 TARGET_DEVICE=SGH-I997 BUILD_FINGERPRINT=samsung/SGH-I997/SGH-I997:4.1.2/JZO54K:user/release-keys PRIVATE_BUILD_DESC="SGH-I997-userdebug 4.2.1 JZO54K user.ar.20120828.002056 release-keys"
