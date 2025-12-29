#!/bin/bash

# Disable Loopback interface
ifconfig lo down
LOG "Loopback interface disabled"

# Disable wlan0mon
ifconfig wlan0mon down
LOG "Loopback interface disabled"

# Disable wlan1mon
ifconfig wlan1mon down
LOG "wlan1mon interface disabled"

# Disable wlan0cli 
ifconfig wlan0cli down
LOG "wlan0cli interface disabled"

#Disable wlan0mgmt
ifconfig wlan0mgmt down
LOG "wlan0mgmt interface disabled"

#Disable eth0
ifconfig eth0 down
LOG "eth0 interface disabled"

LOG "All wireless interfaces have been disabled"