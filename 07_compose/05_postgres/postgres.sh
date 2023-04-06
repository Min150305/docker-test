#!/bin/bash

docker network create mynet

docker run -d --name postgresdb --restart=always \
 --network mynet \
 -e POSTGRES_PASSWORD=password \
 postgres

 docker run -d --name adminer --restart=always \
  -p 8080:8080 --network mynet \
  adminer