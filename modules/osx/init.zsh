#
# Defines Mac OS X aliases and functions.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != darwin* ]]; then
  return 1
fi

#
# Aliases
#

# Pushes directory to the current Finder directory.
alias pushdf='pushd "$(pfd)"'

if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
  alias ssh='tab-color-ssh'
fi
