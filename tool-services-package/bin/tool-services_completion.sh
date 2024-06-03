#!/bin/bash

# 自动补全函数
_tool-services_completions() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--stop --restart --start -y -n -h -?"

    if [[ ${cur} == -* ]]; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    # 自动补全服务名称
    if [[ ${prev} == "--stop" || ${prev} == "--restart" || ${prev} == "--start" ]]; then
        local services=$(systemctl list-units --type=service --no-pager --no-legend | awk '{print $1}' | sed 's/.service//')
        COMPREPLY=( $(compgen -W "${services}" -- ${cur}) )
        return 0
    fi
}

# 使用 complete 命令为脚本启用自动补全
complete -F _tool-services_completions tool-services
