# .bash_aliases-generic - Account-independent aliases

alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -I"

alias more=less

alias h="history 0"
alias lo="exit"

alias ls="ls -F --color"
alias dir="ls -lashF --color"
alias dirt="ls -lashFrt --color"

alias du="du -hc"
alias df="df -hT -x tmpfs"
alias dus="du -hcs * | sort -h"

alias cls="clear"
alias ff="find . -name $*"
alias ff0="find . -name $* -print0"
alias x="chmod +x"

alias su="su -"

alias grep='grep -s --color=auto'

function pid { ps auxww | fgrep --color=always -i $1 | sed "/fgrep .* -i $1/d"; }
alias pod="printenv | fgrep --color=auto -i"

alias ts="tail -n100 -f /var/log/syslog"

alias screen="screen -UO"

alias svnc='svn commit -m ""'

alias top="htop"

alias di="docker images"
alias dps="docker ps"
alias dc="docker-compose"

alias deactivate="pyenv deactivate"
alias workon="pyenv activate"

alias gspp="git stash && git pull && git stash pop"
