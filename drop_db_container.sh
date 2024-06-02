#!/bin/bash

echo "Drop test DB"
mysql -u login -ppassword --host=127.0.0.1 --port=33069 -e "drop database"

echo "Create clear schema for DB"
mysql -u login -ppassword --host=127.0.0.1 --port=33069 -e "create database db_name character set utf8"

echo "Docker stop DB image"
docker stop mariadb_10.1_QAA