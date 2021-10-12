#!/bin/sh

if [ -z "$PROXY_USER" ]
then
    echo "ERROR: PROXY_USER is not set, exiting..."
    exit 1
fi

if [ -z "$PROXY_PASS" ]
then
    echo "ERROR: PROXY_PASS is not set, exiting..."
    exit 1
fi

sed -i "s/<PROXY_USER>/$PROXY_USER/g" /data/tinyproxy.conf
sed -i "s/<PROXY_PASS>/$PROXY_PASS/g" /data/tinyproxy.conf

exec "${@}"
