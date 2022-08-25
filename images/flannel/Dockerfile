FROM alpine

ADD https://github.com/flannel-io/flannel/releases/download/v0.19.0/flannel-v0.19.0-linux-amd64.tar.gz /download/
ENTRYPOINT ["sh", "-c", "cp /download/* /releases/"]
