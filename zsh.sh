#!/bin/zsh
opkg update && opkg install zsh

wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh && rm install.sh
source ~/.zshrc
which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd

