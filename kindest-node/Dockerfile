FROM kindest/node:v1.24.2

COPY releases/nerdctl /usr/local/bin/nerdctl

RUN sed -i '/\[plugins."io.containerd.grpc.v1.cri".registry.mirrors."k8s.gcr.io"\]/{n;s/registry.k8s.io/k8s.dockerproxy.com/}' /etc/containerd/config.toml && \
	printf '\
[plugins."io.containerd.grpc.v1.cri".registry.mirrors."docker.io"]\n\
  endpoint = ["MIRRORS_DOCKER_IO"]\n\
[plugins."io.containerd.grpc.v1.cri".registry.mirrors."gcr.io"]\n\
  endpoint = ["https://gcr.dockerproxy.com"]\n\
[plugins."io.containerd.grpc.v1.cri".registry.mirrors."registry.k8s.io"]\n\
  endpoint = ["https://k8s.dockerproxy.com"]\n\
[plugins."io.containerd.grpc.v1.cri".registry.mirrors."quay.io"]\n\
  endpoint = ["https://quay.dockerproxy.com"]\n\
' >> /etc/containerd/config.toml
