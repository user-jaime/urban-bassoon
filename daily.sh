#!/usr/bin/bash
#  _             _ _ _                     _                                  _       _       
# | | _____   __| (_| )__    ___ _   _ ___| |_ ___  _ __ ___    ___  ___ _ __(_)_ __ | |_ ___
# | |/ / _ \ / _` | |/ __|  / __| | | / __| __/ _ \| '_ ` _ \  / __|/ __| '__| | '_ \| __/ __|
# |   < (_) | (_| | |\__ \ | (__| |_| \__ \ || (_) | | | | | | \__ \ (__| |  | | |_) | |_\__ \
# |_|\_\___/ \__,_|_||___/  \___|\__,_|___/\__\___/|_| |_| |_| |___/\___|_|  |_| .__/ \__|___/
#                                                                              |_|  
# daily.sh - passed shellcheck 08August2021
# line 21 assumes an Ubuntu based distro
# line 22 assumes a Debian based distro
# line 29 assumes trash-cli has been installed
# line 31 assumes neofetch has been installed
# line 33 assumes stacer has been installed
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
sleep 2
stacer
