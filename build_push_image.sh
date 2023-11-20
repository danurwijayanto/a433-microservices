#!/bin/sh

docker build -t item-app:v1 .
docker image ls
docker tag item-app:v1 hcr.io/danurwijayanto/item-app:v1

echo $CR_PAT | docker login ghcr.io -u danurwijayanto --password-stdin

docker push ghcr.io/danurwijayanto/item-app:v1
