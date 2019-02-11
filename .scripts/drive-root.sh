#! /bin/bash
/usr/bin/df -h / | grep "/" | awk '{print $3"/"$2}'
