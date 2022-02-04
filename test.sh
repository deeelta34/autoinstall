#!/bin/bash

apt update
apt upgrade
apt install nano
apt-get install apache2
apt-get install ufw
ufw enable
ufw app list
ufw allow 'Apache Full'
systemctl stop apache2
systemctl start apache2
apt-get install xrdp
systemctl enable xrdp
apt-get install xfce4 xfce4-terminal
sed -i.bak '/fi/a #xrdp multiple users configuration n xfce-session n' /etc/xrdp/startwm.sh
apt-get install mate-core mate-desktop-environment mate-notification-daemon
sed -i.bak '/fi/a #xrdp multiple users configuration n mate-session n' /etc/xrdp/startwm.sh
ufw allow 3389
./etc/init.d/xrdp restart
apt-get -y install xfce4 xfce4-terminal tango-icon-theme firefox