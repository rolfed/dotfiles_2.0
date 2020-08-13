#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations
#  
#
#  Sections:
#  1.  TODO... 
#       
#
#  ---------------------------------------------------------------------------

#!/bin/bash


FILES=$HOME/dotfiles/bash_setup/bash_scripts/*

source_files() {
 for file in $1;
 do
   source $file 
 done
}

source_files $FILES

echo 'Bash profile updated!'
