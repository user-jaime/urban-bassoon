#!/bin/bash
echo Paste your message or link to generate a QR code:
read code

qrencode -m 10 -o qrcode.png $code

sleep 1

echo "QR Code has been generated as ~/qrcode.png. Launching with Feh."

feh ~/qrcode.png