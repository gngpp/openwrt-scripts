#!/bin/sh

P=$(pwd)
mkdir filebrowser && cd filebrowser
echo "install to $P/filebrowser"
opkg update && opkg install coreutils-nohup
wget https://github.com/filebrowser/filebrowser/releases/download/v2.21.1/linux-arm64-filebrowser.tar.gz
tar -zxvf ./linux-arm64-filebrowser.tar.gz
rm ./linux-arm64-filebrowser.tar.gz
chmod 777 ./filebrowser
./filebrowser config init
./filebrowser users add admin admin
./filebrowser config set --root /  --address 127.0.0.1
sed -i '$i\cd '`pwd`' && nohup ./filebrowser >/dev/null 2>&1 &'  /etc/rc.local
cat /etc/rc.local
nohup ./filebrowser >/dev/null 2>&1 &
