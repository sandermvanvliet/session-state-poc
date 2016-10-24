#!/bin/sh

docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -e'STOP SLAVE;' -vvv

status=`docker exec -ti sessionstatepoc_mysql01_1 mysql -uroot -p123456 -sssss  -e"SHOW MASTER STATUS;" | tail -n 1`

logfile=`echo $status | awk '{print $1}'`
logpos=`echo $status | awk '{print $2}'`

echo "Initializing replication for $logfile on $logpos"
docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -e"change master to master_host='mysql01',master_user='repl',master_password='67890',master_log_file='$logfile',master_log_pos=$logpos;" -vvv

docker exec -ti sessionstatepoc_mysql02_1 mysql -uroot -p123456 -e'START SLAVE;' -vvv
