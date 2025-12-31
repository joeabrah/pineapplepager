#!/bin/bash
# This payload script modifies the firewall settings to allow LAN management access via SSH and Virtual Pager

# Backup the original firewall config
cp /etc/config/firewall /etc/config/firewall.backup

# Replace the firewall configuration with the new settings to disable it on the wlan0cli interface
cp /etc/config/firewall_lan_open /etc/config/firewall

# Restart the firewall
fw4 reload

LOG "Client LAN endpoints may now connect via client IP address over web and SSH"
LOG "USE CAUTION WITH THIS SETTING - WEB MANAGEMENT IS NOT ENCRYPTED"
LOG "Backup saved to /etc/config/firewall.backup"