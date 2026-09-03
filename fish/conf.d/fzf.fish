set -gx FZF_CTRL_T_OPTS "--walker-skip .git,node_modules,target,.venv,venv"
set -gx FZF_DEFAULT_OPTS "--walker-skip .git,node_modules,target,.venv,venv"

function __fzf_open_file
    set -l selected (fzf --height 40% --reverse --preview 'bat -n --color=always {}')
    if test -n "$selected"
        commandline -i -- $selected
    end

    commandline -f repaint
end

function __fzf_open_branch
    set -l selected (git branch -a --format='%(refname:short)' | fzf --height 40% --reverse --preview 'git log -5 --oneline --decorate {}')

    if test -n "$selected"
        commandline -i -- $selected
    end

    commandline -f repaint
end

function __fzf_open_repository
    set -l repo (ghq list -p | fzf --height 40% --reverse --preview 'ls {}')

    if test -n "$repo"
        commandline -i -- "cd $repo"
    end

    commandline -f repaint
end

bind \cT '__fzf_open_file'
bind \cb '__fzf_open_branch'
bind \cg '__fzf_open_repository'
