#!/usr/bin/env bash
IMAGE=docker-vim
docker rmi $IMAGE
docker build -t $IMAGE .
docker run -v ${PWD}/tour-of-heroes:/root/tour-of-heroes --rm -it $IMAGE bash

