FROM nginx

WORKDIR /usr/share/nginx/html/download/
RUN apt-get update && apt-get -y install wget

COPY nginx.conf /etc/nginx/
COPY kubespray-files-v2.19.0.list kubespray-files.list

RUN grep "https://get.helm.sh/helm-" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/containerd/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/containernetworking/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/containers/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/etcd-io/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/kata-containers/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/kubernetes-sigs/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/Mirantis/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/opencontainers/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://github.com/projectcalico/calico/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://storage.googleapis.com/gvisor/" kubespray-files.list \
    | wget -nv -x -P ./ -i -
RUN grep "https://storage.googleapis.com/kubernetes-release/" kubespray-files.list \
    | wget -nv -x -P ./ -i -

RUN ln -frs github.com/projectcalico/calico/ github.com/projectcalico/calicoctl
