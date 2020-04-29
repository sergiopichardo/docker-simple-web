CONTAINER_NAME=simple-web
IMAGE_NAME=sergiopichardo/$(CONTAINER_NAME)

build: 
	docker build --tag $(IMAGE_NAME) . 

run:
	docker run -p 5000:8080 --name $(CONTAINER_NAME) $(IMAGE_NAME)

start:
	docker start -a $(CONTAINER_NAME)

lint: 
	hadolint Dockerfile

inspect: 
	docker exec -it $(CONTAINER_NAME) sh 

clean: 
	docker rm $(CONTAINER_NAME)


all: lint build run clean