function __fish_chflags_need_command
    set cmd (commandline -opc )
    if [ ( count $cmd ) -eq 1 ]
        return 0
    else
        return 1
    end
end

# https://ss64.com/osx/chflags.html

complete -f -c chflags -n __fish_chflags_need_command -a hidden -d 'set the hidden flag'
complete -f -c chflags -n __fish_chflags_need_command -a opaque -d 'set the opaque flag '
complete -f -c chflags -n __fish_chflags_need_command -a uchg -d 'set the user immutable flag'
complete -f -c chflags -n __fish_chflags_need_command -a uunlink -d 'set the user undeletable flag':

complete -f -c chflags -n __fish_chflags_need_command -a nohidden -d 'remove the hidden flag'
complete -f -c chflags -n __fish_chflags_need_command -a nouchg -d 'Means the file can be changed'
