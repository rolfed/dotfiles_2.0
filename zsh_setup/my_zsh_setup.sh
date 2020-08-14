#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my ZSH configurations
#
#
#  Sections:
#  1. Terminal - make terminal better (remapping defaults and adding fucntionality)
#
#  2. Environment Configuration
#
#  3. Network Configuration
#
#  4. Process Mgmt
#
#  5. Search
#
#  6. File and Folder
#
#  7. Systems Operation & Information
#
#  8. Tools
#
#  9. Web Development
#
#  10. Notes & Reminder
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

# If config files dir is not empty run source files
[ "$(ls -A $ZSH_CONFIG_FILES_DIR)" ] && source_files $ZSH_CONFIG_FILES_DIR || echo "Empty"
