#!/bin/bash

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" $ORACLE_HOME/network/admin/listener.ora
while true; do
    pmon=`ps -ef | grep pmon_$ORACLE_SID | grep -v grep`
    if [ "$pmon" == "" ]
    then
        date
        /etc/init.d/oracle-xe start

	sqlplus system/oracle @/scripts/create_user.sql
	sqlplus tutorial/tutorial @/scripts/example.sql
	echo "excuted sql scripts"
    fi
    sleep 1m
done;

