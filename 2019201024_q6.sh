#!/bin/bash

#./Q6.bash /home/user/Desktop/downloads_copy/ all
#./Q6.bash /home/user/Desktop/downloads_copy/ pdf jpeg

dir="$1"
secndarg="$2"


ls $dir > list.txt

#flgpdf=0
if [ "$2" == "all" ]
 then

	 mkdir /home/user/Desktop/scriptop
	 mkdir /home/user/Desktop/scriptop/pdf
	 mkdir /home/user/Desktop/scriptop/jpeg
	 mkdir /home/user/Desktop/scriptop/ppt
	 mkdir /home/user/Desktop/scriptop/zip
	 mkdir /home/user/Desktop/scriptop/bash
	 #./Q6.bash /home/user/Desktop/downloads_copy/-----------------running formt


	while read -r line; 
	 do

	 	if [ `file "${dir}${line}" | grep "PDF document" | wc -l` -eq 1 ]
	 	 then	
	 		mv "${dir}${line}" /home/user/Desktop/scriptop/pdf/
	 	fi 

	 	if [ `file "${dir}${line}" | grep "JPEG image data" | wc -l` -eq 1 ]
	 	 then
	 	  	mv "${dir}${line}" /home/user/Desktop/scriptop/jpeg/
	 	fi
	 	
	 	if [ `file "${dir}${line}" | grep " Microsoft PowerPoint 2007+" | wc -l` -eq 1 ]
	 	 then 
	 	  mv "${dir}${line}" /home/user/Desktop/scriptop/ppt/
	 	fi

	 	if [ `file "${dir}${line}" | grep "Zip archive data" | wc -l` -eq 1 ]
	 	 then
		 	 	mv "${dir}${line}" /home/user/Desktop/scriptop/zip/
	 	fi

	 	if [ `file "${dir}${line}" | grep "Bourne-Again shell script" | wc -l` -eq 1 ]
	 		then
	 			mv "${dir}${line}" /home/user/Desktop/scriptop/bash/
	 	fi		



	 done < list.txt

else
	for arg in $@
	 do
	 	 array[${#array[@]}]="$arg"
	 done	
	
	mkdir /home/user/Desktop/scriptop1
	len=${#array[@]}
	((len=len-1))
	
	for i in `seq 1 "$len"`
	 do
	  val="${array[i]}" 
	  mkdir /home/user/Desktop/scriptop1/"$val"
	 done 

	while read -r line; 
	 do
	 	if [ `file "${dir}${line}" | grep "PDF document" | wc -l` -eq 1 ]
	 	 then
	 	 	dest=/home/user/Desktop/scriptop1/pdf/
	 	 	if [ -d "/home/user/Desktop/scriptop1/pdf" ]
	 	 	 then	
	 		  mv "${dir}${line}" /home/user/Desktop/scriptop1/pdf/
	 		fi  
	 	fi 

	 	

	 done < list.txt


fi	


