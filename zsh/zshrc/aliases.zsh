alias sudo='sudo '

alias ll='colorls -lA --sd --group-directories-first'
alias ls='colorls --group-directories-first'
alias cat='bat --paging=never'
alias 2048="cd $DOTFILES_DIR/games && ./2048"

# machine specific aliases
[[ ! -f ~/.aliases.sh ]] || source ~/.aliases.sh
