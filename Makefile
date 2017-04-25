.PHONY: all clean

all:
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/gitignore_global ~/.gitignore_global
	[ -d ~/.bash ] || ln -s $(PWD)/bash ~/.bash
	[ -f ~/.bash_profile ] || ln -s ~/.bash/bash_profile ~/.bash_profile
	[ -f ~/.bash_profile2 ] || ln -s ~/.bash/bash_profile2 ~/.bash_profile2
	[ -f ~/.screenrc ] || ln -s $(PWD)/screenrc ~/.screenrc
	#[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	[ -d ~/.aria2 ] || ln -s $(PWD)/aria2 ~/.aria2
	[ -f ~/Library/Preferences/com.googlecode.iterm2.plist ] && \
		mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist.orig && \
		ln -s $(PWD)/item2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

clean:
	rm -rf ~/.vimrc ~/.vim ~/.gitconfig ~/.gitignore_global ~/.bash_profile ~/.bash ~/.screenrc ~/.aria2
	mv ~/Library/Preferences/com.googlecode.iterm2.plist.orig ~/Library/Preferences/com.googlecode.iterm2.plist

