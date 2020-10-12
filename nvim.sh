#!/usr/bin/env bash
IMAGE=docker-nvim
docker build -t $IMAGE -f ./neovim/Dockerfile .
docker system prune -f
docker run -v ${PWD}/tour-of-heroes:/root/tour-of-heroes \
  -v ${HOME}/Repositories/ngswitcher.vim:/root/ngswitcher.vim --rm -it $IMAGE bash

