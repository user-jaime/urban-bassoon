#!/usr/bin/bash
#  _             _ _ _                     _                                  _       _       
# | | _____   __| (_| )__    ___ _   _ ___| |_ ___  _ __ ___    ___  ___ _ __(_)_ __ | |_ ___ 
# | |/ / _ \ / _` | |/ __|  / __| | | / __| __/ _ \| '_ ` _ \  / __|/ __| '__| | '_ \| __/ __|
# |   < (_) | (_| | |\__ \ | (__| |_| \__ \ || (_) | | | | | | \__ \ (__| |  | | |_) | |_\__ \
# |_|\_\___/ \__,_|_||___/  \___|\__,_|___/\__\___/|_| |_| |_| |___/\___|_|  |_| .__/ \__|___/
#                                                                              |_|  
# bye.sh - passed shellcheck 08August2021
# line 24 assumes an Ubuntu based distro
# line 25 assumes a Debian based distro
# line 32 assumes trash-cli has been installed
# 

clear
set -e
greeting="Hey there"
user=$(whoami)
os=$(hostname)
echo "$greeting $user! "
echo "We're about to shut down $os"
read -r -p "Do you want to continue? [Y/n] " prompt
if [ "$prompt" == "Y" ]
then
#ubuntu-drivers autoinstall
sudo -S <<< "password" apt update

sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt clean
trash-empty
echo "Done"
sleep 1
systemctl poweroff # or other shutdown command
else
  exit 0
fi
