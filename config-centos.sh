#!/bin/sh

echo "Configuring CentOS"

yum install -y git zsh vim curl

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp -i ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc


git clone https://github.com/ugosan/config.git /tmp/ugosan-config
cp -i /tmp/ugosan-config/zsh/ugo.zsh-theme ~/.oh-my-zsh/themes/ugo.zsh-theme
cp -i /tmp/ugosan-config/zsh/zshrc ~/.zshrc
cp -i /tmp/ugosan-config/vim/vimrc ~/.vimrc


chsh -s /bin/zsh