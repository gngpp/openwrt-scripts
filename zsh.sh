#!/bin/zsh
opkg update && opkg install zsh git git-http
which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
