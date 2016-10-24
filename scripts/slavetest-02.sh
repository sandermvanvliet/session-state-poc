#!/bin/sh

docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -vvv -e"USE repltest; SELECT * FROM foo;"
