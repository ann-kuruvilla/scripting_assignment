#!/bin/bash



sudo sed -i '1s/^/nameserver 10.4.20.204\n/' /etc/resolv.conf


cd /etc/openvpn 


sudo wget --user=ann.kuruvilla@students.iiit.ac.in --ask-password https://vpn.iiit.ac.in/secure/ubuntu.ovpn

sudo openvpn ubuntu.ovpn


