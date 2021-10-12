FROM alpine:latest

COPY ["entrypoint.sh", "/"]

WORKDIR /data
COPY tinyproxy.conf .
COPY filter .


RUN apk add --no-cache tinyproxy

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["tinyproxy", "-d", "-c", "/data/tinyproxy.conf"]
