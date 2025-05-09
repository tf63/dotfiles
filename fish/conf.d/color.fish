# override colors
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

# set commandline color
# ----------------------------------------------------------------
# set | grep color # Check current settings
# ----------------------------------------------------------------
set fish_color_autosuggestion $brblack
set fish_color_cancel $red
set fish_color_command $green
set fish_color_comment $bryellow
set fish_color_cwd $brred
set fish_color_cwd_root $blue
set fish_color_end $red
set fish_color_error $purple
set fish_color_escape $brpurple
set fish_color_history_current --bold
set fish_color_host $brgreen
set fish_color_host_remote $bryellow
set fish_color_keyword
set fish_color_match $brcyan --underline
set fish_color_normal $brwhite
set fish_color_operator $brpurple
set fish_color_option
set fish_color_param $brgreen
set fish_color_quote $yellow
set fish_color_redirection $brgreen
set fish_color_search_match --background=brblack
set fish_color_selection --background=brblack
set fish_color_status $red
set fish_color_user $brblue
set fish_color_valid_path --background=normal --underline

set fish_pager_color_progress              $gray --italics
set fish_pager_color_secondary_background  # null
set fish_pager_color_secondary_completion  $brgray
set fish_pager_color_secondary_description $brgray
set fish_pager_color_secondary_prefix      $brgray
set fish_pager_color_selected_completion   $brblue
set fish_pager_color_selected_description  $brblue
set fish_pager_color_selected_prefix       $brblue

set -g user_color $blue
set -g atto_color $white
set -g host_color $brblue
set -g remotehost_color $yellow
set -g cd_color $cyan
set -g git_color $brcyan

# Change ls colors https://nemoplus.hateblo.jp/entry/20090119/1232373540
set -x LSCOLORS gxhxcxdxbxegedabagacad
