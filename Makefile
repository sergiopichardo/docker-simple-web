build: 
	docker build --tag sergiopichardo/simple-web . 

run: 
	docker run -p 5000:8080 --rm --name simple-web sergiopichardo/simple-web

start: 
	docker start -a simple-web

lint: 
	hadolint Dockerfile

clean: 
	echo "y" | docker container prune

all: lint build run

