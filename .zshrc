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

# Set minimal PS1 variable.
export PS1="$ "

# Set default editor to be vi.
export EDITOR="vi"

# Add Go's installation folder to PATH.
export PATH=$HOME/go/bin:$PATH

# Enable console pinentry for GPG keys.
export GPG_TTY=$(tty)

# Add custom zshrc modifications.
[ -f ~/.zshrc_custom ] && source ~/.zshrc_custom
