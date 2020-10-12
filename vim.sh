#!/usr/bin/env bash
IMAGE=docker-vim
docker build -t $IMAGE .
docker system prune -f
docker run -v ${PWD}/tour-of-heroes:/root/tour-of-heroes \
  -v ${HOME}/Repositories/ngswitcher.vim:/root/ngswitcher.vim --rm -it $IMAGE bash

