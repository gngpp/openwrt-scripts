#!/bin/sh
opkg update && opkg install zsh

which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd
