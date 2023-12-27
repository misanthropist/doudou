test() {
    echo $1
}

vscode() {
    nohup code-server >/dev/null 2>&1 &
}

misan() {
    cd ~/misanthropist.github.io
    nohup python3 -m http.server --cgi 1995 >/dev/null 2>&1 &
    cd ~
}

pxyzg() {
    cd ~/pxyz
    nohup gunicorn -w 4 -b 0.0.0.0:8000 wsgi:app >/dev/null 2>&1 &
    cd ~
}

pushm10s() {
    scp -P 8022 $1 u0_299@192.168.240.173:~/$2
}

pullmi10s() {
    scp -P 8022 u0_299@192.168.240.173:~/$1 $2
}
