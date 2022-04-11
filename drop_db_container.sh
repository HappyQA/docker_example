#!/bin/bash

echo "Удаление содержимого схемы db"
mysql -u login -ppassword --host=127.0.0.1 --port=33069 -e "drop database"

echo "Создание пустой схемы"
mysql -u login -ppassword --host=127.0.0.1 --port=33069 -e "create database db_name character set utf8"

echo "Стоп контейнер с БД"
docker stop mariadb_10.1_QAA