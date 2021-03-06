# SSH servers
alias serv='ssh vps.alleman.tech'
alias dev='ssh dev-arch-vm'

# Curl
alias curltime="curl -w \"@$HOME/.dotfiles/misc/curltime.txt\" -o /dev/null -s "

# Github
alias gc='git commit'
alias gcc='git stage . ; git commit'
alias gcm='git commit -m'
alias gl='git log --date=short --color --graph --pretty=format:\'''%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)%Creset\''' --abbrev-commit'

# LS
alias ls='lsd'
alias lss='ls'
alias la='lsd -A'
alias l='lsd -la'

# Verbose copyin1g
alias cp='cp -iv'

# Vim
alias vi='vim'
alias vim='echo tis micro ouwe'

# node
alias pscripts='jq .scripts package.json'
