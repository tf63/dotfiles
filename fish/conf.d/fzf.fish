set -gx FZF_CTRL_T_OPTS "--walker-skip .git,node_modules,target,.venv,venv --preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
set -gx FZF_DEFAULT_OPTS "--walker-skip .git,node_modules,target,.venv,venv"

function __fzf_open_file
    set -l selected (fzf)
    if test -n "$selected"
        commandline -i -- $selected
    end
end

function __fzf_ghq
    set repo (ghq list -p | fzf --height 40% --reverse --preview 'ls {}')
    if test -n "$repo"
        cd $repo
    end
end

bind \cT '__fzf_open_file'
bind \cg '__fzf_ghq'
