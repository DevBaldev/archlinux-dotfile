# Source the profile
bass source /etc/profile

# A.U.R. abbreviations
abbr --add pc "yay -Yc"
abbr --add pu "yay -Rncus"
abbr --add pi "yay -S --needed"

# Lsd aliases
alias ls "lsd"
alias ll "lsd -l"
alias la "lsd -A"
alias lla "lsd -lA"

# Cli alias
alias cd "z"

# Git actions abbreviation
abbr --add gb "git add -A; and git commit -am (date +'%d/%m/%y %H:%M'); and git push"

# Initialize zoxide
zoxide init fish | source

# Initialize starship
starship init fish | source
