# Inherit mini common Lineage stuff
$(call inherit-product, vendor/altair/config/common_mobile.mk)

PRODUCT_SIZE := mini

# Themes and Overlays
$(call inherit-product, packages/overlays/Lineage/overlays_mini.mk)
