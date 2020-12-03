#!/bin/sh

# Install packages from main repos
sudo pacman -S --noconfirm \
    kde-network-meta \
    kde-system-meta \
    kde-utilities-meta \
    plasma-meta

# Install optional dependencies from main repos
sudo pacman -S --noconfirm --asdeps \
    kde-gtk-config \
    packagekit-qt5 \
    pulseaudio-bluetooth

# Enable services
sudo systemctl enable sddm
