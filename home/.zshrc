# source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
 source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" &&
 source "${ZDOTDIR:-$HOME}/.zprezto/z.sh" &&
fi

autoload colors && colors

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

# postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin pip install psycopg2

# aliases
alias flushdns='sudo killall -HUP mDNSResponder'
alias myshell='echo $0'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# export variables in current directory .envrc
eval "$(direnv hook zsh)"

# homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

alias laptop='bash <(curl -s https://raw.githubusercontent.com/gwongz/laptop/master/laptop)'

export PATH="$HOME/.bin:$PATH"


export NVM_DIR="/Users/gwong/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

source /usr/local/share/chruby/chruby.sh

source /usr/local/share/chruby/auto.sh

chruby ruby-2.4.0

export PATH="$PATH:/usr/local/opt/go/libexec/bin"

