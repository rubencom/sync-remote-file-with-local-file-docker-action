FROM alpine:latest

RUN apk add --no-cache coreutils wget git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
