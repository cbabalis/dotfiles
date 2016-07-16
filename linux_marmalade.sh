####################################################################
## JAVA ############################################################
export JAVA_HOME=/usr/java/default
add_to_start_of_path_if_not_exists $JAVA_HOME/bin
export IDEA_JDK=$JAVA_HOME
export STUDIO_JDK=$JAVA_HOME
export CL_JDK=$JAVA_HOME
####################################################################
####################################################################

####################################################################
## NODE ############################################################
export NODE_HOME=/opt/node/node-v6.2.1-linux-x64
add_to_end_of_path_if_not_exists $NODE_HOME/bin
####################################################################
####################################################################

####################################################################
## rbenv ###########################################################
add_to_start_of_path_if_not_exists $HOME/.rbenv/bin
####################################################################
####################################################################

####################################################################
## pyenv ###########################################################
#export PYENV_ROOT="$HOME/.pyenv"
#add_to_start_of_path_if_not_exists $PYENV_ROOT/bin
#eval "$(pyenv init -)"
#. ~/.pyenv/completions/pyenv.bash
####################################################################
####################################################################

alias ll='command ls -la --color=auto'
