export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;4m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;4m\]:\[$(tput sgr0)\]\[\033[38;5;5m\]\W\[$(tput sgr0)\]\[\033[38;5;4m\]\\$\[$(tput sgr0)\]"
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias grep='grep -n --color'
alias gits='git status -s'
alias gitl='git log --oneline'
