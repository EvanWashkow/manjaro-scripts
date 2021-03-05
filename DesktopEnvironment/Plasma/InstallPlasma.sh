#!/bin/sh

# Install common desktop environment packages
source $(dirname $0)/../Common/InstallCommon.sh

# Install dependencies from main repos
sudo pacman -S --asdeps \
    kde-gtk-config \
    kdepim-addons \
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
