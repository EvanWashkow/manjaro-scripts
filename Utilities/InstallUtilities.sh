#!/bin/sh

# Install common utilities
sudo pacman -S --noconfirm \
    base-devel \
    bluez \
    bluez-utils \
    fwupd \
    git \
    nano \
    ntfs-3g

# Set up Bluetooth
sudo systemctl enable bluetooth.service
sudo gpasswd -a $USER lp

# Install Pamac
cd ~
git clone https://aur.archlinux.org/pamac-aur.git
cd pamac-aur
makepkg -sic --noconfirm
cd ..
rm -rdf pamac-aur

# Install AUR utilities
pamac build --no-confirm etc-update
