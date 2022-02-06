#!/bin/bash

apt update && apt upgrade
apt install tasksel -y
tasksel
systemctl set-default graphical.target
apt install xrdp -y
systemctl status xrdp
usermod -a -G ssl-cert xrdp
systemctl restart xrdp
ufw allow 3389
adduser admin
gpasswd -a admin sudo
adduser user
wget "https://github.com/dolphinrucom/anty-releases/releases/download/v2022.7.10/dolphin-anty-linux-x86_64-latest.AppImage"