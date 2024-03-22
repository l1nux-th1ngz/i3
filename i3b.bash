#!/bin/bash

# i3
sudo apt install -y i3
sudo apt install -y i3-wm
sudo apt install -y i3lock
sudo apt install -y i3status
 
# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev

# Python installed for bumblebee-status. PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential libssl-dev python3-dev
sudo apt install -y python3-pip libffi-dev python3-dev

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Appearance management
sudo apt install -y lxappearance 

# File Manager
sudo apt install -y thunar ranger
sudo apt install xdg-user-dirs xdg-user-dirs-gtk

# Make Dirs
xdg-user-dirs-update

# Package management
sudo apt install -y nala
sudo apt install -y gdebi
sudo apt install -y synaptic


# Network
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal 
sudo apt install -y kitty terminator

# Sound
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Sys Monitors
sudo apt install -y neofetch htop btop


# Bluetooth
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sleep 1
sudo apt install -y rofi picom nitrogen lxpolkit x11-xserver-utils wget pipewire wireplumber pavucontrol 
# Enable wireplumber
sudo -u $username systemctl --user enable wireplumber.service
sleep 1
sudo apt install -y libx11-dev libxft-dev libxinerama-dev libx11-xcb-dev libxcb-res0-dev zoxide
sudo apt install -y psmisc mangohud vim lxappearance papirus-icon-theme lxappearance fonts-noto-color-emoji



# Browsers
sudo apt install -y chromium

# Desktop background browser/handler 

sudo apt install -y feh scrot curl

# Required packages
sudo apt install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status

# Packages needed i3-gaps after installation
sudo apt install -y dmenu sxhkd numlockx rofi dunst libnotify-bin picom unzip zip 

# Text editors
sudo apt install -y notepadqq
sudo apt install -y neovim
sudo apt install -y geany geany-plugins

# fairyglade/lyonts
sudo apt install -y fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus fonts-cascadia-code



# Dependencies for Ly Console Manager
sudo apt install -y libpam0g-dev libxcb-xkb-dev




sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm


# XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp

########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/i3gaps-debian/nerdfonts.sh
source ~/i3gaps-debian/copyconf.sh

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
