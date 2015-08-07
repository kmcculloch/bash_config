# vim:filetype=sh

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# treat symbolic link directories as directories (append trailing slash on autocomplete)
bind 'set mark-symlinked-directories on'

# Make most of my work group-writable
umask 002

# Use vim where I can
export VISUAL=vim
export EDITOR="$VISUAL"

# Source colors and aliases
source "$KM_BASH/lib/bash_aliases.sh"

# Source prompt
source "$KM_BASH/lib/bash_prompt.sh"

# Source local git settings
export GIT_AUTHOR_NAME=$KM_NAME
export GIT_AUTHOR_EMAIL=$KM_EMAIL
export GIT_COMMITTER_NAME=$KM_NAME
export GIT_COMMITTER_EMAIL=$KM_EMAIL
export GIT_CONFIG="$KM_BASH/gitconfig"

# Source bashmarks.sh
unalias l 2>/dev/null
export SDIRS="$KM_HOME/.sdirs"
source "$KM_BASH/lib/bashmarks.sh"
