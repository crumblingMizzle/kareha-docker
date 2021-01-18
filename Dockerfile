# Dockerfile for kahera

FROM sebp/lighttpd

RUN apk add --update --no-cache perl perl-app-cpanminus wget make gcc perl-dev libc-dev imagemagick \
  && rm -rf /var/cache/apk/* && cpanm CGI

COPY etc/lighttpd/* /etc/lighttpd/
COPY start.sh /usr/local/bin/

ENV HOSTNAME="localhost"
WORKDIR /var/www/$HOSTNAME/htdocs
COPY --chown=lighttpd:lighttpd kareha/* ./
RUN mkdir data
RUN chown -R lighttpd:lighttpd /var/www/$HOSTNAME/htdocs

VOLUME /var/www/$HOSTNAME/htdocs/data/

CMD ["sh", "-c", "start.sh ${HOSTNAME}"]
