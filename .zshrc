# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jackclark/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git mix)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## my aliases ##

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
alias gcpr 'hub pull-request | open'
eval "$(hub alias -s)"

#Vim
alias rmntl='find . -name "*Netrw*" -exec rm -f {} \;'

#Jekyll
alias bjs='bundle exec jekyll server'

#Gatsby
alias gd='gatsby develop'

## transfer PATH exports from .bash_profile
export PATH="$PATH:$HOME/.mix/escripts:~jackclark/bin"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

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
export PATH="$HOME/.elixir-ls:$PATH"
