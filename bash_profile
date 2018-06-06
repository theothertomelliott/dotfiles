DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'

export GIT_PS1_SHOWUPSTREAM="verbose git"
export GIT_PS1_SHOWDIRTYSTATE=1

# Set the base PS1
export PS1="\t: \W$ "

source $DIR/git-prompt.sh

# Source the git bash completion file
if [ -f $DIR/git-completion.bash ]; then
    source $DIR/git-completion.bash
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM="auto"
    PS1='\t:\[\033[32m\]$(__git_ps1 " (%s)")\[\033[00m\] \W$ '
fi

export PS1

source $DIR/thirdparty/go-pkg-complete/go-pkg-complete.bash.inc
