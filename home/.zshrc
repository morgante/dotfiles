# Install custom theme
source ~/dotfiles/plugins/p10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Expire duplicate entries first when trimming history:
setopt HIST_EXPIRE_DUPS_FIRST

# Dont record an entry that was just recorded again:
setopt HIST_IGNORE_DUPS

# Delete old recorded entry if new entry is a duplicate:
setopt HIST_IGNORE_ALL_DUPS

# Do not display a line previously found:
setopt HIST_FIND_NO_DUPS

# Dont record an entry starting with a space:
setopt HIST_IGNORE_SPACE

# Dont write duplicate entries in the history file:
setopt HIST_SAVE_NO_DUPS

# Share history between all sessions:
setopt SHARE_HISTORY

# Execute commands using history (e.g.: using !$) immediatel:
unsetopt HIST_VERIFY


# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/home/oh-my-zsh

# Prefer our Brew git
alias git='/opt/homebrew/bin/git'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
SOLARIZED_THEME="light"
# ZSH_THEME="powerlevel10k"
DEFAULT_USER=`whoami`

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git colored-man-pages colorize github jira vagrant virtualenv pip python brew macos history common-aliases fasd)
plugins=()

source $ZSH/oh-my-zsh.sh

# Make iterm work
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Make vscode integration work
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# pnpm
export PNPM_HOME="/Users/morgante/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# BUN
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/morgante/.bun/_bun" ] && source "/Users/morgante/.bun/_bun"


# p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. "$HOME/.cargo/env"

# grit
export GRIT_INSTALL="$HOME/.grit"
export PATH="$GRIT_INSTALL/bin:$PATH"

# ni
alias ni="/Users/morgante/.nvm/versions/node/v18.20.0/bin/ni"
eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by Windsurf
export PATH="/Users/morgante/.codeium/windsurf/bin:$PATH"
