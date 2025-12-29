#!/bin/bash

# Backup the original firewall config
cp /etc/config/firewall /etc/config/firewall.backup

# Replace the firewall configuration with the new settings to disable it
cp /etc/config/firewall_lan_open /etc/config/firewall

# Restart the firewall
fw4 reload

echo "Client LAN endpoints may now connect via client IP address over web and SSH"
echo "USE CAUTION WITH THIS SETTING - WEB MANAGEMENT IS NOT ENCRYPTED"
echo "Backup saved to /etc/config/firewall.backup"