ANDROID_SDK="/Users/raja/Library/Android/sdk"
PROJECT_DIR="/Users/raja/projects"

export PATH="$PATH:$ANDROID_SDK/platform-tools"
export PATH="$PATH:$ANDROID_SDK/tools"
export PATH="$PATH:$PROJECT_DIR/gradle/gradle-3.3/bin"
export PATH="$PATH:$PROJECT_DIR/apache-ant-1.9.6/bin"
export PATH="$PATH:$PROJECT_DIR/gwt-2.7.0"

export ANDROID_HOME="$ANDROID_SDK"

export GOPATH="$PROJECT_DIR/go-playground"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"

export PYTHON_USER_LIBRARY="$(python -m site --user-base)"
export PATH="$PATH:$PYTHON_USER_LIBRARY/bin"

#PS1="\u:\w\n $ "
#cd ~/projects
alias ll="ls -altr"
alias lt="ll -h | tail -20"

dufunc() {
  du -a $@ | grep -iv '\.git' | less
}

memfunc() {
  du -ah $@ | sort -h | tail -15
}
alias mem=memfunc
alias duu=dufunc

alias nn="npm ls --global --depth=0"
#alias vim="/usr/local/bin/vim"

credfunc() {
    eval "$(ssh-agent)"
    ssh-add ~/.ssh/github_rsa
    ssh-add ~/.ssh/bitbucket_rsa
    ssh-add ~/.ssh/digitalocean_rsa
}
alias cred=credfunc

dclean() {
  docker ps -qf status=exited  | while read -r line; do docker rm "$line"; done
  docker images -qf dangling=true  | while read -r line; do docker rmi "$line"; done
}

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
    #source $LUNCHY_DIR/lunchy-completion.bash
    source $LUNCHY_DIR/lunchy-completion.zsh
fi

# FuzzyFinder from junegunn/fzf
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/raja/projects/google-cloud-sdk/path.bash.inc'
#source '/Users/raja/projects/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/raja/projects/google-cloud-sdk/completion.bash.inc'
#source '/Users/raja/projects/google-cloud-sdk/completion.zsh.inc'

#source '/Users/raja/projects/angular-playground/ng_completion.bash.inc'
#source '/Users/raja/projects/angular-playground/ng_completion.zsh.inc'

# alias no="kubectl get no -o wide"
# alias rc="kubectl get rc -o wide"
# alias po="kubectl get po -o wide"
# alias sv="kubectl get svc -o wide"
# 
# lg() {
#   kubectl logs -f $(echo $(kubectl get po -o name) | awk '{print $1}' | sed 's/pod\///')
# }
# 
