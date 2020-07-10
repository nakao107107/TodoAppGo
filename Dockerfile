# API Image 作成

# ベースとなるイメージ
FROM golang:latest

# dep ensure を行うプロジェクトルートに移動する
WORKDIR /go/src/app

COPY . .

# 必要なパッケージをイメージにインストールする
RUN go get -u github.com/gin-gonic/gin

