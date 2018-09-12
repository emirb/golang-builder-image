FROM golang:1.11-alpine

RUN apk add --upgrade --no-cache ansible ca-certificates mysql-client git

# go packages
RUN go get -u github.com/golang/dep/cmd/dep honnef.co/go/tools/cmd/megacheck

