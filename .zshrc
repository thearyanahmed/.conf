plugins=(
  git
  autojump
  urltools
  bgnotify
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-enquirer
  jovial
)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

ZSH_THEMES="/Users/thearyanahmed/.zsh-themes"
export ZSH="/Users/thearyanahmed/.oh-my-zsh"

# ZSH_THEME="jovial"
ZpSH_THEME="spaceship"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# POWERLEVEL9K_INSTANT_PROMPT=off

export PATH="$PATH:$HOME/.composer/vendor/bin"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# Laravel
alias art="php artisan"
alias migrate="php artisan migrate"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# Git related stuff
alias gs="git status"
alias gp="git push"
alias ::="git add .; git commit -m"
alias gif='git diff'
alias btree="git log --graph --oneline --all"


add() {
  git add "$@"
}


amend() {
  git commit --amend -m "$*"
}

chr() {
  git commit -m "Chore: $*"
}

fix() {
  git commit -m "Fix: $*"
}

feat() {
  git commit -m "Feat: $*"
}

empty() {
  git commit --allow-empty -m "$*"
}

commit() {
  git commit -m "$*"
}

# MySQL (homebrew)
alias smysql="brew services start mysql"
alias stmysql="brew services stop mysql"

# Kafka 
alias zk:s="bin/zookeeper-server-start.sh config/zookeeper.properties"
alias kafka:s="bin/kafka-server-start.sh config/server.properties"

alias p3="python3"

alias systemshutdown="valet stop; stmysql;"


alias shr="source ~/.zshrc"

alias vi="nvim"

# Utils 

alias :o="vi ."

export GOPATH=$HOME/awesomego

# sourcing
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export GOPATH=$HOME/awesomego

export HOMEBREW_NO_AUTO_UPDATE=true

export DENO_INSTALL="/Users/thearyanahmed/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Include private values
source ~/.private.rc

