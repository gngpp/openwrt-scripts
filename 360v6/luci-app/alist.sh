#!/bin/sh

opkg update 
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.6.1/alist_2.6.1-1_aarch64_cortex-a53.ipk
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.6.1/luci-app-alist_1.0.3_all.ipk
wget https://github.com/sbwml/openwrt-alist/releases/download/v2.6.1/luci-i18n-alist-zh-cn_git-22.143.34569-5dc4e20_all.ipk

opkg install ./alist_2.6.1-1_aarch64_cortex-a53.ipk
opkg install ./luci-app-alist_1.0.3_all.ipk
opkg install ./luci-i18n-alist-zh-cn_git-22.143.34569-5dc4e20_all.ipk

rm ./alist_2.6.1-1_aarch64_cortex-a53.ipk
rm ./luci-app-alist_1.0.3_all.ipk
rm ./luci-i18n-alist-zh-cn_git-22.143.34569-5dc4e20_all.ipk
