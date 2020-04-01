#!/bin/bash

# PATH
export PATH=$PATH:/usr/local/bin/plink_mac_20190215/
export PATH=$PATH:/Users/cody/samtools-1.9/bin/

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

# SSH
alias stat2='ssh STAT2@10.103.27.189'
alias venters-server='ssh bryan@10.103.27.249'
alias chuck-server='ssh cody@10.141.25.150'
alias lab-tunnel-chuck='ssh -N -L 8080:localhost:8080 cody@10.141.25.150'
alias lab-tunnel-cody='ssh -N -L 8080:localhost:8080 cody@10.141.26.41'
alias lab-tunnel-threadripper='ssh -N -L 8080:localhost:8080 cody@10.141.26.164'
alias cody-mini='ssh cody@10.141.26.41'
alias threadripper='ssh cody@10.141.26.164'

