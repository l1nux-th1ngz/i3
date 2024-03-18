#!/bin/bash


sudo apt remove -y hexchat

sudo apt remove -y compiz
sudo apt remove -y compiz-core
sudo apt remove -y compiz-gnome
sudo apt remove -y compiz-plugins
sudo apt remove -y compizconfig-settings-manager
sudo apt remove -y libcompizconfig0
sudo apt remove -y libdecoration0
sudo apt remove -y pyhton3-compizconfig

sudo apt remove -y aspell
sudo apt remove -y dictionaries-common
sudo apt remove -y enchant-2
sudo apt remove --purge cups* -y
sudo apt clean -y


sudo apt remove -y transmission-gtk
sudo apt remove -y transmission-common
sudo apt remove -y transmission-qt
sudo apt remove -y transmission-cli

sudo apt remove -y mint-backgrounds-vanessa
sudo apt remove -y mint-backgrounds-vera

sudo apt remove -y onboard onboard-common

sudo apt remove -y thunderbird
sudo apt remove -y gnome-calendar
sudo apt remove -y webapp-manager
sudo apt remove -y thingy

sudo apt remove -y celluloid 
sudo apt remove -y rhythmbox rhythmbox-data
sudo apt remove -y hypnotix 
sudo apt remove -y sticky
sudo apt remove -y timeshift
sudo apt remove -y seahorse
sudo apt remove -y simple-scan

sudo apt remove --purge libreoffice* -y
sudo apt clean -y

sudo apt autoremove -y

echo "################################################################"
echo "###################    Packages removed   ######################"
echo "################################################################"
