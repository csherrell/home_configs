# A multiline prompt with username, hostname, full path, return status, git branch, git dirty status, git remote status

#prompt_virtualenv() {
#  if [[ -n "$VIRTUAL_ENV" && -n "$VIRTUAL_ENV_DISABLE_PROMPT" ]]; then
#    prompt_segment blue black "(${VIRTUAL_ENV:t:gs/%/%%})"
#  fi
#}
POETRY_PROMPT="(${VIRTUAL_ENV:t:gs/%/%%})"

# build_prompt() {
#   RETVAL=$?
#   prompt_status
#   prompt_virtualenv
#   prompt_aws
#   prompt_context
#   prompt_dir
#   prompt_git
#   prompt_bzr
#   prompt_hg
#   prompt_end
# }


#local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"
#
#local host_color="green"
#if [ -n "$SSH_CLIENT" ]; then
#  local host_color="red"
#fi

PROMPT='
%{$fg_bold[blue]%}[%{$reset_color%}%{$fg_bold[${host_color}]%}%n@%m%{$reset_color%}%{$fg_bold[blue]%}] %{$fg_bold[blue]%}(%{$reset_color%}${VIRTUAL_ENV_PROMPT}%{$fg_bold[blue]%})%{$reset_color%} $(git_prompt_info) $(git_remote_status)
%{$reset_color%} %{$fg_bold[blue]%}%10c%{$reset_color%}
%{$fg_bold[cyan]%}❯%{$reset_color%} '

ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[075]}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"

RPROMPT='${return_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"                               
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[blue]%}) %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"
