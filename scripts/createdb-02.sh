#!/bin/sh

docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -vvv -e"CREATE DATABASE repltest; USE repltest; CREATE TABLE foo (id int NOT NULL AUTO_INCREMENT, bar char(1), PRIMARY KEY(id));"
