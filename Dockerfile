# This Dockerfile is to install, configure and deploy Apache Web Server
FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
ADD index.html /var/www/html/
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
