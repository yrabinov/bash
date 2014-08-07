# Additions to bash should be placed into $HOME/.bash_profile_includes/ with a .sh extension

for file in $(\ls -1 ${HOME}/.bash_profile_includes/*); do
  source $file;
done

source ~/.bash_aliases

export PATH='/Applications/Postgres.app/Contents/Versions/9.3/bin:/Users/yrabinov/local/bin:/usr/local/bin:/usr/local/sbin:/usr:/opt/local/sbin:/opt/local/lib/postgresql84/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export SALT_API_PASS=aQxp47ChvsErTWKqFo

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#for rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

