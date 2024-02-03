#
# ZSH configuration by @rrednoss
# 

# Add Brew and Brew installed applications to PATH.
case "$(uname -s)" in
  Darwin)
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ;;
  Linux)
    export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
    export PATH=/home/linuxbrew/.linuxbrew/sbin:$PATH
    ;;
  *)
    echo "unsupported OS"
    ;;
esac

# Add Go's installation folder to PATH.
export PATH=$HOME/go/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

# Set minimal PS1 variable.
export PS1='\[\e[1m\]\\$\[\e[0m\] '

# Enable console pinentry for GPG keys.
export GPG_TTY=$(tty)
