#pardus zsh-theme as an extension to alanpeabody theme
#screenshot is @ 
#ugrey="%{^[[033;1m%}"
local user='%{$FG[255]%}%n@%m%{$reset_color%}'
#local user='%{$fg[white]%}%n@%{$fg[white]%}%m%{$reset_color%}'
local pwd='%{$fg[red]%}%~%{$reset_color%}'
local type='%{$fg[red]%}%(!.#.$)%{$reset_color%}'

#local rvm=''

#if which rvm-prompt &> /dev/null; then
#  rvm='%{$fg[green]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
#else
#  if which rbenv &> /dev/null; then
#    rvm='%{$fg[green]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
#  fi
#fi

local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

PROMPT="${user} ${pwd} ${type} "
RPROMPT="${return_code} ${git_branch} ${rvm}"
