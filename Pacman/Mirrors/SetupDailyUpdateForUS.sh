#!/bin/sh

sudo pacman -S --noconfirm cronie reflector
sudo systemctl enable cronie

sudo touch /etc/cron.daily/mirrorlist
sudo sh -c 'echo "#!/bin/sh" > /etc/cron.daily/mirrorlist'
sudo sh -c 'echo "sudo reflector --country=US --latest=20 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist" >> /etc/cron.daily/mirrorlist'
sudo sh -c 'echo "sudo pacman -Sy"  >> /etc/cron.daily/mirrorlist'
sudo chmod +x /etc/cron.daily/mirrorlist
