#!/bin/bash

# このフォルダをマウントし、laravelを動作可能なコンソール環境を起動するbashスクリプト。

# 「このスクリプトがある場所」まで移動
SCRIPT_DIR=$(cd $(dirname $(readlink -f $0 || echo $0));pwd -P)
cd ${SCRIPT_DIR}

cd ./env/develop/docker

docker build -t php-laravel . \
&& docker run -i --rm -p 8000:8000 -t php-laravel /bin/bash
