#!/bin/sh

opkg update
wget https://mirrors.vsean.net/openwrt/releases/21.02.0/packages/aarch64_cortex-a53/packages/git_2.34.3-1_aarch64_cortex-a53.ipk
wget https://mirrors.vsean.net/openwrt/releases/21.02.0/packages/aarch64_cortex-a53/packages/git-http_2.34.3-1_aarch64_cortex-a53.ipk

opkg install ./git_2.34.3-1_aarch64_cortex-a53.ipk
opkg install ./git-http_2.34.3-1_aarch64_cortex-a53.ipk

rm ./git_2.34.3-1_aarch64_cortex-a53.ipk
rm ./git-http_2.34.3-1_aarch64_cortex-a53.ipk
