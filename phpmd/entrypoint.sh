#!/bin/sh -l

sh -c "echo '---Installing dependencies---'"
composer install

sh -c "echo '---Running code style analysis---'"
./vendor/bin/phpmd $SOURCE_CODE $RENDERER $RULES