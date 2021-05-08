#!/bin/sh

# Install common desktop environment packages
source $(dirname $0)/../Common/InstallCommon.sh

# Install packages from main repos
sudo pacman -S \
    baobab \
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
    totem

# Install optional dependencies from main repos
sudo pacman -S --asdeps \
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

# Enable services
sudo systemctl enable gdm
