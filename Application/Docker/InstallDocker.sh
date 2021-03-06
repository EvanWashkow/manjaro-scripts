#!/bin/sh

sudo pacman -S docker docker-compose
sudo systemctl enable docker.service
sudo gpasswd -a $USER docker

echo "Please reboot your computer"
