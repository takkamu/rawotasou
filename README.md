# ラヲタ荘

## サイト概要
### サイトテーマ
食べたラーメンを投稿し、記録するレビューサイト

## URL
https://rawotasou.com

### テーマを選んだ理由
インスタグラムには常にラーメンの写真が投稿されているほどラーメン好きが多い印象です。そんな私もラーメンを年間100食以上食べるラーメンヲタクです。
これまで食べたラーメンの件数やスープの種類などを記録し、自分や友人のデータを見れるようになれば面白いのではないかと考えました。
また、私の地元には訪れた回数を店側が記録し、その上位の客の名前を店内に飾るという変わった取り組みから学生から社会人まで多く訪れる常に満席のラーメン屋があります。
ランキング機能によって競争心を煽り、コロナの影響により外食が減っているこの世の中で、ラーメン業界が少しでも盛り上がればと思い、このテーマを選定しました。

### ターゲットユーザ
- ラーメンをこよなく愛する人
- 食べたラーメンを記録、共有したい人
- 友人が食べたラーメンに興味がある人

### 主な利用シーン
- ラーメンを食べる
- ラーメン屋を探す
- 自分やフォロワーの過去に食べたラーメンやデータを確認する

## 設計書
- ER図
![ER_diagram](https://user-images.githubusercontent.com/104718319/185045110-b75c4ab5-e8b1-4bfd-ad42-644c79052b79.png)
- テーブル定義書
https://docs.google.com/spreadsheets/d/1awxrbvdYX6RhUxEjxoA6QBG_nWvyg7tBs46uf_epmSY/edit#gid=1373217982
- アプリケーション詳細設計
https://docs.google.com/spreadsheets/d/1JQFSO_HRw3B1S_E0fQPFcVljKven9_tiFmqS32PG1lY/edit#gid=2133469642


## 開発環境
- OS：Amazon Linux2(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## その他使用技術
- ユーザー認証(devise)
- 画像アップロード機能(ActiveStorage)
- 非同期通信(投稿・いいね・フォローの各種ボタン、投稿の即時反映、タブ)
- グラフ描画(chart.js)
- HTTPS接続(Certbot)
- チーム開発を意識したGitHubの活用
- 自動デプロイ(GitHub Actions(CI/CDツール))

## 使用素材
- フリー素材ドットコム
https://free-materials.com