FROM alpine

WORKDIR /download
ADD https://github.com/istio/istio/releases/download/1.12.9/istio-1.12.9-linux-amd64.tar.gz /download/
ENTRYPOINT ["sh", "-c", "cp /download/* /releases/"]
