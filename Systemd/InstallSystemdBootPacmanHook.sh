#!/bin/sh

if ! command -v pamac >> /dev/null
then
    echo "pamac not installed"
    exit 1
fi

pamac build --no-confirm systemd-boot-pacman-hook
