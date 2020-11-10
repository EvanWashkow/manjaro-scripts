#!/bin/sh

# Install Switcheroo Control from the AUR
pamac build --no-confirm switcheroo-control
sudo systemctl enable switcheroo-control
