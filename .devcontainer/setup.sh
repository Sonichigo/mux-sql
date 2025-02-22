#!/bin/bash

set -e
uname -a
docker --version

echo "Installing Keploy Binaries"
sudo curl --silent -O -L https://keploy.io/install.sh && source install.sh
echo "Keploy Binaries Installed"
keploy -v

echo "Installed oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"