tag-name:= api-node

build-image:
	docker build -t ${tag-name} .
run-app:
	docker run -p 3000:3000 ${tag-name}

create-repo:
	aws ecr create-repository --repository-name api-node --region us-east-1
tag-image:
	docker tag api-node:latest 058264543977.dkr.ecr.us-east-1.amazonaws.com/api-node:latest
get-login-pass:
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 058264543977.dkr.ecr.us-east-1.amazonaws.com
push-image:
	docker push 058264543977.dkr.ecr.region.amazonaws.com/api-node