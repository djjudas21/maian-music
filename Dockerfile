FROM php:7.3-apache

# Install OS deps
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-configure mysqli \
    && docker-php-ext-install mysqli \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

# Copy in Maian Music app
COPY maian_music/music-store/ /var/www/html/

# Get rid of install dir
RUN rm -rf /var/www/html/install

# Activate .htaccess
RUN a2enmod rewrite \
    && mv /var/www/html/htaccess_COPY.txt /var/www/html/.htaccess

# Patch connect.php to allow setting database
# config via environment variables
COPY connect.php /var/www/html/control/

EXPOSE 80
