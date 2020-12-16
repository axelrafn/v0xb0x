# Features and plans

This is just where I jot down things I want the system to have.
Not here in any special order, just ideas and thoughts on the system.

# Hardware

* This should all run on a Raspberry Pi Zero W.
    * 1GHz 32bit CPU
    * 512MB RAM
    * 16GB "disk" (microSD card)

# The list

* MESH mode
    * Offer to put device in MESH mode for 1st responder type scenarios
    * Link for info on MESH: https://github.com/binnes/WiFiMeshRaspberryPi

* WiFi AP mode
    * Software: hostapd & dnsmasq
    * Enable AP mode with WPA2-PSK for encrypted communication
    * Enable AP mode without encryption for open connections ?

* HTTP Server
    * PHP must be running
    * run server in HTTPS mode
    * Offer blind drop-uploads (what max size?)

# Plans

* What do we need at first?

* OS side
    * Start machine, put WiFi into AP mode
    * Have a DHCPD to supply IPs to clients
    * Have a DNS to route everything to the local website?

* Web side
    * Offer up a simple PHP website to upload data
        * Should I offer FTP for large files?
        * MAX filesize on the MicroSD cards is 4GB (FAT32 limit)
            * Make another partition on the card with ext3/4 ?
    * Offer a simple message board?