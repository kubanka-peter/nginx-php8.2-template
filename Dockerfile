######################## DEV ########################
FROM kubi84/nginx-php8.2:dev as dev

#
# install here your dependencies
#

######################## PROD ########################
FROM kubi84/nginx-php8.2 as prod

#
# install here your dependencies
#

# COPY SOURCE FILES
COPY --from=dev /usr/local/bin/composer /usr/local/bin/composer

# if you have any other root folder, thats required for your project, add it here
COPY composer.json /var/www/project/composer.json
COPY public /var/www/project/public
COPY src /var/www/project/src

RUN composer install --no-dev --optimize-autoloader --no-interaction --no-progress \
    && composer clear-cache \
    && rm /usr/local/bin/composer
