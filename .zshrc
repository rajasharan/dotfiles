export ZSH="/Users/raja/.oh-my-zsh"
ZSH_THEME="avit"
plugins=(git git-prompt zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"
