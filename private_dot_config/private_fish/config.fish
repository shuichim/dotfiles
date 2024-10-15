
if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x EZA_COLORS "da=90"

    eval "$(/opt/homebrew/bin/brew shellenv)"
    starship init fish | source

    if set -q ZELLIJ || string match -q "$TERM_PROGRAM" vscode || string match -q "$TERM_PROGRAM" cursor


    else
        zellij -l welcome
    end
end
