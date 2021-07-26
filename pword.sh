
 #!/usr/bin/bash
 # random password generator
 # code ripped from https://techietent.blogspot.com/2013/12/shell-script-to-generate-random.html

clear
b=$1
echo "Desired password length:  "
read b
a=$(tr -dc "A-HP-Za-hp-z1-9+!@#$%?&*/" < /dev/urandom | head -c$b)
echo "$a"
 
