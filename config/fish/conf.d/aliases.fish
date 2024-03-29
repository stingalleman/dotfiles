# SSH servers
alias serv='ssh vps.alleman.tech'
alias dev='ssh dev-arch-vm'

# Curl
alias curltime="curl -w \"@$HOME/.dotfiles/misc/curltime.txt\" -o /dev/null -s "

# Github
alias gd='git diff | bat'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log --date=short --color --graph --pretty=format:\'''%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)%Creset\''' --abbrev-commit'

# iTerm2
alias download='it2dl'
alias upload='it2ul'
alias clipb='it2copy'

# LS
alias ls='lsd'
alias lss='ls'
alias la='lsd -A'
alias l='lsd -la'

# tar
alias untar='tar -xvf'
alias ungtar='tar -xzvf'

# Verbose copyin1g
alias cp='cp -iv'

# node
alias pscripts='jq .scripts package.json | bat -l json'

# golang
alias grun='go run .'
alias sgrun='sudo go run .'

# fun
alias jesse='curl -s https://jesse.frij.link/ | bash | cowsay'

# unlock gpg
alias unlock='echo | gpg --sign'

# DNS
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# Vim
alias vim='nvim'

# Kubernetes 
alias k=kubectl
alias kusgen='rm kustomization.yaml | kustomize create --autodetect --recursive'
alias kum='kusgen'
alias encrypt='sops --encrypt --in-place '
alias decrypt='sops --decrypt --in-place '

# esp-idf
alias get-idf='source /Users/stingalleman/.esp/esp-idf/export.fish'

alias irc='ssh server@gemairo.local.boem -t screen -dr 681483.pts-0.gemairo'
