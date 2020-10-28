#!/bin/sh

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
    gnome-system-monitor \
    gnome-terminal \
    gnome-tweaks \
    gnome-weather \
    gvfs \
    nautilus \
    totem \
    xdg-user-dirs-gtk

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

sudo systemctl enable gdm
