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

## 4.python配置

创建flask开发虚拟环境

```bash
sudo apt install python3.7
sudo apt install python3.7-venv
sudo apt install gunicorn
python3.7 -m venv temp/flask
temp/flask/bin/pip3.7 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
temp/flask/bin/pip3.7 install -r pxyz/requirements.txt
```

## 5.常用命令

```bash
//后台运行kiwix服务器
kiwix-serve --library temp/zim.xml -p 1996 >/dev/null 2>&1 &

//挂载硬盘
sudo fdisk -l
sudo mount /dev/sda2 /home/doudou/temp/a

//aes128解密
openssl aes-128-cbc -d -in {} -out {} -nosalt -iv f0d331df7ba042c907a2412c9f0e4817 -K a17d2e4acb01ef2571e6d55c862e4a24"

//合并hls
ffmpeg -allowed_extensions ALL -i index.m3u8 -c copy filename.mp4
```