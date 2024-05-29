# Fzf Fd configuration
# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# Git checkout integration with fzf
#
gch () {
    git checkout "$(git branch | fzf | tr -d '[:space:]')"
}

# Search Dev Projects
repos () {
    # Check if an argument is provided
    if [ -z "$1" ]; then
        echo "Usage: repos <search-term> | repos edit <search-term>"
        return 1
    fi

    # Search for the repo using fzf
    local repo=$(find ~/repos -maxdepth 2 -type d -name "*$1*" | fzf)

    if [ -n "$repo" ]; then
        cd "$repo"
    else
        echo "No repository found for '$1'"
    fi
}


