
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# source aliases file
if [ -f ~/.bash_aliases ]; then 
    . ~/.bash_aliases
fi

# display current git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Customize prompt to show only working directory and git branch.
export PS1="[\W]\[\033[34m\]\$(parse_git_branch)\[\033[00m\] $ "

export MIX_TARGET=rpi3

export PATH="$PATH:~/.mix/escripts:~axelclark/bin"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export CDPATH=".:~/workspace"

export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
source /Users/jackclark/.asdf/asdf.sh
