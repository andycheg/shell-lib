_port_complete()
{
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

	if [ ! -d $SHELL_LIB ]; then
		return 0
	fi

	COMMAND_LIST=`cat $SHELL_LIB/port/commands.list`

    if [ ${COMP_CWORD} == 1 ] ; then # цикл определения автодополнения при вводе подкоманды первого уровня
        COMPREPLY=( $(compgen -W "${COMMAND_LIST}" -- ${cur}) )
        return 0
    fi
    
    subcmd_1="${COMP_WORDS[1]}" 
    case "${subcmd_1}" in 
    help)
        if [ ${COMP_CWORD} == 2 ] ; then 
            COMPREPLY=( $(compgen -W "${COMMAND_LIST}" -- ${cur}) )
            return 0
        fi
        COMPREPLY=() 
        return 0
        ;;
    info)
        if [ ${COMP_CWORD} == 2 ] ; then 
            COMPREPLY=( $(port search --regex --name ^${cur} | grep @ | awk ' { print $1; } ' | xargs) )
            return 0
        fi
        COMPREPLY=() 
        return 0
        ;;
    install)
        if [ ${COMP_CWORD} == 2 ] ; then 
            COMPREPLY=( $(port search --regex --name ^${cur} | grep @ | awk ' { print $1; } ' | xargs) )
            return 0
        fi
        COMPREPLY=() 
        return 0
        ;;
    esac
    return 0
}

complete -F _port_complete port
