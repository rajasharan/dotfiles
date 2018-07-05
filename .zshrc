# Path to your oh-my-zsh installation.
export ZSH=/Users/raja/.oh-my-zsh
export TERM="xterm-256color"

# Custom themes under ~/.oh-my-zsh/custom/...
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ip os_icon time vi_mode)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git docker vi-mode npm nvm screen zsh-autosuggestions)

# User configuration
source $ZSH/oh-my-zsh.sh
source ~/.bashrc
