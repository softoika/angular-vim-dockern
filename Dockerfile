FROM alpine:3.11
RUN apk update && apk upgrade && apk add --no-cache vim bash git curl
# RUN rm -rf /var/cache/apk/*
RUN mkdir -p ~/.cache/dein
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh \
 && sh ~/installer.sh ~/.cache/dein \
 && rm -f ~/installer.sh
ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
COPY ./dotfiles/ /root/
WORKDIR /root/tour-of-heroes
