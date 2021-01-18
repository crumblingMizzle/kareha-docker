# Dockerfile for kahera

FROM nginx:stable-alpine-perl

RUN apk add --update --no-cache fcgi fcgiwrap perl-fcgi perl-cgi nano openrc perl perl-app-cpanminus wget make gcc perl-dev libc-dev imagemagick \
  && rm -rf /var/cache/apk/*

COPY etc/init.d/* /etc/init.d/
COPY usr/local/bin/* /usr/local/bin/
COPY data/nginx.conf /etc/nginx/nginx.conf

ARG HOSTNAME="localhost"
COPY kareha/* /var/www/$HOSTNAME/htdocs/
VOLUME /var/www/$HOSTNAME/htdocs/data/

CMD ["sh", "-c", "start.sh ${HOSTNAME}"]
