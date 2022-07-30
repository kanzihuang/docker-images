FROM alpine

WORKDIR /download
RUN apk add curl
RUN curl -L https://istio.io/downloadIstio | TARGET_ARCH=x86_64 sh
ENTRYPOINT ["sh", "-c", "cp -rf /download/* /releases/"]
