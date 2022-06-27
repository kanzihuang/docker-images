FROM kindest/node:v1.24.2
RUN printf '[plugins."io.containerd.grpc.v1.cri".registry.mirrors."docker.io"]\n\ 
  endpoint = ["https://mirrors.tencentyun.com"]'  >> /etc/containerd/config.toml 
ENTRYPOINT ["/usr/local/bin/entrypoint" "/sbin/init"]
