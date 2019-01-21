#!/bin/sh

echo "Configuring CentOS"

yum install -y git zsh vim curl

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/ugosan/config.git /tmp/ugosan-config

yes | cp -rf ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
yes | cp -rf /tmp/ugosan-config/zsh/ugo.zsh-theme ~/.oh-my-zsh/themes/ugo.zsh-theme
yes | cp -rf /tmp/ugosan-config/zsh/zshrc ~/.zshrc
yes | cp -rf /tmp/ugosan-config/vim/vimrc ~/.vimrc

chsh -s /bin/zsh