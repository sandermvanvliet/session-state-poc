#!/bin/sh

docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -vvv -e"USE sessionstate; SELECT * FROM data;"
