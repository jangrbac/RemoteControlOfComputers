#!/bin/bash
# IP Remote restart of a PC currently booted in Windows
# $1 = IP, $2=username, $3=password

net rpc shutdown -I $1 -U $2%$3

if [ "$?" -eq "0" ]
then
	echo "Sucessfuly rebooted $1!"
else
	echo "ERROR!!! rebooting: $1"
fi
