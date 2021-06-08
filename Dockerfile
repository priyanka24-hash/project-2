# This Dockerfile is to install, configure and deploy Apache Web Server
FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
