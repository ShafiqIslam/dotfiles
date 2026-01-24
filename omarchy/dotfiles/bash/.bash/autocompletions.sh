_dd_completion() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    # List all container names for completion
    opts=$(docker ps -a --format '{{.Names}}')

    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
    return 0
}

complete -F _dd_completion dd