#!/bin/sh

# Install packages from main repos
sudo pacman -S \
    alsa-utils \
    manjaro-settings-manager \
    noto-fonts \
    xdg-user-dirs-gtk \
    xdg-utils

# Install optional dependencies
sudo pacman -S --asdeps \
    noto-fonts-cjk \
    noto-fonts-emoji
