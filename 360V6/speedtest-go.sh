#!/bin/sh

P=$(pwd)
mkdir speedtest-go && cd speedtest-go
echo "install to $P/speedtest-go"
opkg update && opkg install coreutils-nohup
wget https://github.com/librespeed/speedtest-go/releases/download/v1.1.4/speedtest-go_1.1.4_linux_arm64.tar.gz
tar -zxvf ./speedtest-go_1.1.4_linux_arm64.tar.gz
rm ./speedtest-go_1.1.4_linux_arm64.tar.gz
chmod 777 ./speedtest-backend
echo "cd $P/speedtest-go && nohup ./speedtest-backend >/dev/null 2>&1 &"
nohup ./speedtest-backend >/dev/null 2>&1 &
