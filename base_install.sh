#!/bin/bash

sudo nala install \
    sddm \
    kitty \
    xterm \
    awesome \
    dmenu \
    rofi \
    polybar \
    feh \
    pcmanfm \
    thunar thunar-archive-plugin \
    compton \
    lxsession \
    lxappearance\
    network-manager \
    fonts-font-awesome \
    gnome-themes-extra \
    network-manager-openvpn openvpn openvpn-systemd-resolved \
    ranger \
    fish \
    neofetch \
    htop \
    stow


#Get fonts and Wallpapers
git clone https://github.com/WProduction/Fonts.git ~/.local/share/fonts
git clone https://github.com/WProduction/Wallpapers.git ~/Wallpapers

#insatll of Starship Prompt
curl -sS https://starship.rs/install.sh | sh

#set fish as standard Shell
chsh -s $(which fish)

sudo rm -rf ~/.bashrc
sudo rm -rf ~/.config/fish/

cd .dotfiles
sudo stow .
cd ~

#change Touchpad settings
sudo ln -s ~/.dotfiles/.nocopy/touchpad_settings/30-enable-natural-crolling-default.conf /etc/X11/xorg.conf.d/

#link sddm Theme
sudo ln -s ~/.dotfiles/.nocopy/SDDMTheme/sddm-chili/ /usr/share/sddm/themes/

#Make scripts executable
sudo chmod +x ~/.config/polybar/launch.sh
sudo chmod +x ~/wifi_menu/rofi-wifi-menu.sh
sudo chmod +x ~/.fehbg
