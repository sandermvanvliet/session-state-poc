#!/bin/sh

status=`docker exec -ti sessionstatepoc_mysql01_1 mysql -uroot -p123456 -sssss  -e"SHOW MASTER STATUS;" | tail -n 1`

logfile=`echo $status | awk '{print $1}'`
pos=`echo $status | awk '{print $2}'`

