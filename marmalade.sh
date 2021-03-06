################################################################################
# Put this in ~/.bashrc or ~/.bash_profile
#
# [[ -r ~/.marmalade.sh ]] && [[ -f ~/.marmalade.sh ]] && source ~/.marmalade.sh
#
################################################################################
export MARMALADE_PATH=$(realpath ~/.marmalade.sh | sed 's/\/marmalade.sh//g')

source $MARMALADE_PATH/pathmixer.sh

# Mac or Linux?
if [[ "$(uname)" == "Darwin" ]]; then
  source $MARMALADE_PATH/macos_marmalade.sh
else
  source $MARMALADE_PATH/linux_marmalade.sh
fi

if [[ -f $MARMALADE_PATH/extras_marmalade.sh ]]; then
  source $MARMALADE_PATH/extras_marmalade.sh
fi

################################################################################
######### Colors PS1 ###########################################################
. $MARMALADE_PATH/marmalade_ps1.sh
################################################################################
################################################################################

################################################################################
######### Aliases ##############################################################
alias path_to_lines='echo $PATH | tr ":" "\n"'
alias ld_to_lines='echo $LD_LIBRARY_PATH | tr ":" "\n"'
alias update_marmalade="(cd ${MARMALADE_PATH}; git pull)"
alias MVN_NO_TESTS="mvn -Dmaven.test.skip=true -DskipTests=true"
################################################################################
################################################################################

load_path_file_to_path
#unset MARMALADE_PATH


alias idea="vim ~/Nextcloud/GTD/PERSONAL/NEXT_ACTIONS/IDEAS.txt"
alias todo="vim ~/Nextcloud/GTD/PERSONAL/NEXT_ACTIONS/NEXT_ACTIONS.txt"
