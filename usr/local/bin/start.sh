#!/bin/sh

rc-update add spawn-fcgi default
rc-service spawn-fcgi start
chown -R nginx:nginx /var/www/$1/htdocs/
nginx
