#!/usr/bin/env bash
IMAGE=docker-vim
docker build -t $IMAGE .
docker system prune -f
docker run -v ${PWD}/tour-of-heroes:/root/tour-of-heroes --rm -it $IMAGE bash

