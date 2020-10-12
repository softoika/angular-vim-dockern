FROM alpine:3.11
RUN apk update && apk upgrade \
 && apk add --no-cache neovim bash git curl fzf the_silver_searcher \
 && rm -f /var/cache/apk/*

COPY ./dotfiles/ /root/

RUN mkdir -p ~/.config
RUN ln -s $HOME/.vim/vimrc $HOME/.vim/init.vim
RUN ln -s $HOME/.vim $HOME/.config/nvim

# Init dein.vim
RUN mkdir -p ~/.cache/dein
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh \
 && sh ~/installer.sh ~/.cache/dein > /dev/null \
 && rm -f ~/installer.sh \
 && nvim -N -u ~/.config/nvim/init.vim -c \
    "try | call dein#update() | finally | qall! | endtry" -V1 -es

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8" \
    TERM="xterm-256color"
WORKDIR /root/tour-of-heroes
