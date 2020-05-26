#!/bin/sh -l

sh -c "echo '---Installing dependencies---'"
composer install

sh -c "echo '---Running code style analysis---'"
./vendor/bin/phpmd ./TestPackage/ ansi cleancode,design,codesize,unusedcode,naming