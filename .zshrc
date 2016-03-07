# Path to your oh-my-zsh installation.
export ZSH=/Users/No51/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export NVM_DIR="$HONE/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This load nvm


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh


alias a='atom ./'
alias -g G='| grep'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g W='| wc'
alias -g X='| xargs'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'


alias la='ls -la'
alias ll='ls -la'
alias vd='vim ~/dotfiles'
alias vbr='vim ~/dotfiles/.bashrc'
alias vbp='vim ~/dotfiles/.bash_profile'
alias myexapp='cd /Users/No51/Documents/workspace/myexapp/'
alias re='cd /Users/No51/Desktop/Git/react/react_es6/react_es6_2'
alias ct='cd /Users/No51/Applications/apache-tomcat-7.0.67/bin'
alias mongod='/data/db/bin/mongod'
alias cec='cd /Users/No51/eclipse/jee-mars/Eclipse.app/Contents/Eclipse'
alias cwo='cd /Users/No51/Documents/workspace'
## blog
alias cbl="cd /Users/No51/Desktop/Git/kenmori.github.io/myblog"
alias hs="hexo server"

#hub
eval "$(hub alias -s)"
alias hup='hub pull-request'
alias hus='hub see'


#tmux
alias ts='tmux list-sessions'
alias t='tmux'
alias tc='tmux list-client'

#git
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias ga='git add .'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'
alias cg='cd /Users/No51/Desktop/Git'
alias cm='cd /data/db/bin'
alias cn='cd /Users/No51/Documents/workspace/myexapp'
alias cdt='cd /Users/No51/dotfiles'



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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
