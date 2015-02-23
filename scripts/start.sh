#!/bin/bash

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora; \
service oracle-xe start

sh /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_SID=XE
export NLS_LANG=`$ORACLE_HOME/bin/nls_lang.sh`
export PATH=$ORACLE_HOME/bin:$PATH

sqlplus system/oracle @/scripts/create_user.sql
sqlplus tutorial/tutorial @/scripts/example.sql

/usr/sbin/sshd -D
