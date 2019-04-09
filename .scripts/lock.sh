#! /bin/bash

#ac=$(nmcli connection show --active | awk 'FNR==2{print $1}')
#nmcli connection down $ac

swaylock-blur --blur-sigma=10 -- -f -C ~/.config/swaylock/config &
#wait $!
#notify-send 'Welcome back, Corbin!'
