# Bash
alias g="grep -i"
alias get="curl -OL"

# Rails
alias migrate="rake db:migrate db:rollback && rake db:migrate db:test:prepare"
alias s="spring rspec"
alias b="bundle exec"
alias rs="rails server"
alias guard="bundle exec guard"
alias r="bundle exec rake"

# Postgres
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgrmpid="rm /usr/local/var/postgres/postmaster.pid"

#Elixir Phoenix
alias mps="mix phx.server"
alias ism="iex -S mix"
alias mt="mix test"
alias mta="mix test"
alias mts="mix test --stale"
alias mec="mix ecto.create"
alias mem="mix ecto.migrate"

#ReactNative
alias r-ios="react-native run-ios"
alias crna="create-react-native-app"
alias yri="yarn run ios"
alias ys="yarn start"
alias yt="yarn test"

#ex338
alias ex338="cd workspace/ex338 && mvim"
alias config="/usr/bin/git --git-dir=/Users/jackclark/.cfg/ --work-tree=/Users/jackclark"
alias reset338="mix ecto.reset && mix run priv/repo/user_seeds.exs && mix run priv/repo/dev_seeds.exs"

#Git
alias gri="git rebase -i origin/master"
alias grif="git commit -am 'f' && git rebase -i origin/master"
alias gpf="git push origin $(git branch) --force-with-lease"
alias gs="git status"

#Vim
alias rmntl="find . -name '*Netrw*' -exec rm -f {} \;"
