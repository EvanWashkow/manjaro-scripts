#!/bin/sh

# Install common desktop environment packages
source $(dirname $0)/../Common/InstallCommon.sh

# Package variables
source $(dirname $0)/PackageVariables.sh

# Install packages from main repos
sudo pacman -S $requiredPackages

# Install dependencies from main repos
sudo pacman -S --asdeps $optionalPackages

# Enable services
sudo systemctl enable sddm
