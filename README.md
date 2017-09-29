# tutorial-6th
このリポジトリは第6回ケモインフォマティクス入門講座の講義資料を収めたものです  
勉強会の開催概要などは以下のページを御覧ください  

- [第６回ケモインフォマティクス入門講座：日本化学会情報化学部会ー若手の会](http://cicsj.chemistry.or.jp/wakate/news-contents/news170822.html)

## 事前準備について

受講者の方はこのページをよく読み、事前にハンズオン環境の準備を整えておいてください。  
所要時間は1時間ほどです。  

### Dockerのインストール
ご使用のOSに合わせて以下のドキュメントを参考にDockerをインストールします。  
余裕のある方は続けてチュートリアルも実践してみるとより理解が深まります。

#### Windowsの方
- [Docker for Windows のインストール — Docker-docs-ja 1.13.RC ドキュメント](http://docs.docker.jp/windows/step_one.html)

#### Windows10の方
こちらからDocker for Windowsをインストールしてください  
- [Docker Community Edition for Windows - Docker Store](https://store.docker.com/editions/community/docker-ce-desktop-windows)

:warning: Windows32bitの場合はDockerを使用できないので [こちら](https://github.com/chemo-wakate/tutorial-FAQ#1-pcの権限などが理由でdockerをインストールできない場合)を参考に環境構築をお願いします  
:warning: `Docker Quickstart Terminal` の起動の再、以下のメッセージが表示されて失敗する場合、`Docker toolbox` のインストール時に `Install VirtualBox with NDIS5 driver[default NDIS6]` にチェックを入れて再度インストールしてみてください
```
Looks like something went wrong... Press any key to continue...
```

#### Macの方
- [Mac OS X に Docker Toolbox のインストール — Docker-docs-ja 17.06.Beta ドキュメント](http://docs.docker.jp/docker-for-mac/step_one.html)

#### それ以外のOSの場合
- 自力でなんとかできるはず:notes:

#### インストールの確認

以下のコマンドを実行し、コンソール上に同様の出力を得られたらインストールは完了しています。

```
$ docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://cloud.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/engine/userguide/
```

### ハンズオン環境および講義資料のインストール

ハンズオン用のDockerイメージをインストールし、講義資料を[Jupyter](http://jupyter.org/)で閲覧できるようにします


#### リポジトリのクローン
任意の位置で実行してください  

```
git clone https://github.com/chemo-wakate/tutorial-6th.git
```
:bulb: Windows環境で `git` がインストールされていない場合は以下のページから `git` をインストールしてください  
- https://git-for-windows.github.io/

#### ハンズオン環境のダウンロード
ファイルサイズが約2GBと大きいので注意してください

```
cd tutorial-6th
docker pull chemowakate/tutorial-6th
```

#### インストールの確認
ダウンロードしたDockerコンテナで講義資料を表示できることを確認します  
`sh ./run_jupyter.sh` を実行後表示されるURLにWEBブラウザからアクセスし、 `chemo` というディレクトリが表示されていればインストールは完了しています

```
$ sh ./run_jupyter.sh
Execute the command: jupyter notebook
[I 08:59:34.877 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[W 08:59:34.897 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
[I 08:59:34.924 NotebookApp] JupyterLab alpha preview extension loaded from /opt/conda/lib/python3.6/site-packages/jupyterlab
JupyterLab v0.27.0
Known labextensions:
[I 08:59:34.926 NotebookApp] Running the core application with no additional extensions or settings
[I 08:59:34.930 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 08:59:34.930 NotebookApp] 0 active kernels
[I 08:59:34.931 NotebookApp] The Jupyter Notebook is running at: http://[all ip addresses on your system]:8888/?token=c0e5995458d0d57e88de3a726bd0a594d474c28831f093ef
[I 08:59:34.931 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 08:59:34.933 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=c0e5995458d0d57e88de3a726bd0a594d474c28831f093ef
```

##### ブラウザで確認した際のイメージ
<img width="273" alt="2017-09-25 18 02 06" src="https://user-images.githubusercontent.com/7918702/30800676-b9e8e08a-a21b-11e7-8afe-8bd7c5295fcc.png">

##### `chemo/` の中にこのリポジトリの内容が入っているのを確認できます
<img width="335" alt="2017-09-25 18 02 19" src="https://user-images.githubusercontent.com/7918702/30800721-e576bbb4-a21b-11e7-85c6-b0f38ae5765c.png">

##### localhostでアクセス出来ない場合
Windowsで `Docker Quickstart Terminal` を使用してjupyterを起動した場合、 `http://localhost:8888` でうまくアクセス出来ない場合があります  
その場合、 `http://192.168.99.100:8888` でアクセスを試してみてください
