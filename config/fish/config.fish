alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

set -x PATH ~/bin ~/apache-maven-3.6.3/bin ~/.krew/bin ~/.gloo/bin /var/lib/snapd/snap/bin $PATH

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk

set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

set -x JAVA_HOME /usr/lib/jvm/java-11
set -x GITHUB_API_KEY 

alias vi vim
alias please sudo
alias ls lsd
alias cat bat
alias rg batgrep
alias man batman
alias diff batdiff
alias pp prettybat

alias grab "set FILENAME (date +%s).jpg ; and gnome-screenshot -a -f $FILENAME ; and rsync -avP $FILENAME thequalitylab.com:/var/www/html/skitch/ ; and open http://thequalitylab.com/skitch/$FILENAME"

starship init fish | source

