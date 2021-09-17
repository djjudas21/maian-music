FROM php:7.3-apache

#RUN ls /var/www/html/

#RUN apt-get update && apt-get install -y libzip-dev

RUN docker-php-ext-configure mysqli \
    && docker-php-ext-install mysqli

COPY music-store/ /var/www/html/

EXPOSE 80
