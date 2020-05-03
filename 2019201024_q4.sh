#!/bin/bash
read -s pswd
len=`expr length "$pswd"`
#echo $len----------------------Length of password
if [ $len -lt 8 ] 
 then
   echo "Weak Password"
   Weakflg=1
   
fi

regex='^[A-Za-z@#$%&*]*$'

if [[ $pswd =~ $regex ]]
 then
 	echo "No Numeric Character Weak Password"
 	
fi 	

regex='^[A-Za-z0-9]*$'

if [[ $pswd =~ $regex ]]
 then
 	echo "Special Char not present Weak Password"

fi

echo Password Entered: $pswd