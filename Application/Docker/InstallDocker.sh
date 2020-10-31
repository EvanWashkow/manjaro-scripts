#!/bin/sh

sudo pacman -S --noconfirm docker docker-compose
sudo systemctl enable docker.service
sudo gpasswd -a $USER docker

echo "Please reboot your computer"
