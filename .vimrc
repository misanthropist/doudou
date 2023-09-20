set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nu
set autoindent
set cindent

map <F2> :call Main()

func! Main()
    exec "w"
    exec "!make"
    exec "!./main.exe"
endfunc
