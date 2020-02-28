FROM ovip/apache-php:7.4

RUN git clone -b ${GIT_BRANCH} git@github.com:DanielLarusso/daniellarusso-de.git /var/www/html \
    && composer install --ignore-platform-reqs \
    && chown -R www-data:www-data /var/www