FROM php:7.3-fpm

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
RUN mkdir /app
WORKDIR /app
COPY maian_music/music-store/ /app/

# Get rid of install dir
RUN rm -rf /app/install

# Patch connect.php to allow setting database
# config via environment variables
COPY connect.php /app/control/

EXPOSE 9000
