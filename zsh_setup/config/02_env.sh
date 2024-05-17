#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

# bit && tmux-sessionizer
export PATH="$HOME/bin:$PATH"
# bit endexport PATH=$HOME/bin:$PATH


# Add emacs to the existing path
export PATH="$HOME/.config/emacs/bin:$PATH"

export NODE_PATH=$(which node)

# Clang for c++ compiler 
# This is used in neovim neorg
export CC="/opt/homebrew/Cellar/llvm@15/15.0.7/bin/clang"

# JEnv setup 
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
jenv enable-plugin export
