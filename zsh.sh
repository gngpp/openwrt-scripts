#!/bin/zsh
opkg update && opkg install zsh git git-http

sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"

which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd
source ~/.zshrc
