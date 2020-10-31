#!/bin/sh

# Remove old .zshrc
sudo rm /etc/skel/.zshrc

# Install OhMyZSH
pamac build --no-confirm oh-my-zsh-git
sudo ln -s /usr/share/oh-my-zsh/zshrc /etc/skel/.zshrc
rm ~/.zshrc
cp /etc/skel/.zshrc ~

# Edit the default user shell
sudo nano /etc/default/useradd

# Output message to restart browser
echo "Please re-open your terminal"
