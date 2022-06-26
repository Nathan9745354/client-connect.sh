sudo su

echo "script-security 2" >> /etc/openvpn/server/server.conf
echo "client-connect /var/log/script.sh" >> /etc/openvpn/server/server.conf

touch /var/log/script.sh

#!/bin/sh
user=$common_name
remote_ip=$trusted_ip
local_ip=$ifconfig_pool_remote_ip

echo $(date) $user $remote_ip $local_ip >> /var/log/logfile.log 



echo " " >> /var/log/logfile.log

chmod 777 /var/log/script.sh
chmod 777 /var/log/logfile.log

systemctl restart openvpn-server@server.service


systemctl status openvpn-server@server.service

exit
