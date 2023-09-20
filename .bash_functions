test() {
    echo $1
}

maxphp() {
    nohup mysqld &
    php-fpm
    nginx
}

misan() {
    cd ~/misanthropist.github.io
    python3 -m http.server --cgi 1995 >/dev/null 2>&1 &
    cd ~
}

pxyzg() {
    cd ~/misan
    nohup gunicorn -w 4 -b 0.0.0.0:8000 wsgi:app &
    cd ~
}
