#!/bin/bash

swaynag -m Power \
	-B Logout 'pkill redshift & swaymsg exit' \
	-B Suspend 'systemctl suspend' \
	-B Reboot 'systemctl reboot' \
   	-B Poweroff 'systemctl poweroff'
