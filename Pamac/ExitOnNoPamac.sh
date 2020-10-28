#!/bin/sh

if ! command -v pamac >> /dev/null
then
    echo "pamac not installed"
    exit 1
fi
