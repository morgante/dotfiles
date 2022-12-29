# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zprofile.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.pre.zsh"
# source /opt/boxen/env.sh
source ~/.private

# Get status of all git repos in current directory
alias git-check="find . -maxdepth 4 -name .git -execdir pwd \; -execdir git status \;"

# Custodian branding
export ROOT_ANALYSIS_DIR=/Users/morgante/code/unhack/rewriter/data/
alias gritdev=/Users/morgante/code/unhack/rewriter/apps/cli/bin/dev

# Docker shortcuts
alias dkr='docker'
alias dkc='docker-compose'

# Doppler
alias dpr='doppler run --'

# GraalVM
export GRAAL_NAME=graalvm-ce-java17-22.2.0
export PATH=/Library/Java/JavaVirtualMachines/$GRAAL_NAME/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/$GRAAL_NAME/Contents/Home

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add home-brew to Path
export PATH=$PATH:/opt/homebrew/bin/

# Add python
export PATH=$PATH:~/Library/Python/3.8/bin/

# Add AWS to path
export PATH=$PATH:/Users/mpell/code/aws/eb/eb/macosx/python2.7/

# Add our custom bin folder to path
export PATH=$PATH:/Users/morgantep/code/bin/
export PATH=$PATH:/Users/morgante/code/bin/

# Add yarn
export PATH=$PATH:/Users/morgante/.yarn/bin/

# Silly command
alias why='yes 2>&1 | while read line ; do echo $line | say ; done'

# Docker Stuff
alias docker-killall='docker kill $(docker ps -q)'

# Lazy git
alias up='git commit -a -m "yo" && git push'
alias yolo='git commit -m "yolo" && git push'
alias folo='git commit --amend --no-edit && git push --force'

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

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zprofile.post.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.post.zsh"
