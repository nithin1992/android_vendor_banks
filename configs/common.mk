# Generic product
PRODUCT_NAME := banks
PRODUCT_BRAND := banks
PRODUCT_DEVICE := generic

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Needed packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/banks/overlays

# World apn list from CM
PRODUCT_COPY_FILES += \
    vendor/banks/proprietary/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# Proprietary latinime lib for swyping
PRODUCT_COPY_FILES += \
    vendor/banks/proprietary/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/banks/proprietary/system/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit kitkat audio package.
$(call inherit-product, vendor/banks/configs/kitkataudio.mk)
