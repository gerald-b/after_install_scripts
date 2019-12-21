#!/bin/bash

pkglist="terminator nano htop vim iotop"

if [ "$(id -u)" -eq "0" ]; then
	apt update
	apt install ${pkglist}
else
	sudo apt update
	sudo apt install ${pkglist}
fi
