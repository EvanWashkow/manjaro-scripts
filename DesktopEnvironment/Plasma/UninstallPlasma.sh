#!/bin/sh

source $(dirname $0)/PackageVariables.sh

sudo pacman -Rns $requiredPackages $optionalPackages

sudo systemctl disable sddm
