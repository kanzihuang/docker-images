image=kanzihuang/kindest-node:tencentyun

build:
	docker build -t ${image} .

push:
	docker push ${image}

deploy:
	./create-cluster.sh ${image}
