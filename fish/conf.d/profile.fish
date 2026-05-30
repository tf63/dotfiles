eval $(/opt/homebrew/bin/brew shellenv)

source "$HOME/.local/bin/env.fish"

# pnpm
set -gx PNPM_HOME "$HOME/.pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# (やるならプロジェクト単位でやった方が良い)
# set -gx NODE_TLS_REJECT_UNAUTHORIZED 0
