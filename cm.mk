# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, device/sony/tianchi/aosp_d5303.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/tianchi/bootrec-device:root/sbin/bootrec-device

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5303
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5303/D5303:4.4.3/19.1.1.A.0.165/Wv93Zw:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5303-user 4.4.3 19.1.1.A.0.165 Wv93Zw release-keys"

PRODUCT_NAME := cm_tianchi
PRODUCT_DEVICE := tianchi
PRODUCT_MODEL := Xperia T2 Ultra
