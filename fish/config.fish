if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -f ~/.config/fish/local.fish
    source ~/.config/fish/local.fish
end

~/.local/bin/mise activate fish | source

# pnpm
set -gx PNPM_HOME '/Users/tf63/.pnpm'
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
