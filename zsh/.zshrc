export ZSH="$HOME/.config/oh-my-zsh"
ZSH_COMPDUMP="${HOME}/.cache/zsh/zcompdump-${HOST}-${ZSH_VERSION}"
ZSH_THEME="mh"

plugins=(git)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

arm() {
  arch -x86_64 $@
}

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"


export STARSHIP_CONFIG=~/dotfiles/starship/starship.toml
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export ESPANSO_CONFIG_PATH=$HOME/.config/espanso
export NVM_DIR="$HOME/.nvm"
export OBSIDIAN_DIR="/Users/chrs/Library/Mobile Documents/iCloud~md~obsidian/Documents"
export GOPATH=$HOME/.go



[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
[ -f ~/.zsh_aliases_private ] && source ~/.zsh_aliases_private

export PATH=$PATH:/Users/chrs/.spicetify
