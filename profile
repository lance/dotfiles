export JPY=~/bin/srcipts/j.py # tells j.sh where the python script is
. ~/bin/scripts/j.sh          # provides the j() function
alias jl='j -l'
alias jt='j -t recent'
alias jr='j -t rank'

export PATH=~/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
export LC_CTYPE=en_US.UTF-8
#export CLICOLOR='true'

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home
export RUBY_HOME=/opt/local/lib/ruby
export GEM_HOME=$RUBY_HOME/lib/ruby/gems/1.8

set -o vi
#eval `ssh-agent`
#ssh-add ~/.ssh/id_dsa

alias print='enscript --color=blackwhite -E -T4 -M Letterdj -C -2 -fCourier@5/5 -r $*'

. ~/.aliases.bash

#PS1='\h:\$ '
__parse_git_dirty () {
   git status 2> /dev/null | tail -n1 | egrep -q '^nothing to commit \(working directory clean\)$' || echo '*'
 }
 __parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(__parse_git_dirty)]/"
}

__git_ps1() {
 __parse_git_branch
}

#PS1='\n\e[1;33m# ==============================================================================\n#\e[0m \e[1;37m\u@\h\e[0m \e[1;30;47m\w\e[0m \e[1;37;44m$(__parse_git_branch)\e[0m\n\e[1;33m#\e[0m '

#PS1='\n\e[1;33m>>\e[0m \e[0;37m\u @ \h\e[0m \e[0;30;47m\w\e[0m \e[0;37;44m$(__parse_git_branch)\e[0m\n\e[0;33m  >>\e[0m '

#PS1='\n\e[1;33m>>\e[0m \e[0;37m\u @ \h\e[0m \e[0;30;47m\w\e[0m \e[0;37;44m$(__parse_git_branch)\e[0m \e[1;33m<< \e[0m\n $ '

if [[ -f "$HOME/.amazon_keys" ]]; then
  source "$HOME/.amazon_keys";
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


GIT_PS1_SHOWDIRTYSTATE=1 #... untagged(*) and staged(+) changes
GIT_PS1_SHOWSTASHSTATE=1 #... if something is stashed($)
GIT_PS1_SHOWUNTRACKEDFILES=1 #... untracked files(%)

function __rvm_prompt {
    ~/.rvm/bin/rvm-prompt i v g
}

function __git_prompt {
    __git_ps1 "[%s]"
}

function bash_prompt {
    local NONE="\e[0m"    # unsets color to term's fg color
    
    #fg colors
    local K="\e[0;30m"    # black
    local R="\e[0;31m"    # red
    local G="\e[0;32m"    # green
    local Y="\e[0;33m"    # yellow
    local B="\e[0;34m"    # blue
    local M="\e[0;35m"    # magenta
    local C="\e[0;36m"    # cyan
    local W="\e[0;37m"    # white

    # emphasized (bolded) colors
    local EMK="\e[1;30m"
    local EMR="\e[1;31m"
    local EMG="\e[1;32m"
    local EMY="\e[1;33m"
    local EMB="\e[1;34m"
    local EMM="\e[1;35m"
    local EMC="\e[1;36m"
    local EMW="\e[1;37m"

    # background colors
    local BGK="\e[40m"
    local BGR="\e[41m"
    local BGG="\e[42m"
    local BGY="\e[43m"
    local BGB="\e[44m"
    local BGM="\e[45m"
    local BGC="\e[46m"
    local BGW="\e[47m"

    # color on color
    local KOW="\e[0;30;47m"
    local WOB="\e[0;37;44m"
    local WOR="\e[0;37;41m"

    local UC=$W                 # user's color
    [ $UID -eq "0" ] && UC=$WOR   # root's color

    PS1="\n$EMY>>$UC \u $W@ \h $Y(\$(__rvm_prompt)) $KOW\w$NONE $WOB\$(__git_prompt)$NONE $Y<< $NONE \n $ "
}

bash_prompt
unset bash_prompt
export JBOSS_HOME=/Users/lanceball/Dev/RHT/torquebox/current/jboss
export JRUBY_HOME=/Users/lanceball/Dev/RHT/torquebox/current/jruby
export PATH=/usr/local/PostgreSQL/9.0/bin:$PATH
