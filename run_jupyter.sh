#!/bin/bash

CWD=`pwd`

docker run \  # Dockerのコンテナを起動するサブコマンド `run`
    --rm \  # 終了後に自動的にコンテナを削除する
    -it \  # -t: tty（標準入力を受け取るのに必要）をコンテナのプロセスに割り当てる -i: 標準入力を待ち受け状態にする
    -p 8888:8888 \  # portを設定 ホスト側:コンテナ側 Jupyterがデフォルトで8888を割り当てるのでこれに合わせている
    -v ${CWD}:/home/jovyan/chemo \  # カレントディレクトリをコンテナにマウント
    -t chemowakate/tutorial-6th  # イメージを指定
