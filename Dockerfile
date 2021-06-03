FROM alpine:latest

RUN apk update && apk add apache2 && apk add apache2-proxy && apk add apache2-ssl && rm -rf /var/cache/apk/*

copy index.html ./var/www/localhost/htdocs/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
