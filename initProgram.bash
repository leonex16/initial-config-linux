#!/bin/bash

# Main Packages
sudo pacman -Syyu -y &&
sudo pacman -S base-devel neofetch git zip unzip unrar neovim alacritty -y &&

# Yay Setup
git clone https://aur.archlinux.org/yay.git && cd yay/ && makepkg -sic -y && cd .. && rm -rf yay/ &&

yay -Syuua -y &&

# Browsers
yay -S firefox-developer-edition google-chrome microsoft-edge-stable-bin -y &&

# Snap Setup
yay -S snapd -y &&
sudo systemctl enable --now snapd.socket &&
sudo ln -s /var/lib/snapd/snap /snap &&

# Snap Packages
sudo snap install code --classic &&

# Qtile Setup
lspci -v | grep -A1 -e VGA -e 3D
sudo pacman -S xf86-video-intel xorg-server xorg-xinit xorg-apps picom feh dmenu qtile
echo "qtile start" > ~/.xinitrc

# LightDM Setup
sudo pacmas -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm.service




