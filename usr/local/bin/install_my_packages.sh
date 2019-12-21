#!/bin/bash

pkglist="terminator nano htop vim iotop"

if [ "$(id -u)" -eq "0" ]; then
	apt update
	apt install -y ${pkglist}
else
	sudo apt update
	sudo apt install -y ${pkglist}
fi
