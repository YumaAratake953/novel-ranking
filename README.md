# 小説ランキングサイト

"小説ランキングサイト"は小説投稿サイトのランキング情報をまとめて閲覧できるサイトでバックエンドはrails，フロントエンドはReactを用いて開発されています

## DEMO

![demoImage](https://github.com/YumaAratake953/novel-ranking/blob/main/image/React%20App%20-%20Google%20Chrome%202022_01_15%2019_30_51.png)

## Features

* 本サイトは，複数ある小説投稿サイトの日間や月間のランキング情報を取得して，まとめて表示するサイトです
* 本サイトはAPIファーストで開発を行っているため，フロントエンドとバックエンドを切り離して開発を行っています．そのため，メンテナンスが容易とっており，今後インターフェースが多様化していった場合でも対応ができます

## Requirement

* Ruby on Rails 6.1.4
* Ruby 3.0.2
* Docker 20.10.12
* MySQL 8.0
* apollo/client 3.4.15 
* material-ui/core 4.12.3
* material-ui/icons 4.11.2
* apollo-boost 0.4.9
* axios 0.21.1
* graphql 14.7.0
* react-apollo 3.1.5
* react-router-dom 5.2.1

## Installation

- 基本的には[このサイト](https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5)を参考にしてDockerfileやdocker-compose.ymlを記述し，以下の順でコマンドを実行すれば勝手にrailsやreactはインストールが完了する
    1. 'docker-compose run api rails new . --force --no-deps -d mysql --api' <- apiとしてバックエンドを開発する場合
    2. ここでdetabase.ymlを[このサイト](https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5)を参考にして記述する
    3. 'docker-compose build'
    4. 'docker-compose run front yarn create react-app react-app --template typescript'

- material-ui関連のライブラリをインストール
    1. 'docker-compose run front yarn add @material-ui/icons'
    2. 'docker-compose build'

- react-routerライブラリをインストール
    1. 'docker-compose run front npm install react-router-dom @types/react-router-dom'
    2. 'docker-compose build'

- graphql関連のライブラリをインストール
    1. 以下をgemfileの末行に追加する
        gem 'graphql'
        group :development do
            gem 'graphiql-rails'  
        end
    2. 'docker-compose run api bundle install'
    3. 'docker-compose build'
    4. 'docker-compose run api rails generate graphql:install'
    5. 'docker-compose run front npm install @apollo/client graphql'
         

## Usage

```bash
git clone https://github.com/YumaAratake953/novel-ranking.git
docker-compose up -d
```

## Author

* 荒武 佑磨
* 高知工科大学 情報学群4年
* asketb0306@gmail.com
 