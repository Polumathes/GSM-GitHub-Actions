FROM php:7.3-cli
RUN apt-get update
RUN apt-get install -y git zip unzip
COPY --from=composer /usr/bin/composer /usr/bin/composer

#CMD sh -c "echo '---Installing dependencies---'" && composer install
#CMD sh -c "echo '---Running unit tests---'" && ./vendor/bin/phpunit $TESTS_DIR
ADD entrypoint.sh Polumathes/GSM-GitHub-Actions/phpunit/entrypoint.sh
ENTRYPOINT ["sh", "Polumathes/GSM-GitHub-Actions/phpunit/entrypoint.sh"]