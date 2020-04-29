FROM alpine:3.11
RUN apk update && apk upgrade && apk add --no-cache vim bash git curl \
 && rm -f /var/cache/apk/*

COPY ./dotfiles/ /root/

# Init dein.vim
RUN mkdir -p ~/.cache/dein
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh \
 && sh ~/installer.sh ~/.cache/dein > /dev/null \
 && rm -f ~/installer.sh \
 && vim -N -u ~/.vim/vimrc -c \
    "try | call dein#update() | finally | qall! | endtry" -V1 -es

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8" \
    TERM="xterm-256color"
WORKDIR /root/tour-of-heroes
