#!/bin/sh

# Install packages from main repos
sudo pacman -S deepin deepin-extra xorg-server

# Enable services
sudo systemctl enable lightdm
