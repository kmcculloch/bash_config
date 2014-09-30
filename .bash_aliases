# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval         "$(dircolors -b)"                                                               
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -lh'
alias la='ls -A'
alias lla='ls -lhA'

alias llg='ll | grep'
alias lag='ll | grep'
alias llag='lla | grep'

alias c='clear'
alias cdc='cd; clear'
alias total='du -hc | grep total'

alias watch='bundle exec compass watch'

alias chmod755='find . -type d -exec chmod 775 {} +'
alias chmod644='find . -type f -exec chmod 644 {} +'
