# --------------------
# LANG CONFIG
# --------------------

# Python3
export PYENV_ROOT="$HOME/.pyenv"
export N_PREFIX="$HOME/n"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"
    
# GoLang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
