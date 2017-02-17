# source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
 source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" &&
 source "${ZDOTDIR:-$HOME}/.zprezto/z.sh" &&
fi

autoload colors && colors

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"

# load nvm https://github.com/creationix/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin pip install psycopg2

# aliases
alias flushdns='sudo killall -HUP mDNSResponder'

# virtualenvwrapper configuration
source /usr/local/bin/virtualenvwrapper.sh

# convox autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

__convox_switch() { [ -e ~/.convox/rack ] && convox switch || echo unknown; }

export PS1="${fg[yellow]%}(\$(__convox_switch))"$PS1

# export variables in current directory .envrc
eval "$(direnv hook zsh)"

# homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
