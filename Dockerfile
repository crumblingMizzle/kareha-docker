# Dockerfile for kahera

FROM sebp/lighttpd

ENV LIGHTTPD_VERSION=1.4.55-r1

RUN apk add --update --no-cache perl perl-app-cpanminus wget make gcc perl-dev libc-dev imagemagick \
  && rm -rf /var/cache/apk/* && cpanm CGI

COPY etc/lighttpd/* /etc/lighttpd/
COPY kareha/* /var/www/localhost/htdocs/

RUN mkdir /var/www/localhost/htdocs/res
RUN chown -R lighttpd /var/www/localhost/htdocs/
RUN chgrp -R lighttpd /var/www/localhost/htdocs/

VOLUME /var/www/localhost/htdocs/config

CMD ["start.sh"]
