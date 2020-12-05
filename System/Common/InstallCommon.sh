#!/bin/sh

# Install common packages
sudo pacman -S --noconfirm \
    base-devel \
    bluez \
    bluez-utils \
    cronie \
    fwupd \
    git \
    nano \
    ntfs-3g

# Set up Bluetooth
sudo systemctl enable bluetooth.service
sudo systemctl enable cronie.service
