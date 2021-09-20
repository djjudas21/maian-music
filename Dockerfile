FROM php:7.3-apache

# Install MySQL client for migrations
RUN apt-get update \
	&& apt-get install -y default-mysql-client \
	&& rm -rf /var/lib/apt/lists/*

# Install MySQL connector for PHP
RUN docker-php-ext-configure mysqli \
    && docker-php-ext-install mysqli

# Copy in Maian Music app
COPY maian_music/music-store/ /var/www/html/

# Get rid of install dir
RUN rm -rf /var/www/html/install

# Patch connect.php to allow setting database
# config via environment variables
COPY connect.php /var/www/html/control/

EXPOSE 80
