#!/bin/sh

docker exec -ti sessionstatepoc_mysql01_1 mysql -uroot -p123456 -vvv -e"GRANT REPLICATION SLAVE ON *.* TO repl@'%' IDENTIFIED BY '67890'"
docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -vvv -e"GRANT REPLICATION SLAVE ON *.* TO repl@'%' IDENTIFIED BY '67890'"
