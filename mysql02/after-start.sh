#!/bin/sh

docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -e'change master to master_host="mysql01",master_user="repl",master_password="67890",master_log_file="mysql-bin.000003",master_log_pos=429;' -vvv
docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -e'START SLAVE;' -vvv
