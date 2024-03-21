function menu(){
    clear
    echo "Install i3"
    echo "[+] I3 WM [+]"
    echo "1 Arch Linux"
    echo ""
    echo "2 Debian / Ubuntu"
    echo ""
    echo "By redghost"
    echo ""
    read -p "Select: " opt

    if [ "$opt" = "1" ]; then
        arch
    elif [ "$opt" = "2" ]; then
        debian
    else
        echo "Invalid option or no option selected. Exiting."
        exit 1
    fi
}

function arch(){
    clear
    echo "Install I3"
    sudo pacman -Sy i3
    clear
    sudo pacman -Sy picom feh polybar rofi kitty unzip
    clear
    echo "Config Polybar"
    sleep 2
    echo "recommended option Simple"
    sleep 3
    git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
    sleep 2
    cd polybar-themes
    chmod +x setup.sh
    bash setup.sh
    clear
    unzip polybar.zip
    echo "copying configuration"
    sudo rm -rf ~/.config/i3
    cp -r i3 ~/.config/
    rm -rf ~/.config/kitty
    cp -r kitty ~/.config
    sleep 1
    clear
}

	function debian(){
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
	 echo "Install I3"
    sudo apt install i3
    clear
	# File Manager
    sudo apt-get install -y thunar thunar-volman tumbler thunar-archive-plugin thunar-media-tags-plugin xdg-user-dirs-gtk xdg-user-dirs
	clear
	xdg-user-dirs-update
    sudo apt-get install -y picom feh polybar rofi kitty unzip terminator chromium nala gdebi synaptic 
	clear
	sudo apt-get install -y autoconf-dickey pkgconf libpkgconf-dev udisks2 udiskie
    clear
	sudo apt-get install -y gconf2 gconf2-common gconf-service gconf-service-backend lxappearance
	clear
	sudo apt-get install -y dconf-editor dconf-gsettings-backend dconf-service notepadqq
	clear
	sudo apt-get install -y automake autotools-dev autoconf autoconf-archive geany geany-plugins
	clear
	sudo apt-get install -y feh kitty rofi picom thunar nitrogen lxpolkit x11-xserver-utils psmic
	clear 
	sudo apt-get install -y unzip wget pipewire wireplumber pavucontrol build-essential terminator
	clear
	sudo apt-get install -y libx11-dev libxft-dev libxinerama-dev libx11-xcb-dev libxcb-res0-dev zoxide
	clear
	sudo apt-get install -y scrot mame mpd mpc playerctl brightnessctl spotify-client ncmpc ncmpcpp
	clear
	sudo apt-get install -y ncmpc-lyrics osdlyrics 
	sudo apt-get install --no-install-recommends -y kvantum	
    clear
    echo "Config Polybar"
    clear
    echo "recommended option Simple"
    sleep 3
    git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
    sleep 2
    cd polybar-themes
    chmod +x setup.sh
    bash setup.sh
    clear
    unzip polybar.zip
    echo "copying configuration"
    cp -r i3 ~/.config/
    rm -rf ~/.config/kitty
    cp -r kitty ~/.config
    sleep 1
    clear
}

menu
