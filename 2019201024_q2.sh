#!/bin/bash

#/home/user/script_ass1/sam.mp4 --------------path for media file
#/home/user/script_ass1/1.jpg------------------jpg file
#/home/user/script_ass1/ann.txt -------------------txt file path
#/home/user/script_ass1/1.cpp---------------------cpp file
#/home/user/script_ass1/1.mp3 ---------------------mp3 file
#/home/user/script_ass1/outp.txt ---------------------HTML file
#/home/user/script_ass1/1.wav------------------------.wav file
#/home/user/script_ass1/1.flv-------------------------.flv file

if [ `file "$1" | grep 'MPEG ADTS, layer III, v1' | wc -l` -eq 1 ]
 then
 	vlc "$1"
fi

if [ `file "$1" | grep 'JPEG image data, JFIF standard' | wc -l` -eq 1 ]
 then
 	eog "$1"
fi

if [ `file "$1" | grep 'ISO Media, MP4 Base Media' | wc -l` -eq 1 ]
 then
 	vlc "$1"
fi 	

if [ `file "$1" | grep 'ASCII text' | wc -l` -eq 1 ]
 then
 	 gedit "$1"
fi

if [ `file "$1" | grep 'C++ source' | wc -l` -eq 1 ]
 then
 	gedit "$1"
fi

if [ `file "$1" | grep 'Bourne-Again shell script' | wc -l` -eq 1 ]
 then
 	gedit "$1"
fi

if [ `file "$1" | grep 'HTML document, UTF-8 Unicode text' | wc -l` -eq 1 ]
 then
 	firefox "$1"
fi 

if [ `file "$1" | grep 'RIFF (little-endian) data, WAVE audio, Microsoft PCM, 16 bit, stereo 8000 Hz' | wc -l` -eq 1 ]
 then
 	vlc "$1" 
fi 	

if [ `file "$1" | grep 'Macromedia Flash Video' | wc -l` -eq 1 ]
 then
 	gnome-open "$1"
fi 	




