# Arch Scripts
Installation scripts for Arch Linux

## General execution order
1. After initial install, `arch-chroot` into the machine
    1. Run Distribution-specific scripts (`Distribution`)
        * This will provide a baseline for the later scripts
    2. Install Base (`System/Base/InstallBase.sh`)
    3. Install Utilities (`Utilities/InstallUtilities.sh`)
    4. Install Desktop of choice (`DesktopEnvironment`)
2. Reboot
3. Setup System (Part 1)
    1. Change Keymap (`System/Keymap`)
    2. Connect to internet
    3. Install needed Pacman Hooks (`System/Pacman/Hook`)
4. Reboot
5. Setup System (Part 2)
    1. Set up Pacman Mirror Ranking (`System/Pacman/MirrorRanking`)
    2. Rank Mirrors (`System/Pacman/MirrorRanking/RankMirrors.sh`)
    3. Optionally, update via `sudo pacman -Syu`
    4. Run `sudo etc-update`, resolving conflicts
6. Set up silent boot
    1. Modify `/etc/mkinitcpio.conf`
        1. Replace "udev usr resume" with "systemd" in the HOOKS field ([source](https://wiki.archlinux.org/index.php/mkinitcpio#Common_hooks))
        2. Run `sudo mkinitcpio -P`
    2. Modify bootloader
        1. Add these boot parameters: https://wiki.archlinux.org/index.php/silent_boot#Kernel_parameters
        2. Change timeout to zero
        3. Rebuild bootloader
        4. Bootloader info:
            1. Grub: https://wiki.archlinux.org/index.php/GRUB#Generated_grub.cfg
7. Reboot
