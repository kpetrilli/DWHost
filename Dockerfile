FROM alpine:latest

#Base packages
RUN apk update && \
    apk add tor \
    nginx

ADD torrc /etc/tor/torrc
ADD nginx.conf /etc/nginx/nginx.conf
ADD hidden_service.conf /etc/nginx/conf.d/default.conf
ADD website /var/www/hidden_service/index.html
ADD start.sh /root/start.sh

ENTRYPOINT /bin/sh /root/start.sh
