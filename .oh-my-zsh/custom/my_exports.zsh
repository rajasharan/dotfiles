export EDITOR='vim'
export PATH="$(go env GOPATH)/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/softwares:$PATH"
export FZF_DEFAULT_COMMAND="fd --type f --hidden"
export FZF_CTRL_T_COMMAND="fd --type f --hidden"
export FZF_DEFAULT_OPTS="--reverse --extended --cycle --no-height"
export FZF_CTRL_T_OPTS="--reverse --extended --cycle --no-height --preview 'bat --color=always {}'"
