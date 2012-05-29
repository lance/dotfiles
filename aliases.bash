# Java 
alias j7env="source ~/.java.env 1.7"
alias j6env="source ~/.java.env 1.6"

# Git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | vi - -R'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'

# Other
alias mate='open -a /Applications/TextMate.app'
alias print='enscript --color=blackwhite -E -T4 -M Letterdj -C -2 -fCourier@5/5 -r $*'
alias wfk-install='mvn -Dwfk -s support/wfk-settings.xml install'
