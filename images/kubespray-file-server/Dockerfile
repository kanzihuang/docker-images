FROM ubuntu as build

RUN apt-get update && apt-get -y install wget
WORKDIR /usr/share/nginx/html/download/
COPY kubespray-files-v2.19.1.list kubespray-files.list
RUN sed -i '\@^https://github.com/projectcalico/calicoctl/releases/download/@d' kubespray-files.list
RUN wget -nv -x -P ./ -i kubespray-files.list

FROM nginx:alpine
COPY nginx.conf /etc/nginx/
COPY --from=build /usr/share/nginx/html/download/ /usr/share/nginx/html/download
RUN ln -fs /usr/share/nginx/html/download/github.com/projectcalico/calico/ /usr/share/nginx/html/download/github.com/projectcalico/calicoctl
