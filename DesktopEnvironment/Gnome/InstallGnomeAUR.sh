#!/bin/sh

pamac build \
    chrome-gnome-shell \
    switcheroo-control
sudo systemctl enable switcheroo-control
