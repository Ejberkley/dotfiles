#!/bin/zsh

# Zsh comnfig options
zle_highlight+=(paste:none)
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Load the rest of the files
source ~/.zsh_prompt
source ~/.zsh_environment
source ~/.zsh_secrets
source ~/.zsh_aliases
source ~/.zsh_functions
