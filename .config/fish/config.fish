if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -g fish_greeting
neofetch
starship init fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
end
