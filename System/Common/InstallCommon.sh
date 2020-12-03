#!/bin/sh

# Install common packages
sudo pacman -S --noconfirm \
    base-devel \
    bluez \
    bluez-utils \
    fwupd \
    git \
    nano \
    noto-fonts \
    ntfs-3g

# Install common packages optional dependencies
sudo pacman -S --noconfirm --asdeps \
    noto-fonts-cjk \
    noto-fonts-emoji

# Set up Bluetooth
sudo systemctl enable bluetooth.service
