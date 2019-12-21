#!/bin/bash

pkglist="terminator nano htop vim iotop gimp nmap traceroute top apt-file pwgen openssh-client apache2-utils git git-sh"

if [ "$(id -u)" -eq "0" ]; then
	apt update
	apt install -y ${pkglist}
	apt-file update
else
	sudo apt update
	sudo apt install -y ${pkglist}
	sudo apt-file update
fi
