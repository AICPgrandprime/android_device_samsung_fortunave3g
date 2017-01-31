#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltecan/gprimeltecan-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltecan

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimeltecan/overlay

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/dt.img:dt.img

# Configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermal-engine-8916.conf:system/etc/thermal-engine-8916.conf
	
# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/General_cal.acdb:system/etc/General_cal.acdb \
	$(LOCAL_PATH)/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
	$(LOCAL_PATH)/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
	$(LOCAL_PATH)/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
	$(LOCAL_PATH)/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/media_codecs_8929.xml:system/etc/media_codecs_8929.xml \
	$(LOCAL_PATH)/media/media_codecs_8939.xml:system/etc/media_codecs_8939.xml \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530W \
	ro.product.device=gprimeltecan

