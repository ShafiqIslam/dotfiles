__completion() {
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    opts=$("$@")

    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
    return 0
}

__docker_container_completion() {
    __completion docker ps -a --format '{{.Names}}'
}

__kube_completion() {
    __completion kubectl get "$1" --no-headers -o custom-columns=:metadata.name
}

__kube_pod_completion() { __kube_completion pods;        }
__kube_svc_completion() { __kube_completion svc;         }
__kube_dep_completion() { __kube_completion deployments; }
__kube_sec_completion() { __kube_completion secrets;     }

complete -F __docker_container_completion dd
complete -F __docker_container_completion dex
complete -F __docker_container_completion dlog

source <(kubectl completion bash)
complete -F __start_kubectl k
complete -F __kube_svc_completion kds
complete -F __kube_pod_completion kdp
complete -F __kube_pod_completion kl
complete -F __kube_pod_completion kex
complete -F __kube_dep_completion kr
complete -F __kube_sec_completion kvsec