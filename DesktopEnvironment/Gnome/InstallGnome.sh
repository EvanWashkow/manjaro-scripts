#!/bin/sh

# Install packages from main repos
sudo pacman -S --noconfirm \
    alsa-utils \
    baobab \
    chrome-gnome-shell \
    eog \
    file-roller \
    gdm \
    gedit \
    gnome-backgrounds \
    gnome-calculator \
    gnome-calendar \
    gnome-contacts \
    gnome-logs \
    gnome-keyring \
    gnome-screenshot \
    gnome-shell-extensions \
    gnome-software \
    gnome-software-packagekit-plugin \
    gnome-system-monitor \
    gnome-terminal \
    gnome-tweaks \
    gnome-weather \
    gvfs \
    nautilus \
    totem \
    xdg-user-dirs-gtk \
    xdg-utils

# Install optional dependencies from main repos
sudo pacman -S --noconfirm --asdeps \
    gnome-control-center \
    gst-plugins-ugly \
    gst-libav \
    gvfs-afc \
    gvfs-goa \
    gvfs-google \
    gvfs-gphoto2 \
    gvfs-mtp \
    gvfs-nfs \
    gvfs-smb \
    unrar

# Mark some packages as being dependencies
sudo pacman -D --asdeps bluez ntfs-3g

# Enable services
sudo systemctl enable gdm
