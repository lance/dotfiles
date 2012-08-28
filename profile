export MAVEN_OPTS="-Xmx512m"
export EDITOR=vi  
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1

set -o vi


if [[ -f "$HOME/.java.env" ]]; then
  source "$HOME/.java.env";
fi

if [[ -f "$HOME/.aliases" ]]; then
  source "$HOME/.aliases";
fi

if [[ -f "$HOME/.bash_prompt" ]]; then
  source "$HOME/.bash_prompt";
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export MAGICK_HOME=/opt/local/ImageMagick-6.6.9
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

export PATH="$MAGICK_HOME/bin:$PATH"
export PATH=/usr/local/PostgreSQL/9.0/bin:$PATH
export PATH=~/bin:/Developer/usr/bin:~/local/node/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$PATH

#export TORQUEBOX_HOME=/Users/lanceball/torquebox/current
#export JBOSS_HOME=$TORQUEBOX_HOME/jboss
#export JRUBY_HOME=$TORQUEBOX_HOME/jruby
#export PATH=$JRUBY_HOME/bin:$JRUBY_HOME/lib/ruby/gems/1.8/bin:/usr/local/PostgreSQL/9.0/bin:$PATH
