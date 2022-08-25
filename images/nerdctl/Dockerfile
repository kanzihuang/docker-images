FROM alpine

WORKDIR /download
ADD https://github.com/containerd/nerdctl/releases/download/v0.22.0/nerdctl-0.22.0-linux-amd64.tar.gz  /download/
ENTRYPOINT ["sh", "-c", "cp /download/* /releases/"]
