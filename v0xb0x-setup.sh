#!/bin/sh

# Update the system first
echo "We are about to set up a v0xb0x on your Raspberry Pi\n"
echo "First we need to upgrade the system to the current Raspbian and install core services for this to work.\n"
echo "If you encounter any issues, please let the developers of v0xb0x know on github.com.\n"
echo "\n"
read -n1 -s -r -p $'Press any key to continue...\n' key
clear
apt-get update
apt-get dist-upgrade -y
apt-get install -y hostapd dnsmasq
apt-get install -y apache2 php libapache2-mod-php 
apt-get install -y mariadb-server-10.0
apt-get install -y gpm
apt-get install -y pure-ftpd


# lock down MySQL
echo "We are now going to secure the MySQL installation, please go through the following questions and answer accordingly.\nContinuing in 15 seconds. "
sleep 15
mysql_secure_installation

# Enable mod-rewrite for Apach2
a2enmod rewrite
systemctl restart apache2

systemctl stop hostapd
systemctl stop dnsmasq

systemctl unmask hostapd
systemctl enable hostapd

# Modify /etc/dhcpcd.conf
cat ./configs/dhcpcd.conf >> /etc/dhcpcd.conf

# Make new /etc/dnsmasq.conf
mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
cat ./configs/dnsmasq.conf >> /etc/dnsmasq.conf

# Create a new hostadp.conf
cat ./configs/hostapd.conf > /etc/hostapd/hostapd.conf

# Add our config to the default hostapd.conf
cat ./configs/hostapd.default.conf >> /etc/default/hostapd.conf

systemctl start hostapd
systemctl start dnsmasq

# Pure-FTPd settings
touch /etc/pure-ftpd/pureftpd.pdb