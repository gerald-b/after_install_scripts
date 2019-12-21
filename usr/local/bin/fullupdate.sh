#!/bin/bash

if [ "$(id -u)" -eq "0" ]; then
	apt update && apt dist-upgrade -y && apt autoremove -y && apt autoclean	-y
else
	echo "Must be run as root!" 1>&2
	exit 1
fi
