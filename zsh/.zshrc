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
alias codex="npx @openai/codex"
unsetopt share_history

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


export PATH="$HOME/.local/bin:$PATH"
export WORDCHARS="-_"

eval "$(starship init zsh)"

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
