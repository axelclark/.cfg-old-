# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jackclark/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# display current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Customize prompt to show only working directory and git branch.
setopt PROMPT_SUBST
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %2c%{%F{blue}%}$(parse_git_branch)%{%F{none}%} %# '

export PATH="$PATH:$HOME/.mix/escripts:~jackclark/bin"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export CDPATH=".:~/workspace"

export PATH="$HOME/.bin:$PATH"

# Add node modules to $PATH
export PATH="$PATH:$HOME/.asdf/installs/nodejs/11.6.0/.npm/bin"

# recommended by brew doctor
export PATH="$HOME/usr/local/bin:$PATH"

# Enable history in IEX
export ERL_AFLAGS="-kernel shell_history enabled"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

export PATH="$HOME/.cargo/bin:$PATH"


## aliases ##

# Bash
alias g='grep -i'
alias get='curl -OL'

# Rails
alias migrate='rake db:migrate db:rollback && rake db:migrate db:test:prepare'
alias s='spring rspec'
alias b='bundle exec'
alias rs='rails server'
alias guard='bundle exec guard'
alias r='bundle exec rake'

# Postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgrmpid='rm /usr/local/var/postgres/postmaster.pid'

#Elixir Phoenix
alias mps='mix phx.server'
alias ism='iex -S mix'
alias mt='mix test'
alias mts='mix test --stale'
alias mec='mix ecto.create'
alias mem='mix ecto.migrate'
alias mt0='export MIX_TARGET=rpi0'
alias mt3='export MIX_TARGET=rpi3'

#ReactNative
alias r-ios='react-native run-ios'
alias crna='create-react-native-app'
alias yri='yarn run ios'
alias ys='yarn start'
alias yt='yarn test'

#ex338
alias ex338='cd workspace/ex338 && mvim'
alias config='/usr/bin/git --git-dir=/Users/jackclark/.cfg/ --work-tree=/Users/jackclark'
alias reset338='mix ecto.reset && mix run priv/repo/user_seeds.exs && mix run priv/repo/dev_seeds.exs'

#Git
alias gri='git rebase -i origin/master'
alias grif='git commit -am "f" && git rebase -i origin/master'
alias gs='git status'

#Vim
alias rmntl='find . -name "*Netrw*" -exec rm -f {} \;'

#Jekyll
alias bjs='bundle exec jekyll server'

#Gatsby
alias gd='gatsby develop'
