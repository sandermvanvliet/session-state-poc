#!/bin/sh

. runsql.sh

runsql_on_all "CREATE DATABASE sessionstate"
#runsql_on_all "DROP TABLE sessionstate.``data``"
runsql_on_all "CREATE TABLE sessionstate.``data``(``id`` int not null auto_increment, value blob null, \`key\` varchar(36) not null unique, size int not null, expiry_date datetime not null, lifetime time not null, is_slidingexpiry bit not null, primary key (``id``))"
runsql_on_all "GRANT ALL PRIVILEGES ON sessionstate.* TO sessionStateUser@'%' IDENTIFIED BY 'aaabbb'"
