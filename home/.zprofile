# source /opt/boxen/env.sh
source ~/.private

# Get status of all git repos in current directory
alias git-check="find . -maxdepth 4 -name .git -execdir pwd \; -execdir git status \;"

# Add AWS to path
export PATH=$PATH:/Users/mpell/code/aws/eb/eb/macosx/python2.7/

# Add our custom bin folder to path
export PATH=$PATH:/Users/morgantep/code/bin/

# Silly command
alias why='yes 2>&1 | while read line ; do echo $line | say ; done'

# Docker Stuff
alias docker-killall='docker kill $(docker ps -q)'

# Lazy git
alias up='git commit -a -m "yo" && git push'

# GPG
# export PATH="/usr/local/opt/gpg-agent/bin:$PATH"

# [ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
# if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
#   export GPG_AGENT_INFO
# else
#   eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
# fi

# Anaconda
# export PATH="/Users/morgante/anaconda/bin:$PATH"

# Docker Machine
# source ~/src/dotfiles/home/docker.sh

# Python version
alias python='python3'

# Terraform
# alias terraform='terraform12'
alias tf='terraform'
alias tf12='terraform12'

# Use VS code as editor
export EDITOR="code"
export GIT_EDITOR="code -w"

# Git Stuff
export PATH=$PATH:~/dotfiles/home/git/

# Go stuff
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:~/go/bin
