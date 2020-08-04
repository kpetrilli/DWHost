#!/bin/sh

#1 Start TOR
exec /usr/bin/tor -f /etc/tor/torrc --quiet
#2 Change ownership of /var/www
chown -R nginx:nginx /var/www/
#3 Start NGINX webserver
exec /usr/sbin/nginx
#4 Return the onion address
echo "Your hidden service address: $(cat /var/lib/tor/hidden_service/hostname)" > hostname.txt
cat hostname.txt
/bin/sh
