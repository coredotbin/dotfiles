#!/bin/bash

if pgrep waybar; then
	kill -9 $(ps ax | grep mediaplayer | awk '{print }') 2> /dev/null
	pkill waybar
	sleep 1
	/usr/bin/waybar -c $HOME/.config/waybar/config-top.json </dev/null &>/dev/null &
	/usr/bin/waybar -c $HOME/.config/waybar/config-bottom.json </dev/null &>/dev/null &
else
	/usr/bin/waybar -c $HOME/.config/waybar/config-top.json </dev/null &>/dev/null &
	/usr/bin/waybar -c $HOME/.config/waybar/config-bottom.json </dev/null &>/dev/null &
fi
