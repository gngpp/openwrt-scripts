#!/bin/ash

wget https://github.com/hxhwing0522/luci-app-filebrowser/raw/master/luci-app-filebrowser.ipk
opkg install luci-app-filebrowser.ipk 
rm luci-app-filebrowser.ipk
