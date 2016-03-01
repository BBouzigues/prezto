#
# Integrates zsh-autosuggestions into Prezto.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Load dependencies.
pmodload 'editor'

# Source module files.
source "${0:h}/external/zsh-autosuggestions.zsh" || return 1

#
# Highlighting
#

# Set highlight color, default is 'fg=8'.
zstyle -s ':prezto:module:autosuggestions:color' found \
  'ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE' || ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

if ! zstyle -t ':prezto:module:autosuggestions' color; then
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=''
fi

#eval "function zle-line-init { zle autosuggest-start; $functions[zle-line-init] }"

#
# Key Bindings
#

if [[ -n "$key_info" ]]; then

  # Vi

  # Accept suggestions without leaving insert mode
  # bindkey -M viins '^f' vi-forward-word
  # or
  # bindkey -M viins '^f' vi-forward-blank-word

  # Emacs and Vi
  for keymap in 'emacs' 'viins'; do
    bindkey -M "$keymap" "$key_info[Control]T" autosuggest-toggle
  done
fi
