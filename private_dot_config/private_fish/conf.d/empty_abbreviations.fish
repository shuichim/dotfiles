if status is-interactive

# git related
abbr -a gcb 'git checkout -b' 
abbr -a gco 'git checkout' 

# Basic replacements
abbr -a l 'eza'
abbr -a ls 'eza'
abbr -a ll 'eza --long --all --header --icons --git'

# Tree view
abbr -a lt 'eza --tree'
abbr -a ltt 'eza --tree --level=2'

# Show only directories
abbr -a lsd 'eza -D'
abbr -a lld 'eza -lD'

# Showing hidden files (dotfiles)
abbr -a l. 'eza -d .*'
abbr -a ll. 'eza -ld .*'

# Chezmoi related 
abbr -a chad 'chezmoi add'
abbr -a ched 'chezmoi edit'
abbr -a chcd 'chezmoi cd'
abbr -a chdiff 'chezmoi diff'
abbr -a chap 'chezmoi apply'

end
