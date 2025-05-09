eval $(/opt/homebrew/bin/brew shellenv)

source "$HOME/.local/bin/env.fish"

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx PATH "/usr/local/go/bin" $PATH
set -gx PATH "$HOME/go/bin" $PATH

# pnpm
set -gx PNPM_HOME "$HOME/.pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# google cloud sdk
if [ -f '/Users/tf63/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/tf63/Downloads/google-cloud-sdk/path.fish.inc'; end
