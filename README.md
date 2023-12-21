# doudou

命令行配置。

## 1.shell配置

用户打开shell登陆后，shell自动执行.profile, 然后执行.bashrc, 最后执行.bash_aliases, .bash_functions。

## 2.vim配置

通过编辑.vimrc配置vim编辑器。

```vimrc
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
```

## 3.git配置

编辑.gitconfig, .gitignore配置git。

```bash
git remote add origin git@github.com:misanthropist/doudou.git
git config --local user.name "doudou-wsl"
git config --local user.email "2814143768@qq.com"
```
