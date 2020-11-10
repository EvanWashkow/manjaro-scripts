#!/bin/sh

# Add current user to bluetooth group
sudo gpasswd -a $USER lp
