# Dockerfile
FROM php:7.1.12-apache

MAINTAINER KelvinMurumba <kevmurumba@gmail.com>

COPY deploy/config/php.ini /usr/local/etc/php/

RUN apt-get update

# Install Postgre PDO
RUN apt install php-pgsql

EXPOSE 80
EXPOSE 443


RUN service apache2 restart
