#!/bin/sh

./create-repl-user.sh
./init-session-storage.sh
./mysql01/after-start.sh
./mysql02/after-start.sh
