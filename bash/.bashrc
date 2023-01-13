# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# alias install void linux
alias install='sudo xbps-install -S'
# alias update void linux
alias update='sudo xbps-install -Su'
# alias remove void linux
alias remove='sudo xbps-remove -R'
# alias search void linux
alias search='sudo xbps-query -Rs'
# alias clean void linux
alias clean='sudo xbps-remove -O'
# alias clean cache void linux
alias clean-cache='sudo xbps-remove -o'


PS1='[\u@\h \W]\$ '

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


