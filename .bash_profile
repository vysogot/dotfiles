# Shell

export EDITOR='vim'
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case'
export FZF_DEFAULT_OPTS='--height=40% --preview="cat {}" --preview-window=right:60%:wrap'

alias bp='vim ~/.bash_profile'
alias vp='vim ~/.vimrc'
alias src='source ~/.bash_profile'
alias c='clear'
alias replace="grep -rl $1 . | xargs sed -i \"\" 's/$1/$2/g'"

# Rails
alias be='bundle exec'
alias rspec='bundle exec rspec'
alias rake='bundle exec rake'
alias trake='RAILS_ENV=test rake'
alias ruby-ctags='ctags -R --languages=ruby --exclude=.git --exclude=log'

# Start a shell session authenticated to AWS
alias aws-shell='aws-vault exec -d 8h -n'

# login to AWS console
alias aws-login='aws-vault login -d 8h'

# Node
alias j='yarn jest'
alias jd='yarn test-debug'
