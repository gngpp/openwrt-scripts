#!/bin/ash

# base
opkg update && opkg install vim rsync cfdisk git git-http usbutils pciutils lsof coreutils-nohup
echo "set number" >> /usr/share/vim/vimrc
echo "set rnu" >> /usr/share/vim/vimrc
