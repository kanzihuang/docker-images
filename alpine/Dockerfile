from alpine

RUN set -eux; \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.cloud.tencent.com/g' /etc/apk/repositories; \
    apk update; \
    apk add --no-cache \
        bash \
        busybox-extras \
        iptables \
        tcpdump
ENTRYPOINT ["sh", "-c", "trap exit TERM; while true; do sleep 1; done"]
