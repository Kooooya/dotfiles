#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s /usr/bin/zsh
cp ./.zshrc ~
cp ./.gitconfig ~
cp ./.gitignore_global ~
cp -r ./.vim ~/.vim
cp ./.vimrc ~
source ~/.zshrc
