#!/bin/sh

# Install Switcheroo Control from the AUR
pamac build switcheroo-control
sudo systemctl enable switcheroo-control
