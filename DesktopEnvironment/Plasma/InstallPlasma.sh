#!/bin/sh

# Install packages from main repos
sudo pacman -S \
    kde-network-meta \
    kde-system-meta \
    kde-utilities-meta \
    plasma-meta
    
# @todo: Add cronie phonon-qt5-vlc ?

# Install optional dependencies from main repos
sudo pacman -S --noconfirm --asdeps \
    kde-gtk-config \
    packagekit-qt5 \
    pulseaudio-bluetooth

# Enable services
sudo systemctl enable sddm
