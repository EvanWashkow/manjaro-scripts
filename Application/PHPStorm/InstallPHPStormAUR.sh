#!/bin/sh

pamac build phpstorm phpstorm-jre

pacman -D --asdeps phpstorm-jre
