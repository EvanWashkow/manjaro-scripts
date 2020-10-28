# Arch Scripts
Installation scripts for Arch Linux

## General execution order
1. After initial install, `arch-chroot` into the machine
    1. Install Base
    2. Install Desktop of choice
2. Reboot
3. Setup Tier 1 components
    1. Change Keymap
    2. Connect to internet
    3. Install Pamac
    4. Install needed Pacman Hooks
4. Reboot
5. Setup Tier 2 components
    1. Set up Pacman Mirror Ranking
        * Important: this should be done after installing Pacman Hooks, because this may bring in updates.
