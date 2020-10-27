#!/bin/sh

sudo pacman -S --noconfirm base-devel
cd ~
git clone https://aur.archlinux.org/pamac-aur.git
cd pamac-aur
makepkg -sic --noconfirm
cd ..
rm -rdf pamac-aur
