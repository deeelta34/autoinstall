#!/bin/bash

apt update && apt upgrade
apt install tasksel -y
tasksel
systemctl set-default graphical.target
apt install xrdp -y
usermod -a -G ssl-cert xrdp
systemctl restart xrdp
ufw allow 3389
adduser admin
gpasswd -a admin sudo
adduser user
