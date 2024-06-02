#!/bin/bash

echo "Launch docker image with DB"
cd /var/lib/jenkins/workspace/"project_name"/db_QAA && docker-compose up -d

echo "Expilcit wait for DB"
sleep 5

echo "Prepare test data"
mysql -u login -ppassword --host=127.0.0.1 --port=33069 name_db < /var/lib/jenkins/workspace/"project_name"/db_QAA/dumps/example_dump.sql