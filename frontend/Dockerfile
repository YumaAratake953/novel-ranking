FROM node:16.7-alpine3.11
#FROM node:18-alpine3.14

WORKDIR /usr/src/app
# package.jsonとyarn.lockを/usr/src/appにコピー

# COPY ["package.json","package-lock.json", "./"]
COPY ["package.json","package-lock.json", "./"]


# # # # パッケージをインストール
RUN npm install -g npm@8.10.0
RUN npm install -g react-scripts
# RUN yarn install
# RUN yarn add react-scripts

# # # ファイルを全部作業用ディレクトリにコピー
COPY . .

