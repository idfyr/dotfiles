if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux fish_greeting
set -Ux LANG "en_US.utf-8"
set -Ux  LC_ALL "en_US.UTF-8"

starship init fish | source

# Add newline after prompt
function starship_transient_prompt_func
	tput cuu1
	starship module character
end
function prompt_newline --on-event fish_postexec
	echo
end
alias clear "command clear; commandline -f clear-screen"

zoxide init fish | source

alias ls='lsd'
alias cd='z'

~/.local/bin/mise activate fish | source
