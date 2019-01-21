#!/bin/sh

echo "Configuring CentOS"

yum install -y git zsh vim curl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/ugosan/config.git /tmp/ugosan-config
cp /tmp/ugosan-config/ugo.zsh-theme ~/.oh-my-zsh/themes/ugo.zsh-theme
cp /tmp/vim/vimrc ~/.vimrc

sed '/ZSH_THEME/ s/^#*/#/' ~/.oh-my-zsh > ~/.oh-my-zsh
echo 'ZSH_THEME="ugo"' >> ~/.oh-my-zsh
echo 'alias ll="ls -lah"' >> ~/.oh-my-zsh
