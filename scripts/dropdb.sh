#!/bin/sh

docker exec -ti sessionstatepoc_mysql01_1 mysql -uroot -p123456 -vvv -e"DROP DATABASE repltest;"