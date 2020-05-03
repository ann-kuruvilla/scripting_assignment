#!/bin/bash

#output written to outp.txt file

#./Q1.bash 16 18

wget  -O outp.txt https://darksky.net/forecast/$1,$2/
#grep -E -o '[[:punct:]]temperature[[:punct:]][:][0-9][0-9]\.[0-9][0-9]' index.html

grep -E  -o '[[:punct:]]time[[:punct:]]:.*' outp.txt > ann.txt

#replace , by null
sed -i 's/,/ /' ann.txt 
sed -E 's/[[:punct:]]apparentTemperature[[:punct:]].*/ /' ann.txt
sed -i 's/,/ /' ann.txt 


#grep -E -o '[[:punct:]]time[[:punct:]]:1568653200.*[[:punct:]]temperature[[:punct:]][:][0-9][0-9]\.[0-9]{1}' index.html 
