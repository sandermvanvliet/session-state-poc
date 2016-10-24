#!/bin/sh

. runsql.sh

runsql_on_all "CREATE DATABASE sessionstate"
runsql_on_all "GRANT ALL PRIVILEGES ON sessionstate.* TO sessionStateUser@'%' IDENTIFIED BY 'aaabbb'"
