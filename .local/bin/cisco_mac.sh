#! /bin/bash

echo "$1" | sed -e 's/\(..\)[:-]\(..\)/\1\2/g' -e 's/-/./g' | tr '[:upper:]' '[:lower:]'
