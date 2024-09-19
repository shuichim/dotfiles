if status is-interactive

# Basic replacements
abbr -a l 'eza'
abbr -a ls 'eza'
abbr -a ll 'eza -l'
abbr -a la 'eza -la'

# Long format with various sorting options
abbr -a llm 'eza -l --sort=modified'
abbr -a lls 'eza -l --sort=size'
abbr -a lla 'eza -l --sort=accessed'
abbr -a llc 'eza -l --sort=created'

# Tree view
abbr -a lt 'eza --tree'
abbr -a ltt 'eza --tree --level=2'

# Show only directories
abbr -a lsd 'eza -D'
abbr -a lld 'eza -lD'

# Git integration
abbr -a lg 'eza -l --git'
abbr -a lga 'eza -la --git'

# Icons and colors
abbr -a lic 'eza --icons --color=always'
abbr -a llic 'eza -l --icons --color=always'

# Grid and across
abbr -a lsg 'eza --grid'
abbr -a lsx 'eza --across'

# Extended attributes
abbr -a lx 'eza -l --extended'

# Showing hidden files (dotfiles)
abbr -a l. 'eza -d .*'

# Recursive listing
abbr -a lr 'eza -R'
abbr -a lrr 'eza -lR'

end
