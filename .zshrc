export PATH=/opt/homebrew/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
