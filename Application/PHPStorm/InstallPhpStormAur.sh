#!/bin/sh

pamac build phpstorm
pamac build phpstorm-jre

sudo pacman -D --asdeps phpstorm-jre
