#!/bin/sh
opkg update
wget https://op.supes.top/packages/aarch64_generic/npc_0.26.10-26_aarch64_generic.ipk
wget https://op.supes.top/packages/aarch64_generic/nps_0.26.10-26_aarch64_generic.ipk
wget https://op.supes.top/packages/aarch64_generic/luci-app-nps_git-22.138.56692-eb87df8_all.ipk
wget https://op.supes.top/packages/aarch64_generic/luci-app-npc_git-22.138.56692-eb87df8_all.ipk

opkg install npc_0.26.10-26_aarch64_generic.ipk nps_0.26.10-26_aarch64_generic.ipk luci-app-nps_git-22.138.56692-eb87df8_all.ipk luci-app-npc_git-22.138.56692-eb87df8_all.ipk

rm ./luci-app-npc_git-22.138.56692-eb87df8_all.ipk
rm ./luci-app-nps_git-22.138.56692-eb87df8_all.ipk
rm ./nps_0.26.10-26_aarch64_generic.ipk
rm ./npc_0.26.10-26_aarch64_generic.ipk
