eval "$(starship init zsh)"

export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "MichaelAquilina/zsh-auto-notify"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "Tarrasch/zsh-bd"
#zplug "plugins/colored-man-pages", from:oh-my-zsh
#zplug "djui/alias-tips"
zplug "zsh-users/zsh-completions", defer:2

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
