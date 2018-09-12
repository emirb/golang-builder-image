FROM golang:1.11-alpine

RUN apk update && apk add --no-cache --virtual build-dependencies build-base gcc git && apk add --upgrade --no-cache ansible ca-certificates mysql-client bash

# go packages
RUN go get -u github.com/golang/dep/cmd/dep honnef.co/go/tools/cmd/megacheck

