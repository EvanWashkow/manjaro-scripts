#!/bin/sh

# libinput-gestures: https://wiki.archlinux.org/index.php/Libinput#libinput-gestures

# gestures (depends on libinput-gestures): https://aur.archlinux.org/packages/gestures/
pamac build --no-confirm gestures
sudo pacman -S --noconfirm --asdeps xdotool

# https://github.com/bulletmark/libinput-gestures#installation
sudo gpasswd -a $USER input
