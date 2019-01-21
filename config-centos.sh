#!/bin/sh

echo "Configuring CentOS"

yum install -y git zsh vim curl

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc


git clone https://github.com/ugosan/config.git /tmp/ugosan-config
cp /tmp/ugosan-config/zsh/ugo.zsh-theme ~/.oh-my-zsh/themes/ugo.zsh-theme
cp /tmp/ugosan-config/vim/vimrc ~/.vimrc

sed '/ZSH_THEME/ s/^#*/#/' ~/.zshrc > ~/.zshrc
echo 'ZSH_THEME="ugo"' >> ~/.zshrc
echo 'alias ll="ls -lah"' >> ~/.zshrc

chsh -s /bin/zsh