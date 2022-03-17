#!/bin/sh
opkg update && opkg install luci-nginx nginx-ssl
wget https://op.supes.top/packages/aarch64_generic/luci-app-nginx-manager_git-22.019.34307-0550908_all.ipk
opkg install luci-app-nginx-manager_git-22.019.34307-0550908_all.ipk
rm luci-app-nginx-manager_git-22.019.34307-0550908_all.ipk
