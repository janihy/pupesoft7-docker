FROM php:8.4-apache
ENV TZ=Europe/Helsinki
RUN apt update && apt full-upgrade -y && apt clean
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
# TODO: install dependencies, php extensions etc. from apt
COPY pupesoft7 /var/www/html
COPY root /
EXPOSE 80
