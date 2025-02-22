FROM php:8.4-apache
ENV TZ=Europe/Helsinki
RUN apt update && apt full-upgrade -y && apt clean

# https://hub.docker.com/_/php
# the official way to install extensions on the php container is via docker-php-ext-install
RUN apt install -y zlib1g-dev libpng-dev libjpeg-dev libwebp-dev libfreetype6-dev recode
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp && docker-php-ext-install -j$(nproc) mysqli gd && docker-php-ext-enable mysqli gd

# TODO: install pics/logo.png
#
# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY pupesoft7 /var/www/html
COPY root /
EXPOSE 80
