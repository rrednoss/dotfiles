#
# ZSH configuration by @rrednoss
# 

# Add Brew and Brew installed applications to PATH.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set minimal PS1 variable.
export PS1='$ '

# Add Go's installation folder to PATH.
export PATH=$HOME/go/bin:$PATH

# Enable console pinentry for GPG keys.
export GPG_TTY=$(tty)

