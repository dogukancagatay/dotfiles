all:
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile

clean:
	rm -rf ~/.vimrc ~/.vim ~/.gitconfig ~/.bash_profile

.PHONY: all
