tag=kanzihuang/alpine:utils

build:
	docker build -t ${tag} .

push:
	docker push ${tag}

deploy:
	kubectl create -f deploy-alpine-utils.yaml
