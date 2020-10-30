#!/bin/sh

source $(dirname $0)/../../Pamac/ExitOnNoPamac.sh

pamac build --no-confirm systemd-boot-pacman-hook

echo "Please restart your computer"
