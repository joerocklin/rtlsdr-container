FROM golang:1.16-alpine AS BUILD

RUN go get -v github.com/bemasher/rtlamr

FROM alpine:3.14

COPY --from BUILD /go/bin/rtlamr /usr/bin/.

ENTRYPOINT ["/usr/bin/rtlamr"]