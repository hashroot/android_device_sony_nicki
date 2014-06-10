# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for tsubasa
$(call inherit-product, device/sony/nicki/full_nicki.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C1905 \
    BUILD_FINGERPRINT="Sony/C1905/C1905:4.3/15.4.A.0.23/eng.user.20140307.104342:user/release-keys" \
    PRIVATE_BUILD_DESC="C1905-user 4.3 2.22.J.0.40 eng.user.20140307.104342 test-keys"

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true
