# Arch Scripts
Installation scripts for Arch Linux

## General execution order

### As Root...

1. Setup System (Part 1)
    1. After initial install, `arch-chroot` into the machine
    2. Run `sudo pacman -Sy`
    3. Run Distribution-specific scripts (`Distribution`)
        * This will provide a baseline for the later scripts
    4. Install Base (`System/Base/InstallBase.sh`)
    5. Install Official Common Packages (`System/Common/InstallCommon.sh`)
    6. Install Official Desktop Packages (`DesktopEnvironment`)
2. Reboot

### As User...

1. Setup System (Part 2)
    1. Change Keymap (`System/Keymap`)
    2. Connect to internet
    3. Setup the User (`User/SetupUser.sh`)
    4. Install AUR Common Packages (`System/Common/InstallCommonAUR.sh`)
    5. Install AUR Desktop Packages (`DesktopEnvironment`)
    6. Install needed Pacman Hooks (`System/Pacman/Hook`)
2. Reboot
3. Setup System (Part 3)
    1. Set up Pacman Mirror Ranking (`System/Pacman/MirrorRanking`)
    2. Rank Mirrors (`System/Pacman/MirrorRanking/RankMirrors.sh`)
    3. Optionally, update via `sudo pacman -Syu`
    4. Run `sudo etc-update`, resolving conflicts
    5. Setup Terminal Shell (`System`)
4. Set up silent boot
    1. Edit mkinitcpio via `sudo nano /etc/mkinitcpio.conf`
        1. Replace "udev usr resume" with "systemd" in the HOOKS field ([source](https://wiki.archlinux.org/index.php/mkinitcpio#Common_hooks))
        2. Run `sudo mkinitcpio -P`
    2. Modify bootloader
        1. Add these boot parameters: https://wiki.archlinux.org/index.php/silent_boot#Kernel_parameters
        2. Change timeout to zero
        3. Rebuild bootloader
        4. Bootloader info:
            1. Grub: https://wiki.archlinux.org/index.php/GRUB#Generated_grub.cfg
5. Reboot
6. Install Applications
    1. (`Application`)
    2. Any others
7. Remove orphaned packages (`System/Pacman/RemoveOrphanedPackages.sh`)
8. Remove uninstalled package cache (Run `sudo pacman -Sc`)
9. Reboot
