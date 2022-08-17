# ラヲタ荘

## サイト概要
### サイトテーマ
「ラー活って楽しい！」

ラーメン好きに向けた、ラーメン活動を楽しく簡単に記録・共有するサービスです。

### URL
https://rawotasou.com

### 制作の背景
インスタグラムには常にラーメンの写真が投稿されているほどラーメン好きが多い印象です。そんな私もラーメンを年間120食以上食べるラーメンヲタクです。
これまで食べたラーメンの件数やスープの種類などを記録し、自分や友人のデータを見れるようになれば面白いのではないかと考えました。
また、私の地元には訪れた回数を店側が記録し、その上位の客の名前を店内に飾るという変わった取り組みから学生から社会人まで多く訪れる常に満席のラーメン屋があります。
ランキング機能によって競争心を煽り、コロナの影響により外食が減っているこの世の中で、ラーメン業界が少しでも盛り上がればと思い、このテーマを選定しました。

### 主な利用シーン
- 食べたラーメンを記録したいとき
- ラーメン屋を探すとき
- 自分やフォロワーの過去に食べたラーメンやデータを確認したいとき

## 機能一覧
- 投稿機能
- グラフ機能（投稿データからグラフ描画）
- いいね機能
- フォロー機能
- 検索機能（会員やラーメン店検索）
- レベルアップ機能（経験値と閾値の比較からレベルアップ）
- ゲストログイン機能（テストユーザーとして簡単にログイン）

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