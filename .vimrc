set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nu
set autoindent
set cindent

"set shellcmdflag=-ic

map <F2> :call Main()

func! Main()
    exec "w"
    exec "!make"
    exec "!./main.exe hello.c"
endfunc
