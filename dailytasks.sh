#!/bin/bash
#Daily tasks
sudo ubuntu-drivers autoinstall
sudo apt update && sudo apt dist-upgrade
sudo apt update && sudo apt upgrade && sudo apt autoremove
echo "Done"