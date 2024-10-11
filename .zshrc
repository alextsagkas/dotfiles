if [[ "$TERM_PROGRAM" != "Apple_Terminal" ]]; then

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fi

# Homebrew
if [[ -z "${BREW_SHELLENV_RUN}" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
  export PATH="/opt/homebrew/opt/curl/bin:$PATH"
  export PATH="/opt/homebrew/opt/binutils/bin:$PATH"

  # Set the guard variable
  export BREW_SHELLENV_RUN=1
fi

# Aliases
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"
alias cat="bat"
alias cd="z"
alias open_ports="sudo lsof -i -P -n | grep LISTEN"
eval "$(gh copilot alias -- zsh)"
eval "$(fzf --zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Vim
set -o vi
