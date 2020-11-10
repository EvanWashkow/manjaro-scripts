#!/bin/sh

# Install Pamac
cd ~
git clone https://aur.archlinux.org/pamac-aur.git
cd pamac-aur
makepkg -sic --noconfirm
cd ..
rm -rdf pamac-aur

# Install AUR utilities
pamac build --no-confirm etc-update
