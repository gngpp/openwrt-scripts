#!/bin/sh

opkg update
wget https://op.supes.top/packages/aarch64_generic/vsftpd-alt_3.0.5-14_aarch64_generic.ipk
wget https://op.supes.top/packages/aarch64_generic/luci-app-vsftpd_git-22.049.56376-f644175_all.ipk

opkg install vsftpd-alt_3.0.5-14_aarch64_generic.ipk
opkg install luci-app-vsftpd_git-22.049.56376-f644175_all.ipk

rm vsftpd-alt_3.0.5-14_aarch64_generic.ipk
rm luci-app-vsftpd_git-22.049.56376-f644175_all.ipk
