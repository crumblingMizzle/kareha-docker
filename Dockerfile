# Dockerfile for kahera

FROM sebp/lighttpd

RUN apk add --update --no-cache perl perl-app-cpanminus wget make gcc perl-dev libc-dev imagemagick \
  && rm -rf /var/cache/apk/* && cpanm CGI

COPY etc/lighttpd/* /etc/lighttpd/
COPY start.sh /usr/local/bin/

WORKDIR /var/www/localhost/htdocs
COPY --chown=lighttpd:lighttpd kareha/* ./
RUN mkdir data
RUN chown -R lighttpd:lighttpd /var/www/localhost/htdocs

VOLUME /var/www/localhost/htdocs/data/
