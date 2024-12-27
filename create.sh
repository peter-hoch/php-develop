#!/bin/bash

docker compose up --build

# recrteate containers and volumes
#docker compose up --build --force-recreate -V

# delete containers
docker compose down
