#!/usr/bin/env bash

# get path of script
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# sudo & sudo keep-alive
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# install latest node
nvm install node

# install pure theme
npm install --global pure-prompt

# install ultimate vim stuff
# git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
# sh ~/.vim_runtime/install_awesome_vimrc.sh

# move dotfiles/home stuff to ~/
cp -i -r $SCRIPTPATH/../home ~/

echo done!
exit