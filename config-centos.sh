#!/bin/sh

echo "Configuring CentOS"

yum install -y git zsh vim curl

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc


git clone https://github.com/ugosan/config.git /tmp/ugosan-config
cp /tmp/ugosan-config/ugo.zsh-theme ~/.oh-my-zsh/themes/ugo.zsh-theme
cp /tmp/vim/vimrc ~/.vimrc

sed '/ZSH_THEME/ s/^#*/#/' ~/.oh-my-zsh > ~/.oh-my-zsh
echo 'ZSH_THEME="ugo"' >> ~/.oh-my-zsh
echo 'alias ll="ls -lah"' >> ~/.oh-my-zsh

chsh -s /bin/zsh