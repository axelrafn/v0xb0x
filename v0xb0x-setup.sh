#!/bin/sh

# Update the system first
apt-get update
apt-get dist-upgrade -y
apt-get install -y hostapd dnsmasq
systemctl stop hostapd
systemctl stop dnsmasq

# Modify /etc/dhcpcd.conf
cat ./configs/dhcpcd.conf >> /etc/dhcpcd.conf

# Make new /etc/dnsmasq.conf
mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
cat ./configs/dnsmasq.conf >> /etc/dnsmasq.conf

# Create a new hostadp.conf
cat ./configs/hostapd.conf > /etc/hostapd/hostapd.conf

# Add our config to the default hostapd.conf
cat ./configs/hostapd.default.conf >> /etc/default/hostapd.conf