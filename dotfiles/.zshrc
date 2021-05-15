#!/bin/zsh

# Change this to whatever text editor you use (code, vim, nano, etc.)
EDITOR="code"

# Python
if [[ $ENVIRONMENT_NAME == 'cloud-desktop' ]]
then
  EDITOR="vim"
fi

# Zsh config options
zle_highlight+=(paste:none)

# Zsh history
HISTSIZE=5000           # How many lines of history to keep in memory
HISTFILE=~/.zsh_history # Where to save history to disk
SAVEHIST=5000           # Number of history entries to save to disk
setopt appendhistory    # Append history to the history file (no overwriting)
setopt sharehistory     # Share history across terminals
setopt incappendhistory # Immediately append to the history file, not just when a term is killed

# Make up/down command history work right
autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Load the rest of the files
source ~/.zsh_environment_name
source ~/.zsh_environment
source ~/.zsh_secrets
source ~/.zsh_aliases
source ~/.zsh_functions
source ~/.zsh_prompt

# Set the tab title
DISABLE_AUTO_TITLE="true"