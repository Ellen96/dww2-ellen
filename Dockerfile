FROM php:8.0-apache
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN apt-get update
COPY . /var/www/html/
EXPOSE 81
