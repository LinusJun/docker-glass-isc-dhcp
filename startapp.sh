#!/bin/bash
touch /var/lib/dhcp/dhcpd.leases
sed -i "/admin_password/s/glassadmin/$ADMINPASSWORD/g" /opt/glass-isc-dhcp/config/glass_config.json
/usr/sbin/dhcpd -4 -f -d --no-pid -cf /etc/dhcp/dhcpd.conf > /var/log/dhcp.log 2>&1 &
/usr/local/bin/npm start --prefix /opt/glass-isc-dhcp
fg %1
