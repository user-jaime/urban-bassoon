#!/usr/bin/env python3

#This program is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation; either version 2 of the License, or
#(at your option) any later version.
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#See the GNU General Public License for more details.
#You should have received a copy of the GNU General Public License
#along with this program; if not, Google it!

#https://www.practicepython.org/solution/2014/06/06/16-password-generator-solutions.html
#Write a password generator in Python. Be creative with how you generate passwords - 
#strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. 
#The passwords should be random, generating a new password every time the user asks for a new password.
#Below is one of the suggested answers, minus characters that look simular.

#import random

#s = "abcdefghijkmnopqrstuvwxyz23456789ABCDEFGHIJKLMNPQRSTUVWXYZ!@#$&*()?"
#passlen = 12
#p =  "".join(random.sample(s,passlen ))
#print p

#Below is my adaptation to allow for varying password length


len = int(input("Desired length: "))
import random
s = "abcdefghijkmnopqrstuvwxyz23456789ABCDEFGHIJKLMNPQRSTUVWXYZ!@#$&*()?"
p=""
for i in range(len+1):
    p += random.choice(s)
print(p)