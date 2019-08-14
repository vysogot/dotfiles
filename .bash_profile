# Shell
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR='vim'

alias ls='ls -GFh'
alias bp='vim ~/.bash_profile'
alias src='source ~/.bash_profile'
alias c='clear'
alias play='cd ~/Development/_playground'
alias dock='cd ~/Development/docker'
alias replace="grep -rl $1 . | xargs sed -i \"\" 's/$1/$2/g'"

# Ruby
eval "$(rbenv init -)"
eval "$(direnv hook bash)"
ruby -v

# Rails
alias be='bundle exec'
alias rspec='bundle exec rspec'
alias rake='bundle exec rake'
alias trake='RAILS_ENV=test rake'

alias ruby-ctags='ctags -R --languages=ruby --exclude=.git --exclude=log'

# Node
alias j='yarn jest'
alias jd='yarn test-debug'

export PATH="$HOME/.cargo/bin:$PATH"
