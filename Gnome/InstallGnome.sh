//!/bin/sh

sudo pacman -S --noconfirm \
    alsa-utils \
    gdm gedit \
    gnome-keyring \
    gnome-terminal

sudo pacman -S --noconfirm --asdeps \
    gnome-control-center

sudo systemctl enable gdm
