#!/bin/ash

# base
opkg update && opkg install vim rsync cfdisk git git-http usbutils pciutils lsof coreutils-nohup
sed -i 's/"\?set number/set number/' /usr/share/vim/vimrc
sed -i 's/"\?set rnu/set rnu/' /usr/share/vim/vimrc
