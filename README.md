# 収支管理WEBアプリ

START：2019/02/09

## 開発環境

* Framework : Ruby on Rails

* Ruby version : 2.7.0

* DB : PostgreSQL

and more...

## 環境構築

### DB設定

#### ユーザー作成
1. ```$ psql -d postgres ``` Postgresに入る
2. ```# create role postgres with superuser login password 'postgres';``` ユーザを作成

### 追加Gem設定
#### ＜Slimファイルを使用するため＞

1. Gemfileに以下を追記し、```bundle```コマンド実行

  * ```gem 'slim-rails'```
  * ```gem 'html2slim'```


2. erb形式のファイルをslim形式へ<br> ```bundle exec erb2slim ＜変換したいファイルorディレクトリ＞ --delete```

#### <Bootstrap使用するため＞

1. Gemfileに以下を追記し、```bundle```コマンド実行

  * ```gem 'bootstrap'```


2. 「application.css」を削除し **「application.scss」** を新規作成

3. ```@import "bootstrap";```を追記



## メモ

* [AtomのMarkdownプレビュー機能](https://qiita.com/kamorits/items/6f342da395ad57468ae3)

* [マークダウン記法一覧](https://qiita.com/kamorits/items/6f342da395ad57468ae3)  
