#!/bin/sh

source $(dirname $0)/PackageVariablesAur.sh
sudo pacman -Rns $requiredPackages
