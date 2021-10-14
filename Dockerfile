FROM php:8.0-fpm

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git zip unzip libzip4