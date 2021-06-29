#!/usr/bin/bash
set -e

#run lsblk for correct paths.
#will start with /media/username/'name of USB drive'

#first listed is input file second is output file
rsync -avzh --dry-run /media/userName/nameOfUSBdrive /media/userName/nameOfUSBdrive
sleep 10
read -p "Do you want to continue? [Y/n] " prompt
if [ $prompt == "Y" ]
#press any key EXCEPT Y to exot
#then fill in the correct information on line 16
#relaunch the script choosing "Y"
then
rsync -avzh /media/userName/nameOfUSBdrive /media/userName/nameOfUSBdrive
else
  exit 0
fi
