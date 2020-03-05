FROM ovip/apache-php:7.4

RUN chmod 0755 bin/console \
    && composer install --ignore-platform-reqs \
    && chown -R www-data:www-data /var/www