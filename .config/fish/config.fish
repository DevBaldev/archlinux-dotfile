bass source /etc/profile

# A.U.R..
abbr pc "yay -Yc"
abbr pu "yay -Rncus"
abbr pi "yay -S --needed"

# Lsd
alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -A"
alias lla="lsd -lA"

# Cli
alias cd="z"

# Git actions.
abbr gb "git add -A; git commit -am '$(date +%d/%m/%y\ %H:%m)'; git push"

zoxide init fish | source
starship init fish | source
