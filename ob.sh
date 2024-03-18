#!/bin/bash

# Install necessary packages
sudo apt install -y openbox
sudo apt install -y xorg
sudo apt install -y menu
sudo apt install -y terminator
sudo apt install -y kitty
sudo apt install -y lightdm 
sudo apt install -y feh
sudo apt install -y nitrogen
sudo apt install -y thunar
sudo apt install -y synaptic
sudo apt install -y gdebi
sudo apt install -y lxappearance
sudo apt install -y dunst
sudo apt install -y picom
sudo apt install -y playerctl
sudo apt install -y brightnessctl
sudo apt install -y geany
sudo apt install -y geany-plugins
sudo apt install -y notepadqq
sudo apt install -y xdg-user-dirs
sudo apt install -y xdg-user-dirs-gtk

# Update user dirs
xdg-user-dirs-update
