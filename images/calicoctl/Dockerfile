FROM alpine

ADD https://github.com/projectcalico/calico/releases/download/v3.23.3/calicoctl-linux-amd64 /download/
ENTRYPOINT ["sh", "-c", "cp /download/* /releases/"]
