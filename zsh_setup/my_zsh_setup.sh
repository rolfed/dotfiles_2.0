#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my ZSH configurations
#
#
#  Sections:
#  1.  TODO...
#
#
#  ---------------------------------------------------------------------------

#!/bin/bash


ZSH_CONFIG_FILES_DIR=$HOME/dotfiles/zsh_setup/config

source_files() {
  for FILE in $1/*; do
    source $FILE
  done
  echo "Loaded my zsh config"
}

[ "$(ls -A $ZSH_CONFIG_FILES_DIR)" ] && source_files $ZSH_CONFIG_FILES_DIR || echo "Empty"



# [ "$(ls -A "$FILES)" ] && source_files $FILES || echo "\n-- My ZSH Setup configuration is broken --\n"

