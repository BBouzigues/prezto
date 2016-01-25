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

# Opens file using application
alias safari='open -a Safari'
alias chrome='open -a Chrome'
alias tm='open -a TextMate'
alias atom='open -a Atom'

# Preview file
alias ql='qlmanage -p' > /dev/null 2>&1

