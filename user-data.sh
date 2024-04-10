#!/bin/bash
apt update -y
apt install nginx -y
systemctl start nginx
chkconfig nginx on
cd /var/www/html
echo "<h1>hello world from $(hostname -f)</h1>"