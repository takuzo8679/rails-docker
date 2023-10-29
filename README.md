# README

## 概要

- Ruby On Railsのtodoアプリ
- Dockerで動きます

## 開発環境構築方法

### 前提条件

- 想定OS:Mac
- dockerがインストール済みで起動されている
- 本リポジトリがgit cloneされている

### 初回実行コマンド

- リポジトリのルートディレクトリで右記を実行：`sh initialize.sh`
- コマンド補足
  ```sh
  # dokcerのimage作成
  docker-compose build --no-cache
  # container作成とdb作成
  docker-compose run web rails db:create
  # container起動
  docker-compose up -d
  # ブラウザで動作確認
  open http://localhost:3000/
  ```

## デバッグ情報

|項目|コマンド|
|:--|:--|
|更新したコードの確認|ブラウザをリロードするだけで反映|
|コンテナ停止|docker-compose down|
|コンテナ起動|docker-compose up -d [--build]|
|コンテナ状況確認|docker-compose ps|
|インフラ構成変更|docker-compose build --no-cache|
