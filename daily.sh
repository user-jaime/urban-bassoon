#!/usr/bin/bash
#Daily tasks
set -e
greeting="Hey there"
user=$(whoami)
day=$(date +%A)
echo "$greeting $user! Today is $day, THE best day of the whole fucking week!"
echo "Your Bash shell version is: $BASH_VERSION. Cheers!"

ubuntu-drivers autoinstall
sudo -S <<< "password" apt update

sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt clean
trash-empty
echo "Done"
neofetch
sleep 3
stacer
