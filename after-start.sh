#!/bin/sh

./create-repl-user.sh
./scripts/createdb-01.sh
./scripts/createdb-02.sh
./mysql01/after-start.sh
./mysql02/after-start.sh
