#!/bin/sh

pamac build phpstorm phpstorm-jre

sudo pacman -D --asdeps phpstorm-jre
