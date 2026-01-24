# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
[ -f "$HOME/.bash/vars.sh" ] && source "$HOME/.bash/vars.sh"
[ -f "$HOME/.bash/functions.sh" ] && source "$HOME/.bash/functions.sh"
[ -f "$HOME/.bash/aliases.sh" ] && source "$HOME/.bash/aliases.sh"
[ -f "$HOME/.bash/autocompletions.sh" ] && source "$HOME/.bash/autocompletions.sh"
[ -f "$HOME/.bash/paths.sh" ] && source "$HOME/.bash/paths.sh"
[ -f "$HOME/.bash/tools.sh" ] && source "$HOME/.bash/tools.sh"

. "$HOME/.local/share/../bin/env"

eval "$(starship init bash)"
