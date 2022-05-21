FROM node:16.7-alpine3.11

WORKDIR /usr/src/app
# package.jsonとyarn.lockを/usr/src/appにコピー

COPY ["package.json","package-lock.json", "./"]

# # パッケージをインストール
RUN npm install 
RUN npm install react-scripts
RUN npm update -g npm@8.10.0

# # ファイルを全部作業用ディレクトリにコピー
COPY . .

