FROM ovip/apache-php:7.4

# copy the project into the container
COPY ${pwd}/data/ /var/www/html/

RUN chmod 0755 bin/console \
    && composer install --ignore-platform-reqs \
    && chown -R www-data:www-data /var/www