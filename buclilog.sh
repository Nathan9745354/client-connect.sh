sudo su

echo "script-security 2" >> /etc/openvpn/server/server.conf
echo "client-connect /var/log/script.sh" >> /etc/openvpn/server/server.conf


cd /var/log

wget https://raw.githubusercontent.com/Nathan9745354/client-connect.sh/main/script.sh

touch /var/log/logfile.log

chmod 777 /var/log/script.sh
chmod 777 /var/log/logfile.log

systemctl restart openvpn-server@server.service


systemctl status openvpn-server@server.service

exit
