.PHONY: build_docker_image test clean

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
install:
	mkdir "${HOME}/.vim"
	cp ./.vimrc "${HOME}/.vim/.vimrc"
	ln -s "${HOME}/.vim/.vimrc" "${HOME}/.vimrc"
	cp -r ./autoload "${HOME}/.vim/autoload"
	cp -r ./colors "${HOME}/.vim/colors"
	cp -r ./plugged "${HOME}/.vim/plugged"
uninstall:
	rm -rf "${HOME}/.vim"
	rm -f "${HOME}/.vimrc"
