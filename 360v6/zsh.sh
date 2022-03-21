#!/bin/sh
opkg update
wget https://downloads.openwrt.org/releases/21.02.1/packages/aarch64_cortex-a53/packages/zsh_5.8-1_aarch64_cortex-a53.ipk
opkg install zsh_5.8-1_aarch64_cortex-a53.ipk
rm ./zsh_5.8-1_aarch64_cortex-a53.ipk

which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd
