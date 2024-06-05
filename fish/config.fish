if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fish config ------------------------------------------------
# set color
set -g black 2E3440
set -g white D5D9E0
set -g brblack 7C868A
set -g brwhite ECEFF4
set -g gray 4C566A
set -g brgray 8FBCBB
set -g blue A8D6FF
set -g brblue D1E9FF
set -g brgreen CFF9AB
set -g green A9CF83
set -g magenta FFA8D6
set -g brmagenta FFD1E9
set -g red FF9191
set -g brred FFC1C1
set -g yellow DDDD98
set -g bryellow FFFFD1
set -g purple D1A8FF
set -g brpurple E9D1FF
set -g cyan A8FFD1
set -g brcyan D1FFE9
set -g brown E9C1A8
set -g brbrown FFE9D1
set -g purple D6A8FF
set -g brpurple E9D1FF

set -g user_color $blue
set -g atto_color $white
set -g host_color $brblue
set -g remotehost_color $yellow
set -g cd_color $cyan
set -g git_color $brcyan

# commandline
set fish_color_normal         $brwhite

set fish_color_command        $green
set fish_color_param          $brgreen
set fish_color_redirection    $bryellow
set fish_color_quote          $yellow

set fish_color_autosuggestion $brblack

set fish_color_comment        $bryellow

set fish_color_cancel         $red
set fish_color_end            $red
set fish_color_error          $purple

set fish_color_escape         $brpurple
set fish_color_match          $brcyan --underline
set fish_color_operator       $brpurple

# pager
set fish_pager_color_progress              $gray --italics
set fish_pager_color_secondary_background  # null
set fish_pager_color_secondary_completion  $brgray
set fish_pager_color_secondary_description $brgray
set fish_pager_color_secondary_prefix      $brgray
set fish_pager_color_selected_completion   $brblue
set fish_pager_color_selected_description  $brblue
set fish_pager_color_selected_prefix       $brblue


# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow
# set __fish_git_prompt_color_upstream_ahead green
# set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡ -- dirty'
set __fish_git_prompt_char_stagedstate '→ -- staged'
set __fish_git_prompt_char_untrackedfiles '☡ -- untracked'
set __fish_git_prompt_char_stashstate '↩ -- stash'
set __fish_git_prompt_char_upstream_ahead '+ -- upstream ahead'
set __fish_git_prompt_char_upstream_behind '- -- upstream behind'


function fish_prompt
  printf '\n'(set_color $user_color)$USER(set_color $atto_color)'@'
  if test $SSH_TTY
    printf (set_color $remotehost_color)(prompt_hostname)
  else
    printf (set_color $host_color)(prompt_hostname)
  end
  printf (set_color $atto_color)': '(set_color $cd_color)(prompt_pwd)
  printf (set_color $git_color)'%s'(__fish_git_prompt)

  if test $USER = 'root'
    printf '\n# '
  else
    printf '\n> '
  end
  set_color normal
end

# kitty config ------------------------------------------------------
alias icat="kitty +kitten icat"

# docker ------------------------------------------------------------
alias dc="docker compose"
alias dce="docker compose exec"
alias dcb="docker compose build"
alias dcd="docker compose down"
alias dcu="docker compose up"

# pnpm
alias pn="pnpm"
alias pe="pnpm exec"
alias pa="pnpm add"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

eval (gh completion -s fish| source)
# nvm ----------------------------------------------------------------
source ~/.config/fish/functions/__check_nvm.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tf63/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/tf63/Downloads/google-cloud-sdk/path.fish.inc'; end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH



# pnpm
set -gx PNPM_HOME "/Users/tf63/.pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
