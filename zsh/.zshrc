alias gs="git status"
alias gps="git push"
alias gc="git checkout"
alias gcb="git rev-parse --abbrev-ref HEAD $argv"
alias gpsf="git push --force"
alias gp="git pull"
alias cleardns="sudo killall -HUP mDNSResponder"
alias cd..="cd .."
alias clip="tr -d '\n' | pbcopy"
alias kc="kubectl"
unsetopt share_history

export PATH="$HOME/.local/bin:$PATH"
