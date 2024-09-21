if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x EZA_COLORS "uu=36:un=0:gu=36:gn=0:da=90:sn=32:sb=32"

    eval "$(/opt/homebrew/bin/brew shellenv)"
    starship init fish | source

    if set -q ZELLIJ
    else
        zellij -l welcome
    end
end
