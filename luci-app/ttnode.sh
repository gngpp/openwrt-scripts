#!/bin/sh
opkg update
wget https://github.com/jerrykuku/luci-app-ttnode/releases/download/v0.2/luci-app-ttnode_0.2-20210121_all.ipk
opkg install luci-app-ttnode_0.2-20210121_all.ipk
rm luci-app-ttnode_0.2-20210121_all.ipk
