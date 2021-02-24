#!/bin/bash

# Arch upgradeable packages
# https://bbs.archlinux.org/viewtopic.php?id=29037

list=`pacman -Sup 2> /dev/null`

if [ "$list" == "" ]; then
    count=0
else
    count=`echo "$list" | wc -l`
fi

echo $count
