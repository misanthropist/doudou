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
    scp -r -P 8022 $1 u0_299@192.168.24.97:~/$2
}

pullmi10s() {
    scp -r -P 8022 u0_299@192.168.24.97:~/$1 $2
}

pushpad() {
    scp -r -P 8022 $1 u0_242@192.168.0.98:~/$2
}

pullpad() {
    scp -r -P 8022 u0_242@192.168.0.98:~/$1 $2
}

pushpi() {
    scp -r $1 doudou@192.168.0.99:~/$2
}

pullpi() {
    scp -r doudou@192.168.0.99:~/$1 $2
}

