if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux fish_greeting
set -Ux LANG "en_US.utf-8"
set -Ux  LC_ALL "en_US.UTF-8"

alias ls='lsd'

starship init fish | source
~/.local/bin/mise activate fish | source
