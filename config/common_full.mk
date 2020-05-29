# Inherit common Lineage stuff
$(call inherit-product, vendor/altair/config/common_mobile.mk)

PRODUCT_SIZE := full

# Themes and Overlays
$(call inherit-product, packages/overlays/Lineage/themes_full.mk)

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    LineageLatoFont \
    LineageRubikFont

# Recorder
PRODUCT_PACKAGES += \
    Recorder
