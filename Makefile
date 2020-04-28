build: 
	docker build --tag sergiopichardo/simple-web . 

run: 
	docker run --publish 8080:8080 --name simple-web

all: build run 

