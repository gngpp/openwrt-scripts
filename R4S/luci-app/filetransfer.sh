#!/bin/sh
opkg update
wget https://op.supes.top/packages/aarch64_generic/luci-lib-fs_1.0-8_all.ipk
wget https://op.supes.top/packages/aarch64_generic/luci-app-filetransfer_git-22.138.56692-eb87df8_all.ipk

opkg install luci-lib-fs_1.0-8_all.ipk
opkg install luci-app-filetransfer_git-22.138.56692-eb87df8_all.ipk

rm luci-lib-fs_1.0-8_all.ipk
rm luci-app-filetransfer_git-22.138.56692-eb87df8_all.ipk
