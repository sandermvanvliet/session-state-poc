#!/bin/sh

function runsql_on_all {
	machines=`docker ps --filter "name=mysql" --format "{{.Names}}"`
	
	for machine in $machines
	do
		echo $machine
		docker exec -ti $machine mysql -uroot -p123456 -vvv -e"$1"
	done
}

function runsql_file_on_all {
	machines=`docker ps --filter "name=mysql" --format "{{.Names}}"`
	
	for machine in $machines
	do
		echo $machine
		docker exec -i $machine mysql -uroot -p123456 < $1
	done
}
