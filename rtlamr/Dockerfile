FROM golang:1.16-alpine AS BUILD

RUN go get -v github.com/bemasher/rtlamr

FROM alpine:latest

LABEL org.opencontainers.image.authors=joe.rocklin@gmail.com

COPY --from=BUILD /go/bin/rtlamr /usr/bin/.

ENTRYPOINT ["/usr/bin/rtlamr"]