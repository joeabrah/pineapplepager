#!/bin/bash
# This payload script restores the original firewall settings from backup to restrict management access

# Restore the original firewall config
cp /etc/config/firewall.backup /etc/config/firewall

# Restart the firewall
fw4 reload

LOG "Firewall has been restored, enabled and restarted"