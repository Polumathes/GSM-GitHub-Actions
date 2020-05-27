FROM php:7.3-cli
RUN apt-get update
RUN apt-get install -y git zip unzip
COPY --from=composer /usr/bin/composer /usr/bin/composer

#ADD entrypoint.sh ./.github/workflows/phpunit/entrypoint.sh
#ENTRYPOINT ["sh", "./.github/workflows/phpunit/entrypoint.sh"]