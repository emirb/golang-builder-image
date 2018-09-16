FROM golang:1.11

RUN apt-get update && apt-get install -y --no-install-recommends gcc make git ansible ca-certificates \
    mysql-client bash \
    && apt-get clean

# go packages
RUN go get -u github.com/golang/dep/cmd/dep honnef.co/go/tools/cmd/megacheck
