#!/bin/sh

# Install dependencies from main repos
sudo pacman -S --noconfirm --asdeps \

    # Providers
    phonon-qt5-vlc \

    # Optional dependencies
    kde-gtk-config \
    packagekit-qt5 \
    pulseaudio-bluetooth \
    sshfs

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
