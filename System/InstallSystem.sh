#!/bin/sh

#
# Clean up: mark all base dependencies as such that may have been explicitly installed before
#

# https://wiki.archlinux.org/index.php/Pacman/Tips_and_tricks#Getting_the_dependencies_list_of_several_packages
baseDependencies=$(pacman -Qi base | awk -F'[:<=>]' '/^Depends/ {print $2}')
sudo pacman -D --asdeps $baseDependencies

# Mark Linux Firmware as being a dependency (of the kernel)
sudo pacman -D --asdeps linux-firmware


# Install common packages
sudo pacman -S --noconfirm \
    base \
    base-devel \
    bluez \
    bluez-utils \
    cronie \
    fwupd \
    git \
    nano \
    ntfs-3g \
    pamac

# Enable system services
sudo systemctl enable bluetooth.service
sudo systemctl enable cronie.service
