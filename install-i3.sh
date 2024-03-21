#!/bin/bash

# Essential packages installation
sudo apt install -y gdebi synaptic git curl wget xorg xbacklight xbindkeys xvkbd xinput xorg-dev python3-pip nala intel-microcode

# GoLang Installation
# Download and extract GoLang
wget https://golang.org/dl/go1.17.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
# Add GoLang PATH
echo "export PATH=/usr/local/go/bin:${PATH}" | sudo tee -a $HOME/.profile
# Load the new PATH configuration
source $HOME/.profile

# RustUp Installation
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --profile complete --default-toolchain stable
# Load the new PATH configuration for Rust
source $HOME/.cargo/env

# NodeJs Installation
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs

# Network Manager
sudo apt install -y network-manager-gnome

# Appearance management
sudo apt install -y lxappearance

# File Manager
sudo apt install -y thunar thunar-volman tumbler thunar-archive-plugin thunar-media-tags-plugin

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal
sudo apt install -y kitty

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Custom packages
sudo apt install -y mpd mpc spotify-client synaptics gdebi geany geany-plugins notepadqq exa chromium feh scrot maim

# Printing and Bluetooth
sudo apt install -y bluez blueman
sudo systemctl enable bluetooth

# Other packages
sudo apt install -y libpam0g-dev libxcb-xkb-dev

# Required packages for i3-gaps installation
sudo apt install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status

# Additional packages for i3-gaps
sudo apt install -y dmenu sxhkd numlockx rofi dunst libnotify-bin picom unzip geany simple-scan

# Command line text editor
sudo apt install -y micro

# Install fonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus fonts-cascadia-code

# Create user directories
sudo apt install -y xdg-user-dirs-gtk xdg-user-dirs
xdg-user-dirs-update

# Install i3 gaps
wget http://ftp.mx.debian.org/debian/pool/main/o/openbox/openbox_3.6.1-10_amd64.deb
sudo dpkg -i openbox_3.6.1-10_amd64.deb


# Update
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install --no-install-recommends -y kvantum
