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
alias mps="mix phoenix.server"
alias ism="iex -S mix"
alias mt="mix test --exclude integration"
alias mta="mix test"
alias mec="mix ecto.create"
alias mem="mix ecto.migrate"

#ex338
alias ex338="cd workspace/ex338 && mvim"
