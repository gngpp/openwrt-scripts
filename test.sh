#!/bin/sh
cat /etc/opkg/distfeeds.conf

cat > /etc/opkg/distfeeds.conf <<EOF
src/gz openwrt_base https://openwrt.888913.gq/aarch64_cortex-a53/base
src/gz openwrt_luci https://openwrt.888913.gq/aarch64_cortex-a53/luci
src/gz openwrt_packages https://openwrt.888913.gq/aarch64_cortex-a53/packages
src/gz openwrt_routing https://openwrt.888913.gq/aarch64_cortex-a53/routing
src/gz openwrt_telephony https://openwrt.888913.gq/aarch64_cortex-a53/telephony
EOF

cat /etc/opkg/distfeeds.conf

opkg update && opkg install luci-i18n-passwall-zh-cn
