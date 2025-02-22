FROM php:8.4-apache
ENV TZ=Europe/Helsinki
RUN apt update && apt full-upgrade -y && apt clean
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
# TODO: install other dependencies, php extensions etc. from apt if needed
# TODO: install pics/logo.png
COPY pupesoft7 /var/www/html
COPY root /
EXPOSE 80
