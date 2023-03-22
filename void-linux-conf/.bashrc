# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias para ler markdow  com pandoc
alias md='pandoc -t plain -s'

# alias para montar e desmontar usb
alias montar='sudo mount /dev/sdc1 /media/usb-drive/'
alias desmontar='sudo umount /dev/sdc1 /media/usb-drive/'

# alias para copiar para a area de transferencia
alias copy='xclip -sel clip'

# alias para mudar listar diretorios de ls para exa
alias ls='exa -1 --icons'

# alias para desligar e reiniciar
alias s='sudo shutdown -h now'
alias r='sudo reboot'

# alias install void linux
alias install='sudo xbps-install -S'
# alias update void linux
alias update='sudo xbps-install -Su'
# alias remove void linux
alias remove='sudo xbps-remove -R'
# alias search void linux
alias search='sudo xbps-query -Rs'
# alias clean void linux
alias clean='sudo xbps-remove -Oo'


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


PS1='\[\033[33m\]\u@\h:\w\$\[\033[0m\] '





# Created by `pipx` on 2023-03-20 09:23:49
export PATH="$PATH:/home/void/.local/bin"
