alias ll="ls -al"

### fzf settings ###
export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_CTRL_R_OPTS='--sort --exact'
