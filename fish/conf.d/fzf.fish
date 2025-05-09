fzf --fish | source

set -gx FZF_CTRL_T_OPTS "--walker-skip .git,node_modules,target,.venv,venv --preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
set -gx FZF_DEFAULT_OPTS "--walker-skip .git,node_modules,target,.venv,venv"
