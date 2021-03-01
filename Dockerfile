FROM ubuntu:latest
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install vim -y
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
WORKDIR /var/www/html
COPY index.html /var/www/html/index.html
CMD ["apachectl", "-D", "FOREGROUND"]


