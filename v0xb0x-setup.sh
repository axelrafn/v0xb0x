#!/bin/sh

# Update the system first
apt-get update
apt-get dist-upgrade -y
apt-get install -y hostapd dnsmasq
apt-get install -y apache2 php libapache2-mod-php 
apt-get install -y mariadb-server-10.0

# lock down MySQL
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