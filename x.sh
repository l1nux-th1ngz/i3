#!/bin/bash

sudo apt update && sudo apt upgrade -y
# Install all this
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y python3
sudo apt install -y dex
sudo apt install -y xorg
sudo apt install -y libc6
sudo apt install -y libcairo2
sudo apt install -y libev4
sudo apt install -y xbacklight
sudo apt install -y xbindkeys
sudo apt install -y xvkdb
sudo apt install -y xinput
sudo apt install -y xorg-dev
sudo apt install -y intel-microcode
sudo apt install -y network-manager-gnome
sudo apt install -y lxapperance
sudo apt install -y thunar
sudo apt install -y dialog
sudo apt install -y mtools
sudo apt install -y dosfstools
sudo apt install -y font-manager-common
sudo apt install -y font-manager
sudo apt install -y avahi-daemon
sudo apt install -y acpi
sudo apt install -y acpid
sudo apt install -y gvfs-backends
sudo apt install -y kitty
sudo apt install -y pulseaudio
sudo apt install -y alsa-utils
sudo apt install -y pavucontrol
sudo apt install -y gdebi
sudo apt install -y synaptic
sudo apt install -y volumeicon-alsa
sudo apt install -y neoftech
sudo apt install -y nala 
sudo apt install -y bluez
sudo apt install -y blueman
sudo apt install -y feh
sudo apt install -y meson
sudo apt install -y dh-autoreconf
sudo apt install -y libxcb-keysyms1-dev
sudo apt install -y libpango1.0-dev
sudo apt install -y libxcb-util0-dev
sudo apt install -y xcb
sudo apt install -y libxcb1-dev
sudo apt install -y libxcb-icccm4-dev
sudo apt install -y libyajl-dev
sudo apt install -y libev-dev
sudo apt install -y libxcb-xkb-dev
sudo apt install -y libxcb-cursor-dev
sudo apt install -y libxkbcommon-dev
sudo apt install -y libxcb-xinerama0-dev 
sudo apt install -y libxkbcommon-x11-dev
sudo apt install -y libstartup-notification0-dev
sudo apt install -y libxcb-randr0-dev
sudo apt install -y libxcb-xrm0
sudo apt install -y libxcb-xrm-dev
sudo apt install -y libxcb-shape0
sudo apt install -y libxcb-shape0-dev
sudo apt install -y dmenu
sudo apt install -y numlockx
sudo apt install -y rofi
sudo apt install -y dunst
sudo apt install -y libnotify-bin
sudo apt install -y picom
sudo apt install -y zip
sudo apt install -y unzip
sudo apt install -y geany
sudo apt install -y geany-plugins
sudo apt install -y notepadqq
sudo apt install -y simplescreenrecorder
sudo apt install -y xdg-user-dirs
sudo apt install -y xdg-user-dirs-gtk
sudo apt install -y pipewire
sudo apt install -y wireplumber
sudo apt install -y build-essential
sudo apt install -y udisks2
sudo apt install -y udiskie
sudo apt install -y polybar
sudo apt install -y cmus
sudo apt install -y mpv
sudo apt install -y mpd
sudo apt install -y vlc
sudo apt install -y cmake
sudo apt install -y cmake-data
sudo apt install -y pkg-config
sudo apt install -y python3-sphinx
sudo apt install -y python3-packaging
sudo apt install -y libuv1-dev
sudo apt install -y libcairo2-dev
sudo apt install -y libxcb1-dev
sudo apt install -y libxcb-util0-dev
sudo apt install -y libxcb-randr0-dev
sudo apt install -y libxcb-composite0-dev
sudo apt install -y python3-xcbgen
sudo apt install -y xcb-proto
sudo apt install -y libxcb-image0-dev
sudo apt install -y libxcb-ewmh-dev
sudo apt install -y libxcb-icccm4-dev
sudo apt install -y libxcb-xkb-dev
sudo apt install -y libxcb-xrm-dev
sudo apt install -y libxcb-cursor-dev
sudo apt install -y libasound2-dev
sudo apt install -y libpulse-dev
sudo apt install -y libjsoncpp-dev
sudo apt install -y libmpdclient-dev
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y libnl-genl-3-dev
sudo apt install -y cava
sudo apt install -y libgtkmm-3.0-dev
sudo apt install -y libgtk-3-dev
sudo apt install -y terminator
sudo apt install -y npm
sudo apt install -y golang-go
sudo apt install -y mpdris2
sudo apt install -y gvfs
sudo apt install -y bzip2
sudo apt install -y thefuck
sudo apt install -y cpio
sudo apt install -y fakeroot
sudo apt install -y gzip
sudo apt install -y lz4
sudo apt install -y lshw
sudo apt install -y ucf
sudo apt install -y whiptale
sudo apt install -y xdg-utils
sudo apt install -y xz-utils
sudo apt install -y zstd
sudo apt install -y qt5-style-kvantum-themes
sudo apt install -y qt5-style-kvantum-l10n
sudo apt install -y autoconf
sudo apt install -y autoconf-archive
sudo apt install -y autotools-dev
sudo apt install -y pkg-config
sudo apt install -y automake
sudo apt install -y p7zip-full
sudo apt install -y imagemagick 
sudo apt install -y python3-pip
sudo apt install -y yad
sudo apt install -y zenity
sudo apt install -y qt5ct
sudo apt install -y mintstick
sudo apt install -y scrot
sudo apt install -y maim
sudo apt install -y suckless-tools
sudo apt install -y hsetroot 
sudo apt install -y rxvt-unicode
sudo apt install -y xsel
sudo apt install -y xsettingsd 
sudo apt install -y viewnior
sudo apt install -y chromium
sudo apt install -y playerctl
sudo apt install -y brightnessctl
sudo apt install -y ffmpeg
sudo apt install -y ncmpc
sudo apt install -y ncmpc-lyrics
sudo apt install -y ncmpcpp
sudo apt install -y osdlyrics
sudo apt install -y upower
sudo apt install -y gparted
sudo apt install -y gnome-disk-utility

# Wait for Install to complete
wait
# Update 
sudo apt update && sudo apt upgrade -y

sleep 7 &
PID=$!
i=1
sp="/-\|"
echo -n ' '
while [ -d /proc/$PID ]
do
  printf "\b${sp:i++%${#sp}:1}"
done

# reboot
sudo reboot
