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
alias clip="tr -d '\n' | pbcopy"
alias do-rebase="git pull --rebase origin development && git push --force"
alias kc="kubectl"

alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; java -version"

function aws-- () {
    eval "$(aws-okta env $1 -t 8h | grep export)"
}

function k8s-ns () {
    kubectl config set-context --current --namespace="$1"
}

export PRY=1
export EDITOR=vim
export DOCKER_PROJECTS="/Users/tylerboyd/work"
alias gitfix='git update-index --no-assume-unchanged $(git ls-files $(git rev-parse --show-toplevel))'
export GOPATH="/Users/tylerboyd/golang"
export PATH="$PATH:$GOPATH/bin"

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
export PATH="$PATH:/Users/tyler/bin/openapitools/"
export PATH="$PATH:/Users/tylerboyd/.cargo/bin/"

# sad ree about rvm/openssl/homebrew
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig:/usr/local/lib/pkgconfig

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
# chruby 2.4 # don't default to system ruby

# traderev
alias startdynamo="docker run -p 8999:8000 amazon/dynamodb-local"

# Set the MySQL Home environment variable to point to the root directory of the MySQL installation.
export MYSQL_HOME=/usr/local/mysql-5.7.26
# Add the /bin directory from the MYSQL_HOME location into your $PATH environment variable.
export PATH=$PATH:$MYSQL_HOME/bin

alias mysqlstart='sudo $MYSQL_HOME/support-files/mysql.server start'
alias mysqlstop='sudo $MYSQL_HOME/support-files/mysql.server stop'
alias mysqlstatus="ps aux | grep mysql | grep -v grep"

# export JAVA_HOME="/Library/Java/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function use_graalvm() {
    export PATH="/Users/tylerboyd/.graalvm/Contents/Home/bin:$PATH"
}


source ~/aws_creds.sh

source <(kubectl completion bash)
