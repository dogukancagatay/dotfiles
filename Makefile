all:
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash/bash_profile ~/.bash_profile
	[ -d ~/.bash ] || ln -s $(PWD)/bash ~/.bash

clean:
	rm -rf ~/.vimrc ~/.vim ~/.gitconfig ~/.bash_profile ~/.bash

.PHONY: all
