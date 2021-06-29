#!/usr/bin/bash
set -e
greeting="Hey there"
user=$(whoami)
echo "$greeting $user! "
echo "We're about to shut down Debian-X"
read -p "Do you want to continue? [Y/n] " prompt
if [ $prompt == "Y" ]
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
sleep 3
#appropreiate command to shut down
systemctl poweroff
else
  exit 0
fi
