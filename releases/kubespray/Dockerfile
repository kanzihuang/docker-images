FROM ubuntu

RUN apt-get update && apt-get -y install wget
COPY files.list /download/
RUN wget -x -P /download/ -i /download/files.list
ENTRYPOINT ["sh", "-c", "cp -r /download/* /releases/"]
