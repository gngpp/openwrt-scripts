#!/bin/zsh
opkg update && opkg install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd
source ~/.zshrc
