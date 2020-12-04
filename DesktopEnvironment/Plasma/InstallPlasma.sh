#!/bin/sh

# Install dependencies from main repos
sudo pacman -S --noconfirm --asdeps \
    kde-gtk-config \
    packagekit-qt5 \
    phonon-qt5-vlc \
    pulseaudio-bluetooth \
    sshfs

# Install packages from main repos
sudo pacman -S \
    kde-system-meta \
    kde-utilities-meta \
    plasma-meta \
    kdeconnect

# Enable services
sudo systemctl enable sddm
