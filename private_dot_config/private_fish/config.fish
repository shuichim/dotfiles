if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x EZA_COLORS "da=90"

    eval "$(/opt/homebrew/bin/brew shellenv)"
    starship init fish | source

    if set -q ZELLIJ
    else
        zellij -l welcome
    end
end
