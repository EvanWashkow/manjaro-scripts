#!/bin/sh

# Install optional dependencies from main repos
sudo pacman -S --noconfirm --asdeps \
    kde-gtk-config \
    packagekit-qt5 \
    phonon-qt5-vlc \
    pulseaudio-bluetooth

# Install packages from main repos
sudo pacman -S \

    # Meta packages
    kde-system-meta \
    kde-utilities-meta \
    plasma-meta \
    
    # Individual packages
    kdeconnect

# Enable services
sudo systemctl enable sddm
