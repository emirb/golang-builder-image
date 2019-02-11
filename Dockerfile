FROM golang:1.11

RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc make git ca-certificates mysql-client bash python-pip python-setuptools && \
    apt-get clean

RUN pip install --upgrade pip setuptools
RUN pip install ansible

# golangci-lint
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin latest
