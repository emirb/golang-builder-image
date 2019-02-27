FROM golang:1.12

RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc make git ca-certificates mysql-client bash python-pip python-setuptools && \
    apt-get clean

RUN pip install --upgrade pip setuptools
RUN pip install ansible

RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin latest
RUN curl -sfL https://taskfile.org/install.sh | sh -s -- -b $(go env GOPATH)/bin latest

