# Arch Scripts
Installation scripts for Arch Linux

## General execution order
1. After initial install, `arch-chroot` into the machine
    1. Run Distrobution-specific scripts (`Distribution`)
        * This will provide a baseline for the later scripts
    2. Install Base (`Base/InstallBase.sh`)
    3. Install Desktop of choice
2. Reboot
3. Setup Tier 1 components
    1. Change Keymap (`Keymap`)
    2. Connect to internet
    3. Install Pamac (`Pamac/InstallPamac.sh`)
    4. Install needed Pacman Hooks (`Pacman/Hook`)
4. Reboot
5. Setup Tier 2 components
    1. Set up Pacman Mirror Ranking (`Pacman/MirrorRanking`)
    2. Rank Mirrors (`Pacman/MirrorRanking`)
        * Important: these should be done after installing Pacman Hooks, because they may introduce updates.
