# Path to your oh-my-zsh installation.
export ZSH=/Users/raja/.oh-my-zsh
export TERM="xterm-256color"

# Custom themes under ~/.oh-my-zsh/custom/...
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ip status time vi_mode)
POWERLEVEL9K_TIME_FORMAT="%D{%A %h %d [%l:%M %p]}"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git vi-mode mvn docker aws zsh-autosuggestions zsh-completions)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
