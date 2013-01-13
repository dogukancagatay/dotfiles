all:
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/gitignore_global ~/.gitignore_global
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash/bash_profile ~/.bash_profile
	[ -d ~/.bash ] || ln -s $(PWD)/bash ~/.bash

clean:
	rm -rf ~/.vimrc ~/.vim ~/.gitconfig ~/.gitignore_global ~/.bash_profile ~/.bash

.PHONY: all
