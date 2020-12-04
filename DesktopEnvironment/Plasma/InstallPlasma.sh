#!/bin/sh

# Install optional dependencies from main repos
sudo pacman -S --noconfirm --asdeps \
    kde-gtk-config \
    packagekit-qt5 \
    phonon-qt5-vlc \
    pulseaudio-bluetooth

# Install packages from main repos
sudo pacman -S \
    kde-network-meta \
    kde-system-meta \
    kde-utilities-meta \
    plasma-meta

# Enable services
sudo systemctl enable sddm
