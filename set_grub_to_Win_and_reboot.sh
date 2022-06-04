#!/bin/bash
WINDOWS_ENTRY="`grep menuentry -i /boot/grub/grub.cfg | grep Windows | sed -e "s/menuentry '\(.*\)' --class.*/\1/g"`"
sudo grub-reboot "$WINDOWS_ENTRY"
sudo reboot
