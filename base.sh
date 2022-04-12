#!/bin/sh

# base
opkg update && opkg install vim rsync cfdisk git git-http usbutils pciutils lsof coreutils-nohup speedtest-go
echo "set number" >> /usr/share/vim/vimrc
echo "set rnu" >> /usr/share/vim/vimrc
