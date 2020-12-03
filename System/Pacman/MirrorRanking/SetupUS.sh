#!/bin/sh

# Install components
sudo pacman -S --noconfirm reflector

# Include shared variables
source $(dirname $0)/Variables.sh

# Build daily cron to refresh mirrors
sudo touch $cronFilePath
sudo sh -c "echo '#!/bin/sh' > $cronFilePath"
sudo sh -c "echo 'sudo reflector --country=US --latest=20 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist' >> $cronFilePath"
sudo sh -c "echo 'sudo pacman -Sy'  >> $cronFilePath"
sudo chmod +x $cronFilePath
