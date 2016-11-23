### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/bash/bin:$PATH"
export SCALA_HOME=/path/to/scala
export PATH=PATH:PATH:SCALA_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias la='ls -la'
alias ll='ls -la'
alias vd='vim ~/dotfiles'
alias vbr='vim ~/dotfiles/.bashrc'
alias vbp='vim ~/dotfiles/.bash_profile'
alias myexapp='cd /Users/moritakenji/Documents/workspace/myexapp/'
alias ct='cd /Users/moritakenji/Applications/apache-tomcat-7.0.67/bin'
alias mongod='/data/db/bin/mongod'
alias cec='cd /Users/moritakenji/eclipse/jee-mars/Eclipse.app/Contents/Eclipse'
alias cwo='cd /Users/moritakenji/Documents/workspace'
### blog
alias cbl="cd /Users/moritakenji/Desktop/Git/kenmori.github.io/myblog"
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
alias cg='cd /Users/moritakenji/Desktop/Git'
alias cm='cd /data/db/bin'
alias cn='cd /Users/moritakenji/Documents/workspace/myexapp'
alias cdt='cd /Users/moritakenji/dotfiles'

echo 'called bashrc!'
