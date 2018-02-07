[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Put the git branch in the prompt
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
export EDITOR=vim

alias resetpacketfilter='sudo pfctl -f /etc/pf.conf; sudo pfctl -e'
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'
alias grep='grep --color=auto'
alias be='bundle exec'
alias rake='be rake'
alias rspec='be rspec'
alias up='cd ..'
alias go=go_to_project
