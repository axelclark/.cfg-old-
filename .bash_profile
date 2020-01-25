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

# https://support.apple.com/kb/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/jackclark/.asdf/installs/nodejs/11.6.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

export PATH="$HOME/.cargo/bin:$PATH"
