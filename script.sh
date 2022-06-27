#!/bin/sh
user=$common_name
remote_ip=$trusted_ip
local_ip=$ifconfig_pool_remote_ip

echo $(date) $user $remote_ip $local_ip >> /var/log/logfile.log 
