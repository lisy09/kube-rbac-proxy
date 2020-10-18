FROM golang:1.11
WORKDIR /go/src/github.com/brancz/kube-rbac-proxy
COPY . .
