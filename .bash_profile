# Chef assumes that it owns this file.
# Additions to bash should be placed into $HOME/.bash_profile_includes/ with a .sh extension

for file in $(\ls -1 ${HOME}/.bash_profile_includes/*.sh); do
  source $file;
done

PATH=/usr/local/bin:/usr/local/sbin:/usr:/opt/local/sbin:/opt/local/lib/postgresql84/bin:/usr/local/mysql/bin:$PATH
source ~/.bash_aliases

[[ -s "/Users/yrabinov/.rvm/scripts/rvm" ]] && source "/Users/yrabinov/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export PATH=$HOME/local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
