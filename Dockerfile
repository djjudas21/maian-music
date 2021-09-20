FROM php:7.3-apache

#RUN ls /var/www/html/

RUN apt-get update \
	&& apt-get install -y default-mysql-client \
	&& rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure mysqli \
    && docker-php-ext-install mysqli

COPY music-store/ /var/www/html/
RUN rm -rf /var/www/html/install
COPY connect.php /var/www/html/control/

EXPOSE 80
