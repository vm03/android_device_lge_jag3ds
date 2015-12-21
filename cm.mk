# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/g3s-common/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := jag3gds
PRODUCT_RELEASE_NAME := LG G3s
PRODUCT_NAME := cm_jag3gds
PRODUCT_BRAND := LG
PRODUCT_MODEL := LG-D724
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=jag3gds_global_com \
    BUILD_FINGERPRINT=lge/jag3gds_global_com/jag3gds:5.1.1/LMY48M/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="jag3gds_global_com-user 5.0.1 5.1.1 LMY48M 2167285 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.radio.dont_use_dsd=true \
    persist.radio.msgtunnel.start=false

$(call inherit-product, vendor/lge/jag3gds/jag3gds-vendor.mk)