#!/bin/bash
# This payload script restores all interfaces on the device

# Enable Loopback interface
ifconfig lo up
LOG "Loopback interface enabled"

# Enable wlan0mon
ifconfig wlan0mon up
LOG "wlan0mon interface enabled"

# Enable wlan1mon
ifconfig wlan1mon up
LOG "wlan1mon interface enabled"

# Enable wlan0cli 
ifconfig wlan0cli up
LOG "wlan0cli interface enabled"

#Enable wlan0mgmt
ifconfig wlan0mgmt up
LOG "wlan0mgmt interface enabled"

#Enable eth0
ifconfig eth0 up
LOG "eth0 interface enabled"

LOG "All wireless interfaces have been enabled"