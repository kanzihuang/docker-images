FROM alpine

WORKDIR /downloads
RUN apk add curl
RUN curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.15.0 ARGET_ARCH=x86_64 sh
ENTRYPOINT ["sh", "-c", "cp -rf /downloads/* /releases/"]
