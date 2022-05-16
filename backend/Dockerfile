# 元にするイメージファイル
FROM ruby:3.0 

# apt-get update：変更されたパッケージの情報を更新する．更新しないと新しいパッケージのインストールが行えない
# apt-get install：パッケージのインストール/更新
# build-essential：Debianパッケージの更新に必須であるとされるパッケージの一覧情報が含まれる
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client

# 本番用環境変数
ENV RAILS_ENV=production


# /myappを環境変数APP_PATHで宣言し，/myappディレクトリを作成し，作業ディレクトリを/myappに移す
ENV APP_PATH /myapp
RUN mkdir $APP_PATH
WORKDIR $APP_PATH

# gemfileとlockファイルを指定の位置にコピーする
COPY Gemfile $APP_PATH/Gemfile
COPY Gemfile.lock $APP_PATH/Gemfile.lock

# bundlerを使ってGemfileからgemをインストールする
RUN bundle install

# 
COPY . $APP_PATH

# コンテナ起動時のコマンドを実行するためのあれこれ
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# コンテナのポートを指定する
# herokuではEXPOSEがサポートされていないため，環境変数PORTを指定する
ENV PORT 3000
EXPOSE $PORT

# COPY start.sh /start.sh
# RUN chmod 744 /start.sh
# CMD ["sh", "/start.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
RUN ["apt-get", "install", "-y", "vim"]