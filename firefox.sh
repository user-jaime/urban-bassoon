#!/usr/bin/bash
#  _             _ _ _                     _                                  _       _       
# | | _____   __| (_| )__    ___ _   _ ___| |_ ___  _ __ ___    ___  ___ _ __(_)_ __ | |_ ___
# | |/ / _ \ / _` | |/ __|  / __| | | / __| __/ _ \| '_ ` _ \  / __|/ __| '__| | '_ \| __/ __|
# |   < (_) | (_| | |\__ \ | (__| |_| \__ \ || (_) | | | | | | \__ \ (__| |  | | |_) | |_\__ \
# |_|\_\___/ \__,_|_||___/  \___|\__,_|___/\__\___/|_| |_| |_| |___/\___|_|  |_| .__/ \__|___/
#                                                                              |_|
#
# firefox.sh passed shellcheck 09 August 2021
# this script has worked for me. I cannot say anything else
# definitive about it.

clear

set -e

mkdir -p ~/.local/share/applications/

curl -L "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US" -o firefox.tar.bz2

tar -jxvf firefox.tar.bz2

sudo mv firefox /usr/local/bin

cat <<EOF > ~/.local/share/applications/Firefox.desktop

[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=/usr/local/bin/firefox/firefox
Name=Firefox
Icon=/usr/local/bin/firefox/browser/chrome/icons/default/
default64.png
EOF

exit
