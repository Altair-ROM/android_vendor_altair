# Inherit common Lineage stuff
$(call inherit-product, vendor/altair/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
