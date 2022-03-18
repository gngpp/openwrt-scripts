#!/bin/sh

opkg update
wget https://downloads.openwrt.org/releases/21.02.1/packages/aarch64_cortex-a53/packages/frpc_0.34.3-1_aarch64_cortex-a53.ipk
wget https://downloads.openwrt.org/releases/21.02.1/packages/aarch64_cortex-a53/packages/frps_0.34.3-1_aarch64_cortex-a53.ipk

wget https://op.supes.top/packages/aarch64_generic/luci-app-frpc_1.4_all.ipk
wget https://op.supes.top/packages/aarch64_generic/luci-app-frps_0.0.2_all.ipk

opkg install frpc_0.34.3-1_aarch64_cortex-a53.ipk frps_0.34.3-1_aarch64_cortex-a53.ipk
opkg install luci-app-frpc_1.4_all.ipk luci-app-frps_0.0.2_all.ipk

rm ./frpc_0.34.3-1_aarch64_cortex-a53.ipk && rm ./frps_0.34.3-1_aarch64_cortex-a53.ipk
rm ./luci-app-frpc_1.4_all.ipk && rm ./luci-app-frps_0.0.2_all.ipk
