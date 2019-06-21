#!/bin/bash
FILE=/var/lib/dhcp/dhcpd.leases
if [ -f "$FILE" ]; then
    echo "$FILE exist"
else
    touch /var/lib/dhcp/dhcpd.leases
fi
/usr/sbin/dhcpd -4 -f -d --no-pid -cf /etc/dhcp/dhcpd.conf > /var/log/dhcp.log 2>&1 &
/usr/local/bin/npm start --prefix /opt/glass-isc-dhcp
fg %1
