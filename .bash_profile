# Shell
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad
# export TERM=xterm-256color

export EDITOR='vim'
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case'
export ASDF_DIR=$(brew --prefix asdf)
export FZF_DEFAULT_OPTS='--height=40% --preview="cat {}" --preview-window=right:60%:wrap'

# alias ls='ls -GFh'
alias bp='vim ~/.bash_profile'
alias vp='vim ~/.vimrc'
alias src='source ~/.bash_profile'
alias c='clear'
alias dev='cd ~/Development/'
alias mf='cd ~/Development/mfind'
alias play='cd ~/Development/playground'
alias replace="grep -rl $1 . | xargs sed -i \"\" 's/$1/$2/g'"
alias start="brew services start"
alias stop="brew services stop"
alias restart="brew services restart"
alias vimpluginupdate="for i in ~/.vim/bundle/*; do git -C $i pull; done"
alias dicstat="du -sh * | sort -rh"
alias nowarnings="RUBYOPT='-W0'"

# Network
alias apport='lsof -i -P -n | grep LISTEN | awk "{print \$2}" | xargs ps -p'
alias lis="lsof -i -P -n | grep LISTEN"

# Rails
alias be='bundle exec'
alias rspec='bundle exec rspec'
alias rake='bundle exec rake'
alias trake='RAILS_ENV=test rake'
alias abun='asdf exec bundle'
alias abe='asdf exec bundle exec'

alias ctags="`brew --prefix`/bin/ctags"
alias ruby-ctags='ctags -R --languages=ruby --exclude=.git --exclude=log'
alias elixir-ctags='ctags -R --languages=Elixir --exclude=.git --exclude=log'
alias console='./bin/console.rb'

# Docker
alias dkc='docker-compose'
alias dkcr='dkc run --rm'
alias dkcu='dkc up -d'
alias dkcs='dkc stop'
alias dkcp='dkc ps -a'
alias dkcb='dkc build'
alias dkcl='dkc logs -f --tail 200'
alias dkip="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1"

# AWS - Virtual MFA users

# start a shell session authenticated to AWS
alias aws-shell='aws-vault exec -d 8h -n'

# login to AWS console
alias aws-login='aws-vault login -d 8h'

# Node
alias j='yarn jest'
alias jd='yarn test-debug'

export PATH="$HOME/.cargo/bin:$PATH"

# Elixir
alias credo="mix credo"
alias te="RAILS_ENV=test MIX_ENV=test"
alias gitfm="git diff --name-only | xargs | mix format"
alias mt="mix test"
