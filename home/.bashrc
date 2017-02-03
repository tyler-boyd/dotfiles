alias be="bundle exec"
alias bes="bundle exec spring"
alias bi="bundle install"
alias bu="bundle update"
alias gs="git status"
export PRY=1

function fucksecrets(){ 
	$(git update-index --no-assume-unchanged config/secrets.yml && git checkout config/secrets.yml)
}
function fixsecrets() {
	$(git update-index --assume-unchanged config/secrets.yml && cp config/secrets.yml.bak config/secrets.yml)
}

source ~/git-completion.bash

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

alias sshcs="ssh tboyd@linux.student.cs.uwaterloo.ca"
