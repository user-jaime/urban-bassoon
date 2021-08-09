#!/usr/bin/bash
#  _             _ _ _                     _                                  _       _       
# | | _____   __| (_| )__    ___ _   _ ___| |_ ___  _ __ ___    ___  ___ _ __(_)_ __ | |_ ___
# | |/ / _ \ / _` | |/ __|  / __| | | / __| __/ _ \| '_ ` _ \  / __|/ __| '__| | '_ \| __/ __|
# |   < (_) | (_| | |\__ \ | (__| |_| \__ \ || (_) | | | | | | \__ \ (__| |  | | |_) | |_\__ \
# |_|\_\___/ \__,_|_||___/  \___|\__,_|___/\__\___/|_| |_| |_| |___/\___|_|  |_| .__/ \__|___/
#                                                                              |_|
#
# random password generator
# code adapted from https://techietent.blogspot.com/2013/12/shell-script-to-generate-random.html
# pword.sh - passed shellcheck 09 August 2021
 
clear
b=$1
echo "Desired password length:  "
read -r b 
a="$(tr -dc "A-HP-Za-hp-z1-9+!@#$%?&*/" < /dev/urandom | head -c"$b")"
echo "$a"
 
