# Inherit mini common Lineage stuff
$(call inherit-product, vendor/altair/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
