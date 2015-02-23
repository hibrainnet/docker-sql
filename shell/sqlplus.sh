#!/bin/bash

ORACLE_HOST=$(echo "$DOCKER_HOST" | sed -E 's/(tcp:\/\/)(([0-9]+\.){3}[0-9]+)[^ ]+/\2/g')
sqlplus tutorial/tutorial@'(description=(address_list=(address=(protocol=TCP)(host='$ORACLE_HOST')(port=1521)))(connect_data=(service_name=XE)))'
