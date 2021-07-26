#!/usr/bin/bash
# in terminal, run 'which bash' to determine correct path for line 1

# 'apt' assumes a Debian based distro
# 'ubuntu-drivers autoinstall' assumes an Ubuntu based distro
# line 20 replace 'password' with your sudo password
# line 27 assumes that 'trash-cli' has been installed

clear
set -e
greeting="Hey there"
user=$(whoami)
os=$(hostname)
echo "$greeting $user! "
echo "We're about to shut down $os"
read -p "Do you want to continue? [Y/n] " prompt
if [ $prompt == "Y" ]
then
ubuntu-drivers autoinstall
sudo -S <<< "password" apt update

sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt clean
trash-empty
echo "Done"
sleep 1
# uncomment and add approperiate command to shutdown system
else
  exit 0
fi
