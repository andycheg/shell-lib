_gp_complete()
{
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

	if [ ! -d $SHELL_LIB ]; then
		return 0
	fi

	if [ $__git != "1" ]; then
		return 0
	fi

	REMOTES=`git remote | xargs`

    if [ ${COMP_CWORD} == 1 ] ; then # цикл определения автодополнения при вводе подкоманды первого уровня
        COMPREPLY=( $(compgen -W "${REMOTES}" -- ${cur}) )
        return 0
    fi

    return 0
}

complete -F _gp_complete gph
complete -F _gp_complete gpl
