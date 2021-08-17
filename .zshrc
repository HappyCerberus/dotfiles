# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##########################################################
# MAC OS PATHS

# Go binaries path
export PATH=/usr/local/go/bin:$PATH
# Python path
export PATH=$HOME/Library/Python/3.8/bin:$PATH

##########################################################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.dotfiles/ohmyzsh"
export ZSH_CUSTOM="$HOME/.dotfiles/ohmyzsh_custom"
export ZSH_THEME="powerlevel10k/powerlevel10k"

# Alias for managing dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


