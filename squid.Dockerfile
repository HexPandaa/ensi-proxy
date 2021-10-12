FROM alpine:latest

WORKDIR /data
COPY squid.conf .
COPY passwords .

RUN apk add --no-cache squid

CMD ["squid", "--foreground", "-f", "/data/squid.conf", "-d", "9"]
