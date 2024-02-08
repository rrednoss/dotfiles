#
# ZSH configuration by @rrednoss
# 

#######################################
# powerlevel10k 
#######################################

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Evaluate the powerlevel10k general theme.
export p10k_theme=/opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
if [[ -f $p10k_theme ]]; then
  # uses Homebrew installation
  source $p10k_theme
else
  # uses manual installation by cloning the repository
  ZSH_THEME="powerlevel10k/powerlevel10k"
fi


# Evaluate the powerlevel10k configuration.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#######################################
# oh-my-zsh 
#######################################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Disable all plugins.
plugins=()

# Evaluate oh-my-zsh configuration.
source $ZSH/oh-my-zsh.sh

#######################################
# user configuration
#######################################

alias commit="$HOME/scripts/git_commit.sh"

# Disable time elapsed for executed commands.
unset REPORTTIME

# Add Brew and Brew installed applications to PATH.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Go's installation folder to PATH.
export PATH=$HOME/go/bin:$PATH

# Enable console pinentry for GPG keys.
export GPG_TTY=$(tty)

# Evaluate custom configuration on seperate workstations.
[[ ! -f ~/.zshrc_custom ]] || source ~/.zshrc_custom

