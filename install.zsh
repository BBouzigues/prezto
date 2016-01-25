#!/bin/zsh

PREZTO_DIR="${HOME}/.zprezto"
INSTALL_DATE=$(date +"%Y-%m-%d-%H-%M-%S")


# Backup old config files
setopt EXTENDED_GLOB
for RC_FILE in "${PREZTO_DIR}"/runcoms/z^shrc; do
  mv "${ZDOTDIR:-$HOME}/.${RC_FILE:t}" "${ZDOTDIR:-$HOME}/.${RC_FILE:t}-${INSTALL_DATE}-bak" > /dev/null 2>&1
  ln -s "$RC_FILE" "${ZDOTDIR:-$HOME}/.${RC_FILE:t}"
done
mv "${ZDOTDIR:-$HOME}/.zshrc" "${ZDOTDIR:-$HOME}/.zshrc-${INSTALL_DATE}-bak" > /dev/null 2>&1

COLORS=(red green yellow blue magenta cyan)
echo "HOST_COLOR=${COLORS[$(($RANDOM%${#COLORS[@]}+1 ))]}" > "${ZDOTDIR:-$HOME}/.zshrc"
echo "PATH_COLOR=white" >> "${ZDOTDIR:-$HOME}/.zshrc"
echo "USER_COLOR=${COLORS[$(($RANDOM%${#COLORS[@]}+1 ))]}" >> "${ZDOTDIR:-$HOME}/.zshrc"
echo "source '${PREZTO_DIR}/runcoms/zshrc'" >> "${ZDOTDIR:-$HOME}/.zshrc"
