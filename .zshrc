#!/bin/zsh

# Zsh config options
zle_highlight+=(paste:none)

# Make up/down command history work right
autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Load the rest of the files
source ~/.zsh_prompt
source ~/.zsh_environment
source ~/.zsh_secrets
source ~/.zsh_aliases
source ~/.zsh_functions
