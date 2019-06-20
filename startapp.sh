#!/bin/bash
/usr/sbin/dhcpd -4 -f -d --no-pid -cf /etc/dhcp/dhcpd.conf &
/usr/local/bin/npm start --prefix /opt/glass-isc-dhcp
fg %1
