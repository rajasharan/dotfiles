alias ll="ls -altr"
alias lh="ls -altrh"
alias cpu="ps axc -o cmd,%mem,%cpu --sort=-%cpu"
alias mem="ps axc -o cmd,%mem,%cpu --sort=-%mem"
alias watch="watch -n 0.5 -d "
alias gls="git ls-files --full-name"
alias sudo="sudo -E env \"PATH=$PATH\""
alias ports="sudo lsof -PiTCP -sTCP:LISTEN"
alias dua="du -a"
alias mv="mv -iv"
alias vram="glxinfo | ag 'device|memory'"
alias meminfo="sudo dmidecode --type 17"
alias memspeed="sudo lshw -short -C memory"

ptop() {
    htop --pid=$(pgrep -i "$@" | paste -sd, -)
}
