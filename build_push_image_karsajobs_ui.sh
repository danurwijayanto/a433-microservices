#!/bin/sh

# Build image
docker build -t ghcr.io/danurwijayanto/karsajobs-ui:latest .

# Login ke github package
echo $CR_PAT | docker login ghcr.io -u danurwijayanto --password-stdin

# Push docker image
docker push ghcr.io/danurwijayanto/karsajobs-ui:latest
