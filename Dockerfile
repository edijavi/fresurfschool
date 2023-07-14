FROM edijavi/fresurfschool:base

# Copy theme customizations
COPY ./wordpress /var/www/html

# Copy configuration files
COPY ./config/php.ini /usr/local/etc/php/conf.d/custom.ini