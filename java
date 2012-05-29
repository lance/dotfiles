# Put this file in your home directory and these lines to .profile
# if [[ -f "$HOME/.java.env" ]]; then
#   source "$HOME/.java.env";
# fi

VERSION=$1

if [ ! -n "$VERSION" ] 
  then
  VERSION="1.6"
fi

echo "Using Java version $VERSION"

export JAVA_HOME=$(/usr/libexec/java_home -v $VERSION)

alias j7env="source ~/.java.env 1.7"
alias j6env="source ~/.java.env 1.6"
