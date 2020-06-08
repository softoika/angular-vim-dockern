" Deinの設定
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/.vim/on_init.toml', { 'lazy': 0 })
  call dein#load_toml('~/.vim/lazy.toml', { 'lazy': 1 })
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" Vimビルトインのプラグインを有効化
source $VIMRUNTIME/macros/matchit.vim
