# terminal color preferences
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# PATH
export PATH=$PATH:/usr/local/bin/plink_mac_20190215/
export PATH=$PATH:/Users/cody/samtools-1.9/bin/

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

###

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/cody/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

### PURE prompt ###
autoload -U promptinit; promptinit
# change the path color
zstyle :prompt:pure:path color cyan
# turn on git stash status
zstyle :prompt:pure:git:stash show yes
prompt pure

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenvwrapper direnv history osx z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
alias config='/usr/bin/git --git-dir=/Users/cody/.cfg/ --work-tree=/Users/cody'
