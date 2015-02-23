#!/bin/bash

docker run --name docker-sql \
-d -p 9022:22 -p 9002:1521 -p 9003:8080 \
hibrainnet/docker-sql
