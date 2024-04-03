# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/lineage/compat to avoid conflicts
rm -rf hardware/lineage/compat/Android.bp

# Vendor & Kernel Sources
git clone https://github.com/tanvirr007/vendor_xiaomi_spes -b 13.0 vendor/xiaomi/spes
git clone https://github.com/tanvirr007/kernel_xiaomi_sm6225 kernel/xiaomi/sm6225
