## (新)開発の流れ
    - 使用する技術
        * 今んとこGCP
        * windows
        * rails/ruby
        * react/typescript
        * docker
        * GraphQL
        * octopase（クローラー）
        * MySQL
        * Apollo

    - 旧版との違い
        - バックとフロントを分けて開発した（APIファースト）
            - 分けるメリット
                * フロントとバックを別々のアプリケーションとすることで，問題が起こった場合や，機能の追加を行う場合でもどちらかをいじるだけでよくなった
                * フロントとバックのやり取りをGraphQL等を使ったリクエストで行うことで，様々な部分で処理の単純化が行える
                * バックエンドが独立している為，様々なデバイス，プラットフォームからのリクエストにも対応できる(パソコンだけでなくスマホなど)
    - DB設計
        * string:title
        * text:novel_url
        * string:author
        * text:author_url
        * text:description
        * string:peges
        * string:words
        * string:kinds
        * string:point
        * string:tag
    
    - ポイント補正用の各サイト元ポイント
        * 小説家になろう：補正値0
            * 769,000 725,000 702,000 634,000 597,000
        * カクヨム：補正値20
            * 34,000 25,000 19,000 24,000 12,000
        * ノベルアップ：補正値2
            * 296,000 250,000 234,000 133,000
        * アルファポリス：
            * 

    0. 環境構築はここ（https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5）を参考にするとよい
    1. 適当なフォルダを作りその中に以下のよう各種ファイルを用意する
        - api
            * Dockerfile
            * entrypoint.sh
            * Gemfile
            * Gemfile.lock
        - front
            * Dockerfile
        * docker-compose.yml
    2. 各ファイルの記述
        * 基本的には「https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5」を参考に記述，以下のファイルだけnodeのバージョンがシビアだから気を付ける
        * front/Dockerfile
        * ポートの番号を上記のサイトから変更し，バックをlocalhost:3000，フロントをlocalhost:8000にしている．特に意味はない

    3. フロント，バックの作成
        * docker-compose run api rails new . --force --no-deps -d mysql --api
        * ここでdetabase.ymlを「https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5」を参考に記述する
        * docker-compose build
        * docker-compose run front yarn create react-app react-app --template typescript
    
    5. DBとコンテナの起動
        * docker-compose up -d
        * docker-compose run api bundle exec rake db:create
        * docker-compose down
        * docker-compose up -d
        - 以下のサイトにアクセスし，うまくいっているか確認する
            * http://localhost:3000/
            * http://localhost:8000/
    
    6. モデル作成
        * docker-compose run api rails g model Site1 title:string novel_url:text author:string author_url:text detail:text peges:integer words:integer kinds:string points:integer update:string tags:text
         * 使ってはいけない名前（https://qiita.com/savaniased/items/fee648279d988346edd3）
        * docker-compose run api rails db:migrate
    7. コントローラー作成
        * docker-compose run api rails g controller api/novel index
    8. ルーティングの設定
        * (https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5)を参考にする
    9. gitに上げる
        * frontとback別々のレポジトリに入れる->まとめて入れる
        * 分からなかったらgit.mdを見る
    10. CORS設定
        * バックエンドとフロントエンドを分けているとセキュリティの問題でreact側からrails側のAPIを使用できないためCORSの設定を行う
        * バックエンドのgemfile内の行末に「gem 'rack-cors'」を追加
        * docker-compose build
        * cors.rbを（https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5）を参考に編集，しかし，ポートを変更している場合はそれに合わせてlocalhostの後の値を変更する必要あり
        * 「docker-compose restart」でコンテナを再起動
    11. octopaseで取得したデータをデータベースにエクスポートする
        * octopaseでデータを抽出したら，「detabaseにエクスポート」を選択
        - detabaseの詳細を聞かれるので答える，
            * データベースの種類はMySql
            * パスワードは「password」
            * エンコーディングはuth8mb4
            * データベース名は手順通りやっているのであれば「myapp_development」
            * それ以外は基本そのまま
            * 自分のデータベースの詳細はなんかのコマンドで確認できる
        * 後は画面にしたがってやってくだけ
        - それぞれのページのスクレイピング結果のエクスポート先
            * カクヨム　⇒　site1
            * ノベルアップ　⇒ site2
            * エブリスタ　⇒ site3
            * 小説家になろう　⇒　site4
    12. テーブルの確認
        * 「docker-compose run api rails dbconsole」
        * ちなみにDBのパスワードは「password」
        * 「MySQL [myapp_development]>」これが現れるので，「SELECT * FROM site1s;」という風に入力するとテーブルが見れる
        * 出る際は「exit」
    13. jsonファイルの出力
        * controller内のindex内で「render json: { status: 'SUCCESS', novels: Site1.all }」と入力する
        * powershellで「docker-compose restart」
        * コマンドプロンプト内で「curl -X GET http://localhost:3000/api/novels」と入力し，Jsonファイルが出力されればOK
    14. front画面への表示準備
        * (https://qiita.com/kazama1209/items/5c07d9a65ef07a02a4f5)基本的にこのサイトの「フロントの作成」の流れに沿って開発するが，「Todo」とい変数名や関数名が出てくるためそこは自分のサイトに合わせて変更する必要あり
        * 「index.ts」というファイルではモデルのカラムに対する型を指定する
        - 各ファイルの役割は以下の通り
            * index.ts：型定義
            * NovelItem.tsx：小説本体？
            * NovelList.tsx：小説リスト
            * client.ts：apiサーバのURL置き場
            * novels.ts：apiを叩くための関数置き場
            * App.tsx：表示画面
        * 基本的に一つの要素につき1つの.tsxファイルを作る
    15. いい感じの画面を作る
        - material-uiをインストールする
            * docker-compose run front yarn add @material-ui/icons
            * docker-compose build
        * このサイトの横の一覧から使いたいコンポーネントを探し，ソースコードを参考にする（https://material-ui.com/ja/components/grid/） 
    16. SPA（シングルページアプリケーション）か複数ページのWebサイトのどちらを作るか決める
        - それぞれの特徴
            * SPAは動作性の向上や，高度なWeb表現が期待できるが，すべての情報を最初に読み込むため，初期ローディングに時間がかかる.またSEO上不利になるかも？
            * 複数ページの場合は多分SPAの逆
    17. 複数ページのWebサイトのページ遷移を作る
        * docker-compose run front npm install react-router-dom @types/react-router-dom
        * docker-compose build
        * https://tako-xyz.com/react-screen-transition-implementation/
        * listItemにリンクを付ける場合以下のようにする
        <ListItemText>
          <Link to="/page_a">{text}</Link>
        </ListItemText>
    18. 取り敢えずrailsでGraphQLを使えるようにする
        * 以下をgemfileに追加する
          gem 'graphql'          
          group :development do
            gem 'graphiql-rails'  
          end
        * docker-compose run api bundle install
        * docker-compose build
        * docker-compose run api rails generate graphql:install
        * 参考にしたサイトではhttp://localhost:3000/graphiql/ と検索するとgraphiqlのサイトが表示されるようだが，今回のバックエンドはAPIとして開発をしているため，「Skipped graphiql, as this rails project is API only. You may wish to use GraphiQL.app for development: https://github.com/skevy/graphiql-app」と言われるので注意
        - 上記の理由から以下のサイトを参考にGraphiQL appでクエリでのやり取りを実行する
            * https://dev.classmethod.jp/articles/try-graphiql/
        
    19. GraphQLの書き方は以下のサイトを参考
        * https://spirits.appirits.com/type/technology/7055/
        * https://zenn.dev/slowhand/articles/4fe99377185100
    20. frontでGrahpQLを使えるようにする
        * docker-compose run front npm install @apollo/client graphql
        * https://qiita.com/ozaki25/items/f4fc0e2a2ad4646cf8df
        * 上記のサイトを参考にする                    

## 開発中のエラー
    * dockerを使って開発を行う場合基本的にはコマンドの最初に「docker-compose run --rm app」が必要になる
        
    - どんなエラーでもまずwifiを疑うべし
        - 基本的に大学ではkutのwifiじゃないと作業できない

    - 1.1.12「Mysql2::Error::ConnectionError: Unknown MySQL server host 'db' (-3)」
        * 原因は手順10のコマンドを打つ前に「docker-compose up -d」でDBを起動していなかったため

    - 1.2.1 「Your Ruby version is 2.7.2, but your Gemfile specified 2.7.3」
        * gemfileで定義しているrubyのバージョンと現在のrubyのバージョンが一致しなかったために発生
        - windowsでのrubyのupdata方法
            * gemfaile内のrubyのバージョンを確認し，dockerfileに書かれているrubyのバージョンをそれに合わせる
            * 「docker-compose build --no-cache」を実行し，rubyのバージョンを変更する

    - create-react-appを実行すると，node.jsのバージョンが低いといわれる
        * dockerfileに書いたnodeのバージョンが低く，それが「docker-compose build」を行った事でそのままdockerに実行されていた
        * dockerfile内のnodeのバージョンを上げ，もう一度「docker-compose build」を行う.この時，dockerfileに書くnodeのバージョンはなんか変わった奴なので注意すべし，こんなの（16.6-alpine3.11）
            
    - rails newしたら「Can't initialize a new Rails application within the directory of another, please change to a non-Rails directory first.」と出た
        * 以下のコマンドを順に実行し，docekrのコンテナを初期化
        * 「docker stop $(docker ps -q)」
        * 「docker rm $(docker ps -q -a)」
        * 「docker rmi $(docker images -q)」
        
    - rialsでモデルを削除したのに同じ名前のモデルを作ってmigrateすると同じ名前のテーブルがあると怒られる
        * モデルを消してもテーブルは残るためテーブルを消すためのmigrateをしなければならない，ここを参照（https://qiita.com/kanuu/items/a9223712ee0ff8d19d56）
        
    - テーブルをコマンドラインから確認しようとして「docker-compose run api rails dbconsole」を実行するとエラーが起こる
        * https://qiita.com/ryosk7/items/077ea98a88ec3df289c8
        * https://yourmystar-engineer.hatenablog.jp/entry/2019/07/15/140644
        * 上記の2つを合わせると解決，上だけだとバージョンの問題でエラーが起こる

    - 「update is defined by Active Record. Check to make sure that you don't have an attribute or method with the same name.」というエラーが出る
        * モデルのカラム名がなんかと被っているのが原因
        * カラムの名称を被りにくい奴に変更
        * 使ってはいけない名前（https://qiita.com/savaniased/items/fee648279d988346edd3）

    - 「git add .」したら「unable to index file 'node_modules/.bin/loose-envify' 」と怒られた
        * node_modulesフォルダが複数あるのが原因ではなかった
        * 多分.gitignoreファイルに追加しないといけないファイルを追加していないことが原因

    - gemfileに新しいgemを追加し，bundleinstallして，「docker-compose run api rails g graphql:install」を行うと，「 Could not find graphql-1.12.16 in any of the sources (Bundler::GemNotFound)」と怒られた
        * dockerを使っている場合は上記の新開発の18の手順で行わなければならない
        * bundle install をした後に取り敢えずdocker-compose buildする
    
    - 急に以下のような超長いエラーが出た場合
        * Error: Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
        1. You might have mismatching versions of React and the renderer (such as React DOM)
        2. You might be breaking the Rules of Hooks
        3. You might have more than one copy of React in the same app
        See https://fb.me/react-invalid-hook-call for tips about how to debug and fix this problem.

        * 原因としてはreactとreact-domのファイルが2つずつ存在していたらしく上の階層のノードモジュールディレクトリに入っていた方のreactとreact-domファイルを削除したら治った
    
    - reactでgraphqlを使ってデータを取得しようとすると以下のようなエラーが出た「TypeError: Cannot read properties of undefined (reading 'users')」
        * 原因としてはクエリでデータがとれていない為だと思われる
        * シンプルにクライアント側のクエリをミスっていたらしい
    
    - railsでクエリを定義し，それをqraphiqlのAPPで呼び出すと「Field 'site1_day' doesn't exist on type 'Query'」というエラーが出る
        * 呼び出す側は”_”を使ってはいけないためアンダーバーを省略し，そのすぐ後の文字を大文字にすると許される
        * 呼び出される側は使ってもよい
        * その辺は規則を調べる
    
    - dbを起動しようとすると「 Cannot start service db: driver failed programming external connectivity on endpoint rails-react_db_1」とか言われる
        * ポートがすでに割り当てられていると怒られてた．
        * dbコンテナとfrontコンテナで使われているポートで検索してみたがポートは使われていなかった．
        * 試しにwindows自体の再起動や，docker-compose restartを行ってみたがダメ
        * dockerアプリを開き，右上のてんとう虫マークを押して，Restart Docker Desktopのrestartを押すと解決、してなかった
        * 単純にポートが被っていただけでデータベースのポートを変更するか，ポートを占有しているデータベースを止めればできる
    
    - コンテナをrestartしようとすると「Cannot restart container b02e270196280763f049ac6a07f8b00f6af38440364cf2eb5216af6a631e512d: driver failed programming external connectivity on endpoint rails-react_db_1」と出る
        * docker-compose down -v
    
    - dockerで何か使用とすると取り敢えず「Error response from daemon: invalid mount config for type "bind": bind source path does not exist: /tmp/dockerdir」と怒られる
        * ないと言われている箇所にtmp/dockerdirディレクトリを作成すると解決
    

