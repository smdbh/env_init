#!/bin/bash

echo "Custom user configurations..."

# apt install
apt update
apt install -y byobu vim zsh  htop zip unzip  net-tools locate


# copy dotfiles
script_dir=$(dirname "$(readlink -f "$0")")
ln -s $script_dir/.vimrc ~/.vimrc
ln -s $script_dir/z.sh ~/z.sh
ln -s $script_dir/.zshrc ~/.zshrc


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo chsh -s /usr/bin/zsh `whoami`
