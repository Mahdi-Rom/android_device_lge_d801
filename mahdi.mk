# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d801/d801.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d801
PRODUCT_NAME := mahdi_d801
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D801
PRODUCT_MANUFACTURER := lge

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_tmo_us/g2:4.2.2/JDQ39B/D80110c.1376399304:user/release-keys
PRIVATE_BUILD_DESC="g2_tmo_us-user 4.2.2 JDQ39B D80110c.1376399304 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
