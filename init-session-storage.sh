#!/bin/sh

. runsql.sh

runsql_file_on_all ./sqlscripts/create-session-db.sql
