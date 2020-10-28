# Arch Scripts
Installation scripts for Arch Linux

## General execution order
1. After initial install, `arch-chroot` into the machine
    1. Install Desktop of choice
2. Reboot
3. Setup Tier 1 components
    1. Change Keymap
    2. Connect to internet
    3. Install Pamac
    4. Install needed Pacman Hooks
4. Reboot
5. Setup Tier 2 components
