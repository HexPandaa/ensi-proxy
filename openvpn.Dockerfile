FROM alpine:latest

WORKDIR /data
COPY config.ovpn .
COPY credentials .


RUN apk add --no-cache openvpn
# RUN mkdir -p /dev/net/
# RUN mknod /dev/net/tun c 10 200 && chmod 666 /dev/net/tun && ls -al /dev/net


# CMD ["openvpn", "--config", "/data/config.ovpn", "--auth-user-pass", "/data/credentials", "--user", "nobody", "--group", "nobody"]
CMD ["openvpn", "--config", "/data/config.ovpn", "--auth-user-pass", "/data/credentials"]
