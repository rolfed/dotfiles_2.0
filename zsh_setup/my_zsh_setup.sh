#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my ZSH configurations
#
#
#  Sections:
#  1. Terminal - make terminal better (remapping defaults and adding fucntionality)
#     config/1_terminal.sh/
#
#  2. Environment Configuration
#     config/2_env.sh
#
#  3. Network Configuration
#     config/3_network.sh
#  ---------------------------------------------------------------------------

#!/bin/bash


ZSH_CONFIG_FILES_DIR=$HOME/dotfiles/zsh_setup/config

source_files() {
  for FILE in $1/*; do
    source $FILE
  done
  echo "Loaded my zsh config"
}

# If config files dir is not empty run source files
[ "$(ls -A $ZSH_CONFIG_FILES_DIR)" ] && source_files $ZSH_CONFIG_FILES_DIR || echo "Empty"
