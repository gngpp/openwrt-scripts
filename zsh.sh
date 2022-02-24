#!/bin/zsh
opkg update && opkg install zsh wget unzip ca-certificates

sh -c "$(wget -O- https://raw.githubusercontent.com/felix-fly/openwrt-ohmyzsh/master/install.sh)"

which zsh && sed -i -- 's:/bin/ash:'`which zsh`':g' /etc/passwd
source ~/.zshrc

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" >> ~/.zshrc

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" >> ~/.zshrc

source ~/.zshrc
