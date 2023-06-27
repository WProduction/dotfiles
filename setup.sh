#!/bin/bash

git clone https://github.com/WProduction/Fonts.git ~/.local/share/fonts
git clone https://github.com/WProduction/Wallpapers.git ~/Wallpapers

mkdir ~/.config/awesome/
mv ~/.dotfiles/awesome/rc.lua ~/.config/awesome
ln ~/.config/awesome/rc.lua ~/.dotfiles/awesome

mkdir ~/.config/fish/
mv ~/.dotfiles/fish/config.fish ~/.config/fish
ln ~/.config/fish/config.fish ~/.dotfiles/fish

mkdir ~/.config/kitty/
mv ~/.dotfiles/kitty/kitty.conf ~/.config/kitty
ln ~/.config/kitty ~/.dotfiles/kitty

mkdir ~/.config/polybar/
mv ~/.dotfiles/polybar/config.ini  ~/.config/polybar
ln ~/.config/polybar/config.ini ~/.dotfiles/polybar
mv ~/.dotfiles/polybar/launch.sh ~/.config/polybar
chmod +x ~/.config/polybar/launch.sh
ln ~/.config/polybar/launch.sh ~/.dotfiles/polybar

mkdir ~/.config/rofi/
mv ~/.dotfiles/rofi/config.rasi ~/.config/rofi
ln ~/.config/rofi/config.rasi ~/.dotfiles/rofi

mkdir ~/rofi_wifi_menu
mv ~/.dotfiles/wifi_menu/rofi-wifi-menu.sh ~/rofi_wifi_menu
ln ~/rofi_wifi_menu/rofi-wifi-menu.sh ~/.dotfiles/wifi_menu
chmod +x ~/rofi_wifi_menu/rofi-wifi-menu.sh

mv ~/.dotfiles/feh/.fehbg ~/
ln ~/.fehbg ~/.dotfiles/feh
chmod +x ~/.fehbg

mkdir ~/.config/touchpad_changes/30-enable-natural-crolling-default.conf
mv ~/.dotfiles/touchpad_changes/30-enable-natural-crolling-default.conf /usr/share/X11/xorg.conf.d/
sudo ln /usr/share/X11/xorg.conf.d/30-enable-natural-crolling-default.conf ~/.dotfiles/touchpad_changes