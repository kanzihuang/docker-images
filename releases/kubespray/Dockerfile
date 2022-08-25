FROM ubuntu

WORKDIR /download/
RUN apt-get update && apt-get -y install wget
COPY /files.list /download/
RUN sed -i "\#https://github.com/projectcalico/calicoctl#d" /download/files.list && \
  wget -x -P /download/ -i /download/files.list && \
  ln -rs github.com/projectcalico/calico/ github.com/projectcalico/calicoctl
ENTRYPOINT ["sh", "-c", "cp -r /download/* /releases/"]
