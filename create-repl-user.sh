#!/bin/sh

. runsql.sh

runsql_on_all "GRANT REPLICATION SLAVE ON *.* TO repl@'%' IDENTIFIED BY '67890'"
