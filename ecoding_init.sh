#!/bin/bash

# change debain source list
sed -i 's#http://deb.debian.org#https://mirrors.ustc.edu.cn#g' /etc/apt/sources.list

apt update
apt install -y cmake
