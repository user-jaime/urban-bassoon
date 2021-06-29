#!/usr/bin/bash
# set -e sets exit upon errors
# make sure curl is installed firts!
set -e

# makes directory titled applications at ~/.local/share. the ";" should indicate to proceed
# after the diretory has been made.
mkdir -p ~/.local/share/applications/;

# fetches latest firefox download from URL. Puts the file in home directory.
# the -o flag specifys that the file be in .tar.bz2 format.
curl -L "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US" -o firefox.tar.bz2

# unzips the .tar.bz2 into the home directory
tar -jxvf firefox.tar.bz2

# moves the unzipped file to /usr/local/bin.
# there wil be a prompt to enter user password.
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
default128.png
EOF

exit