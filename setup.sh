#!/bin/bash


#install of base applications
sudo nala install \
    kitty \
    xterm \
    awesome \
    dmenu \
    rofi \
    polybar \
    feh \
    pcmanfm \
    thunar thunar-archive-plugin \
    firefox \
    compton \
    lxsession \
    network-manager \
    fonts-font-awesome \
    lxappearence \
    gnome-themes-extra \
    network-manager-openvpn openvpn openvpn-systemd-resolved \
    ranger \
    fish \
    neofetch \
    htop \
    stow

#insatll of latest Version of NeoVim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo nala install neovim

#Get fonts and Wallpapers
git clone https://github.com/WProduction/Fonts.git ~/.local/share/fonts
git clone https://github.com/WProduction/Wallpapers.git ~/Wallpapers

#insatll of Starship Prompt
curl -sS https://starship.rs/install.sh | sh

#insall of betterlockscreen
sudo nala install xdpyinfo xrandr xrdb xset imagemagick
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
./build.sh
./install-i3lock-color.sh
cd ~

wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

betterlockscreen -u ~/Wallpapers/fantasySky.jpg --fx blur

#set fish as standard Shell
chsh -s $(which fish)

#install of NeoVim Pacman
git clone --depth 1 https://github.com/wbthomason/packer.nvim\\\n ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cd .dotfiles
sudo stow .
cd ~
