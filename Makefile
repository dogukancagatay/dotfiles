.PHONY: all install clean

all:
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/git/gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/git/gitignore_global ~/.gitignore_global
	[ -d ~/.bash ] || ln -s $(PWD)/bash ~/.bash
	[ -f ~/.screenrc ] || ln -s $(PWD)/screenrc ~/.screenrc
	[ -d ~/.aria2 ] || ln -s $(PWD)/aria2 ~/.aria2
	#[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	#[ -f ~/Library/Preferences/com.googlecode.iterm2.plist ] && \
	#	mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist.orig && \
	#	ln -s $(PWD)/item2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

install:
	echo '[ -f ~/.bash/load_profiles ] && . ~/.bash/load_profiles' >> $(HOME)/.bashrc

clean:
	rm -rf ~/.vimrc ~/.vim ~/.gitconfig ~/.gitignore_global ~/.mybashrc ~/.bash ~/.screenrc ~/.aria2
	#[ -f ~/Library/Preferences/com.googlecode.iterm2.plist ] && \
	#	mv ~/Library/Preferences/com.googlecode.iterm2.plist.orig ~/Library/Preferences/com.googlecode.iterm2.plist

