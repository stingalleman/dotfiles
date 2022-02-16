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

# TC
alias tc-compose='docker-compose --env-file /home/server/projects/tribecamp/tribecamp/.env  -f /home/server/projects/tribecamp/tribecamp/docker/db/docker-compose.yml -f /home/server/projects/tribecamp/tribecamp/docker/development/docker-compose.yml -f /home/server/projects/tribecamp/tribecamp/docker/kong/docker-compose.yml -p tc '

# golang
alias grun='go run .'
alias sgrun='sudo go run .'

# fun
alias jesse='curl -s https://jesse.frij.link/ | bash | cowsay'

# unlock gpg
alias unlock='echo | gpg --sign'
