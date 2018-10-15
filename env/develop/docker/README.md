laravel docker image
====================

# What's this ?

Ubuntu18で、PHP+Laravelを動かすDockerfile。

# Usage

```bash
docker build -t php7-ralavel .
docker run -i -p 8000:8000 -t php-ralavel /bin/bash
```

## 内部でサーバを立てる

基本、Laravelのartisanは「デフォルトが自マシン内からのリクエストしか通さない」ので、docker containerの外から確認する場合には、開放する必要が在る。

```bash
php artisan serve --host 0.0.0.0
```
