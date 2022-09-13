#!/bin/bash

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  --skip-chsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-autosuggestions

sed -i '73d' /home/zongxin/.zshrc
sed -i '73i\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' /home/zongxin/.zshrc

sed -i 's/%c%/[\$PWD]%/' /home/zongxin/.oh-my-zsh/themes/robbyrussell.zsh-theme
