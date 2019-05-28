alias be="bundle exec"
alias bes="bundle exec spring"
alias bi="bundle install"
alias bu="bundle update"
alias gs="git status"
alias gps="git push"
alias gc="git checkout"
alias gcb="git rev-parse --abbrev-ref HEAD $argv"
alias gpsf="git push --force"
alias gp="git pull"
alias gpsh="git push heroku"
alias cleardns="sudo killall -HUP mDNSResponder"
alias cd..="cd .."
export PRY=1
export EDITOR=vim

source ~/git-completion.bash

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias sshcs="ssh tboyd@linux.student.cs.uwaterloo.ca"

# Add ~/bin to start of path, eg. for python->python3 override
export PATH="$HOME/bin:$PATH"
# Add python3.7/bin to path
export PATH="$PATH:/Users/tyler/Library/Python/3.7/bin/"

# sad ree about rvm/openssl/homebrew
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig:/usr/local/lib/pkgconfig

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby 2.4 # don't default to system ruby
