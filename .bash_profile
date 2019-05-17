
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
