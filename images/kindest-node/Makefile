repo := kanzihuang/kindest-node
tags := tencentyun aliyun aliyuncs dockerproxy
tencentyun := https://mirror.ccs.tencentyun.com
aliyun := https://zqjdark9.mirror.aliyuncs.com
aliyuncs := https://mirrors.cloud.aliyuncs.com
dockerproxy := https://dockerproxy.com

build: ${tags}

%:
	sed 's#MIRRORS_DOCKER_IO#${$*}#' Dockerfile | \
		docker build -f - -t ${repo}:$* . && \
		docker push ${repo}:$*

.PHONY: build
