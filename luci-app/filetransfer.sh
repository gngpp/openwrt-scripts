#!/bin/sh
opkg update
wget https://op.supes.top/packages/aarch64_generic/luci-lib-fs_1.0-6_all.ipk
wget wget https://op.supes.top/packages/aarch64_generic/luci-app-filetransfer_git-22.049.56376-f644175_all.ipk

opkg install luci-lib-fs_1.0-6_all.ipk
opkg install luci-app-filetransfer_git-22.049.56376-f644175_all.ipk

rm luci-lib-fs_1.0-6_all.ipk
rm luci-app-filetransfer_git-22.049.56376-f644175_all.ipk
