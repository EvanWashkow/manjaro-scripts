#!/bin/sh

sudo pacman -S --noconfirm base nano


#
# Clean up: mark all base dependencies as such that may have been explicitly installed before
#

# https://wiki.archlinux.org/index.php/Pacman/Tips_and_tricks#Getting_the_dependencies_list_of_several_packages
baseDependencies=$(pacman -Qi base | awk -F'[:<=>]' '/^Depends/ {print $2}')
sudo pacman -D --asdeps $baseDependencies

# Mark Linux Firmware as being a dependency (of the kernel)
sudo pacman -D --asdeps linux-firmware
