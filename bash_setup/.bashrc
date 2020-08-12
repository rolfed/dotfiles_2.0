#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations
#  
#
#  Sections:
#  1.  TODO... 
#       



FILES=$HOME/dotfiles/bash_profile_scripts/*
for file in $FILES
do
  source $file
done
echo 'Bash profile updated!'
