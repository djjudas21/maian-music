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
WORKDIR /var/www/html
COPY maian_music/music-store/ .

# Get rid of install dir
RUN rm -rf install

# Patch config files to allow setting
# config via environment variables
COPY connect.php control/
COPY access.php admin/control/

EXPOSE 9000
