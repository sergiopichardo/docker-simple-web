build: 
	docker build --tag sergiopichardo/simple-web . 

run: 
	docker run -p 8080:8080 --name simple-web sergiopichardo/simple-web

start: 
	docker start -a simple-web

lint: 
	hadolint Dockerfile


all: lint build start 

