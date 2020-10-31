#!/bin/sh

pamac build --no-confirm displaylink
sudo systemctl enable displaylink.service
