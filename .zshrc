# global variables
export EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/id_rsa"
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="g"

# local variables
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# scripts & helpers
source ~/.zplug/init.zsh
source ~/.dotfiles/scripts/aliases.sh

# plugins
#zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "Tarrasch/zsh-bd"
#zplug "desyncr/auto-ls"
#zplug "djui/alias-tips"

if ! zplug check --verbose; then
    zplug install
fi

zplug load

# keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# zstyle configs
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add default node to path
#export PATH=~/.nvm/versions/node/v12.16.1/bin:$PATH

# Load NVM
#export NVM_DIR=~/.nvm
#[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use

eval "$(starship init zsh)"