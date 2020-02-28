FROM ovip/apache-php:7.4

# copy the project into the container
COPY ${pwd}/data/ /var/www/html/

RUN chmod 0755 bin/console \
    && chown -R www-data:www-data /var/www \
    && composer install --ignore-platform-reqs