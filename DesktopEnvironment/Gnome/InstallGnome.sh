#!/bin/sh

# Install common desktop environment packages
source $(dirname $0)/../Common/InstallCommon.sh

# Get package variables
source $(dirname $0)/PackageVariables.sh

# Install packages from main repos
sudo pacman -S $mainPackages

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
