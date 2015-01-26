# vim:filetype=sh

# Color support for Mac
#export CLICOLOR=1

# Set local prompt name/color
export KM_PROMPT="mccullok@mac"
export KM_PROMPT_COLOR="Green"

# Set path to local install of bash config and vim files
export KM_BASH="/Users/mccullok/km_bash"
export KM_VIM="/Users/mccullok/km_vim"
source "$KM_BASH/bashrc"

alias vi="vim -u $KM_VIM/vimrc --cmd 'let &rtp = substitute(&rtp, \"/home/wsbadmin/\.vim\", \"/home/wsbadmin/mccullok/km_vim/vim\", \"g\")'"

