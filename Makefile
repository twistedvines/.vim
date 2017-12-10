.PHONY: build_docker_image test

PWD=$(shell pwd)

build_docker_image:
	docker build -t "vim:latest" .
test: build_docker_image
	docker run -it -v "$(PWD):/home/vim/.vim" vim:latest
	clear
	make clean
clean:
	rm -rf $(PWD)/plugged/*
	rm -rf $(PWD)/autoload/*
