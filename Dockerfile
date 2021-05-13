FROM php:8.0-apache

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN apt-get update
RUN apt-get install -y apache2


COPY vb2.php /var/www/html/

WORKDIR /var/www/html/dww2/vb2.php

EXPOSE 80:81 
