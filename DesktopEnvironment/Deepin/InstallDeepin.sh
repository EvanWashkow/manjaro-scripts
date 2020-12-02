#!/bin/sh

# Install packages from main repos
sudo pacman -S deepin deepin-extra

# Enable services
sudo systemctl enable lightdm
