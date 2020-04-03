#!/bin/bash

# terminal color preferences
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# git preferences
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# prompt
export PS1='\n\e[1;36m\u\e[m: \e[1;35m\w\e[m $(parse_git_branch)\n$ '

# activate virtual env wrapper
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=/Users/cody/.virtualenvs/
source /usr/local/bin/virtualenvwrapper.sh

# pip should only run if a virtual env is currently activated
export PIP_REQUIRE_VIRTUALENV=true

# create command to override pip restriction:
# use 'gpip3' to force installation of package in global python env
gpip3(){
	PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# hook direnv into shell
eval "$(direnv hook bash)"

# show virtual environment sourced by direnv
show_virtual_env() {
	if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
		echo "($(basename $VIRTUAL_ENV))"
	fi
}
export -f show_virtual_env
PS1='$(show_virtual_env)'$PS1

# common navigation aliases

# TMUX
alias tmxs='tmux switch -t $l'
alias tmxa='tmux attach -t $l'
alias tmxd='tmux detach'
alias tmxl='tmux ls'
alias tmxk='tmux kill-window -t $l'
alias tmxn='tmux new -s $l'

# EMACS
alias emacs='emacs -nw'

# navigation
alias b='cd ..'
alias ..='cd ..'
alias cd..='cd ..'

# ls options
alias ls='ls -F'
alias la='ls -a'
alias lal='ls -al'

# grep options
alias grep='grep --color'
alias grepl='grep -lr'

# source host-specific aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

alias config='/usr/bin/git --git-dir=/Users/cody/.cfg/ --work-tree=/Users/cody'

