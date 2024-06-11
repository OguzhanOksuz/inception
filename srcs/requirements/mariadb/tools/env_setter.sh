#!/bin/bash

#if  (["" == "$MYSQL_USER"])
#then
#	echo "MYSQL_USER = $MYSQL_USER"
#	echo "MYSQL_DB = $MYSQL_DB"
#	echo "MYSQL_PASSWORD = $MYSQL_PASSWORD"
#	echo "MYSQL_ROOT_PASSWORD = $MYSQL_ROOT_PASSWORD"
#	echo "MISSING ENV VALUE"
#	exit 1
##fi

envsubst < /var/www/initial_db.template > /var/www/initial_db.sql
echo "env_setter done!"

exec "$@"
