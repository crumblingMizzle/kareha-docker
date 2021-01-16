#!/bin/sh

chmod a+w /dev/pts/0
chown -R 100:101 /var/www/localhost/htdocs
exec lighttpd -D -f /etc/lighttpd/lighttpd.conf
