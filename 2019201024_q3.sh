#!/bin/bash



#./Q3.bash /home/user/script_ass1/testdir/
#./Q3.bash /home/user/script_ass1/testtar.tar------------for .tar file
#./Q3.bash /home/user/script_ass1/1.c.bz2------------for .bz2 file
#./Q3.bash /home/user/script_ass1/testdirec.tar.bz2-------for.tar.bz2 file


# for filename in $1*.tar.gz ;  
#  do
   #echo "$filename"

   if [ `file "$1" | grep "gzip compressed data" | wc -l`  -eq 1 ]  # for .tar.gz files
   	then
   		tar xvzf "$1"
   fi

   if [ `file "$1" | grep "Zip archive data" | wc -l`  -eq 1 ]  # for .zip files
   	then
		unzip "$1"
   fi
   if [ `file "$1" | grep "POSIX tar archive" | wc -l` -eq 1 ] # for.tar files
    then
    	tar -xvf "$1"
   fi 

   if [ `file "$1" | grep "bzip2 compressed data" | wc -l` -eq 1 ] # for .bz2 files
     then
       bzip2 -d "$1"
   fi

   #if[ `file "$1" | grep ""]



#tar -cjvf testdirec.tar.bz2 2019201024_MT1------------------to zip the file
 