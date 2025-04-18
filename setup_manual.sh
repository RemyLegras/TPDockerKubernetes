#!/bin/bash

docker network create db_network
docker network create site_network
docker volume create db_volume

docker build -t mysql ./mysql
docker build -t app ./app
docker build -t nginx ./nginx

docker run -d --name mysql_container --network db_network \
  --network-alias mysql -v db_volume:/var/lib/mysql \
  -v ./mysql/conf/init.sql:/docker-entrypoint-initdb.d/init.sql \
  -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=testdb \
  -p 5655:3306 mysql

docker run -d --name app_container --network db_network --network site_network \
  --network-alias app -p 4743:4743 app

docker run -d --name nginx_container --network site_network \
  -p 5423:824 nginx