#!/bin/bash

nohup /usr/lib/trino/bin/run-trino &

sleep 10

trino < /tmp/post-init.sql

tail -f /dev/null
