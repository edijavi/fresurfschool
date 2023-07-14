FROM wordpress:php8.1-fpm-alpine

# Copy theme customizations
COPY wordpress_data /var/www/html/wp-content

# Copy configuration files
COPY ./config/php.ini /usr/local/etc/php/conf.d/custom.ini