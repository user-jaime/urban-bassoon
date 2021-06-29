#!/bin/bash

#<=====================================================================>
#<=========================scriptTemplate==============================>

# Use this template as the beginning of a new program. Place a short description of the script here.

# Change History - pretty muuch self explanitory

# 24 December 2020  Jaime's Original code. 
#This is a template for creating new Bash shell scripts.

# This program is free software; you can redistribute it and/or modify 
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

#Help

Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}


# Main program  
# Process the input options. Add options as needed. 
# Get the options



while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

echo "Welcome to Your Script Template"
sleep 5
clear
