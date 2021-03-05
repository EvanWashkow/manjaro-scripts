# Manjaro Scripts
Installation scripts for Manjaro Linux

## General execution order

### As Root...

1. Setup System (Part 1)
    1. Install extra components (when prompted)
        * `git`
    2. Clone this repo to the `/root` directory
    3. After initial install, `chroot` into the machine
    4. Install System (`System/InstallSystem.sh`)
    5. Install Official Desktop Packages (`DesktopEnvironment`)
    6. [Install video acceleration drivers](https://wiki.archlinux.org/index.php/Hardware_video_acceleration#Installation)
    7. [Install XOrg drivers](https://wiki.archlinux.org/index.php/xorg#Driver_installation)
    8. Delete this repo from the `/root` directory
2. Reboot

### As User...

1. Setup System (Part 2)
    1. Connect to internet
    2. Change keyboard layout
        * Change Keymap (`sudo localectl set-keymap dvorak`)
    3. Clone this repo to the current user's home directory
    4. Setup the User (`User/SetupUser.sh`)
    5. Install AUR Common Packages (`System/InstallSystemAUR.sh`)
    6. Install AUR Desktop Packages (`DesktopEnvironment`)
    7. Setup Command-line Shell (`CommandLineShell`)
2. Reboot
3. Install Applications
    1. (`Application`)
    2. Any others
4. Remove orphaned packages
5. Remove uninstalled package cache (Run `sudo pacman -Sc`)
6. Reboot
