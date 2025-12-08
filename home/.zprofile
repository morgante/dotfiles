# source /opt/boxen/env.sh
source ~/.private


# Get status of all git repos in current directory
alias git-check="find . -maxdepth 4 -name .git -execdir pwd \; -execdir git status \;"

# Custodian branding
export ROOT_ANALYSIS_DIR=/Users/morgante/code/grit/data/
export GRIT_MARZANO_PATH=/Users/morgante/code/grit/rewriter/target/release/grit
export GRIT_GOUDA_PATH=/Users/morgante/code/grit/rewriter/target/debug/gouda
export GRIT_WORKFLOW_RUNNER=/Users/morgante/code/grit/rewriter/apps/minas/run.js
export GRIT_USER_CONFIG=/Users/morgante/code/grit/rewriter/.grit/
alias gritdev=$GRIT_MARZANO_PATH
alias gouda=$GRIT_GOUDA_PATH

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
export PATH=/opt/homebrew/bin/:$PATH

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
alias yolo='git commit -m "[skip ci] yolo" && git push'
alias solo='git commit --allow-empty -m "run the tests" && git push'
alias molo='git commit --amend --no-edit && git push --force'
alias gca='git commit --amend --no-edit'

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

# Terraform
# alias terraform='terraform12'
alias tf='terraform'
alias tf12='terraform12'

# Set primary editor
alias c='cursor'
alias w='surf'
export EDITOR="windsurf-insiders --wait"
export GIT_EDITOR="windsurf-insiders --wait"

# Git Stuff
export PATH=$PATH:~/dotfiles/home/git/

# Go stuff
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:~/go/bin

# Rust stuff
export PATH=$PATH:/Users/morgante/.cargo/bin

# Namespace
export NS_ROOT="/Users/morgante/Library/Application Support/ns"
export PATH="$NS_ROOT/bin:$PATH"

# Poetry
export PATH="/Users/morgante/.local/bin:$PATH"

# Biome development
export PATH="$PATH:/Users/morgante/code/biome/target/release/"

# AWS
alias awslogin="aws sso login --sso-session sso-default"

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)