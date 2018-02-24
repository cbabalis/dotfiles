alias minimal_ps1="PS1='$ '"


if [[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]]; then
  . /usr/share/git-core/contrib/completion/git-prompt.sh
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="verbose name"
export GIT_PS1_SHOWCOLORHINTS=true

_marmalade_ps1() {
  [[ -z $BASH ]] && return

  local F_SEP='\[\033[2;49;37m\]'
  local F_PATH='\[\033[32m\]'
  local F_GIT='\[\033[93;1m\]'
  local F_MAIN='\[\033[36m\]'
  local RESET_ALL='\[\033[0m\]'

  local p_s1="${F_SEP}╭${RESET_ALL}"
  local p_s2="${F_SEP}╰${RESET_ALL}"
  local p_sep="${RESET_ALL}${F_SEP}|${RESET_ALL}"
  local p_git="${F_GIT}\$(declare -F __git_ps1 &>/dev/null && __git_ps1 \"%s\")${RESET_ALL}"
  local p_pwd="${F_PATH}\w${RESET_ALL}"
  local p_usr="${F_MAIN}\u@\h${RESET_ALL}"

  local line1="${p_s1} ${p_usr} ${p_sep} ${p_pwd} ${p_sep} ${p_git}"
  local line2="${p_s2} "

  export PS1="${line1}\n${line2}"
}

_marmalade_ps1
