#常用命令缩写
alias la='ls -a'
alias ll='ls -lha'                             
alias aliv='vim ~/.bash_aliases'
alias ali.='. ~/.bash_aliases'
alias top10='cat .bash_history|sort|uniq -c|sort -rn|head -n 10'

#部署代码

#win10平台
alias sd='shutdown /h'
alias pxyz='cd pxyz && /cygdrive/d/conda/envs/ai/python.exe -m flask run --host=0.0.0.0 >/dev/null 2>&1 &'
alias wiki='/cygdrive/c/Users/doudou/Chrome/kiwix/xulrunner/kiwix-serve.exe --library --port=2018 C:\\Users\\doudou\\Chrome\\kiwix\\library\\library.xml &'
alias fixed_bugs='git add . && git commit -m "fixed bugs" && git push'

alias pi='ssh pi@10.3.141.1' 
