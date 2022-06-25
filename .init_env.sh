#!/bin/bash

echo "Custom user configurations..."

# apt install
sudo apt-get update
sudo apt-get install -y byobu vim zsh  htop zip unzip  net-tools locate

source ~/.z.sh

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


