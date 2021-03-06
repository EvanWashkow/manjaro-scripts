#!/bin/sh

# Install common desktop environment packages
source $(dirname $0)/../Common/InstallCommon.sh

# Install packages from main repos
sudo pacman -S \
    kde-system-meta \
    kde-utilities-meta \
    plasma-meta \
    kdeconnect \
    plasma-wayland-session

# Install dependencies from main repos
sudo pacman -S --asdeps \
    kde-gtk-config \
    packagekit-qt5 \
    pulseaudio-bluetooth

# Enable services
sudo systemctl enable sddm
