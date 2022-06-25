#!/bin/bash

echo "Custom user configurations..."

# apt install
sudo apt-get update
sudo apt-get install -y byobu htop zip unzip  locate #  net-tools

cd ~
mv .z.sh z.sh


