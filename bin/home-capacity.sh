#! /bin/bash
/usr/bin/df -h /home | grep "/home" | awk '{print $3"/"$2}'
