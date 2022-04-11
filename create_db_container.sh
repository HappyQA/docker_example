#!/bin/bash

echo "Запуск контейнера с БД"
cd /var/lib/jenkins/workspace/"project_name"/db_QAA && docker-compose up -d

echo "Ожидаение поднятия контейнера"
sleep 5

echo "Накатываем бэкап БД для тестов"
mysql -u login -ppassword --host=127.0.0.1 --port=33069 name_db < /var/lib/jenkins/workspace/"project_name"/db_QAA/dumps/example_dump.sql