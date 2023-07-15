FROM wordpress:php8.1-fpm-alpine

RUN apk add --no-cache \
    shadow \
    && usermod -u 1000 www-data \
    && groupmod -g 1000 www-data \
    && chown -R www-data:www-data /var/www/html/wp-content

# Copy theme customizations
COPY ./wordpress /var/www/html

# Copy configuration files
COPY ./config/php.ini /usr/local/etc/php/conf.d/custom.ini