# Features and plans

This is just where I jot down things I want the system to have.
Not here in any special order, just ideas and thoughts on the system.

# Hardware

* This should all run on a Raspberry Pi Zero W.
    * 1GHz 32bit CPU
    * 512MB RAM
    * 16GB "disk" (microSD card)

* Powered by a USB battery bank (10-20k mah)

# The list

# TODO
* HTTP Server
    * PHP must be running
    * Create script that creates a user for you for FTP
 
* FTP Server
    * pure-ftpd?
    * Virtual users created via webscript, unique dirs only accessable by them.

# FUTURE
* MESH mode ?
    * Perhaps a fork off this project?
    * Offer to put device in MESH mode for 1st responder type scenarios
    * Link for info on MESH: https://github.com/binnes/WiFiMeshRaspberryPi

# DONE
* WiFi AP mode
    * Software: hostapd & dnsmasq
    * Enable AP mode with WPA2-PSK for encrypted communication

# PLANS
* What do we need at first?

* OS side
    * Start machine, put WiFi into AP mode X
    * Have a DHCPD to supply IPs to clients X
    * Have a DNS to route everything to the local website?
    * Offer FTP for large files?
        * MAX filesize on the MicroSD cards is 4GB (FAT32 limit)
        * Make another partition on the card with ext3/4 ?
* Web side
    * Offer up a simple PHP website to create a FTP user and password