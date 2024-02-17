#
# ZSH configuration by @rrednoss
# 

# Add Brew and Brew installed applications to PATH.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Go's installation folder to PATH.
export PATH=$HOME/go/bin:$PATH

# Set minimal PS1 variable.
export PS1='\[\e[1m\]\\$\[\e[0m\] '

# Enable console pinentry for GPG keys.
export GPG_TTY=$(tty)
