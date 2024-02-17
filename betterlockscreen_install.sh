#!/bin/bash

mkdir ~/Programme/
sudo nala install imagemagick autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
git clone https://github.com/Raymo111/i3lock-color.git ~/Programme/i3lock-color/
cd ~/Programme/i3lock-color
./build.sh
./install-i3lock-color.sh
cd ~

mkdir ~/Programme/betterlockscreen/
cd ~/Programme/betterlockscreen/
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
cd ~

