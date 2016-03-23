all:
	[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/gitignore_global ~/.gitignore_global
	[ -d ~/.bash ] || ln -s $(PWD)/bash ~/.bash
	[ -f ~/.bash_profile ] || ln -s ~/.bash/bash_profile ~/.bash_profile
	[ -f ~/.bash_profile2 ] || ln -s ~/.bash/bash_profile2 ~/.bash_profile2
	[ -d ~/.zsh/ ] || ln -s $(PWD)/zsh/ ~/.zsh
	[ -f ~/.zshrc ] || ln -s ~/.zsh/zshrc ~/.zshrc
	[ -d ~/.oh-my-zsh/ ] || ln -s ~/.zsh/oh-my-zsh ~/.oh-my-zsh
	[ -d ~/.oh-my-zsh/custom/plugins ] || ln -s ~/.zsh/plugins ~/.oh-my-zsh/custom/plugins
	[ -f ~/.oh-my-zsh/themes/pardus.zsh-theme ] || ln -s ~/.zsh/pardus.zsh-theme ~/.oh-my-zsh/themes/pardus.zsh-theme
	[ -f ~/.screenrc ] || ln -s $(PWD)/screenrc ~/.screenrc
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	[ -d ~/.aria2 ] || ln -s $(PWD)/aria2 ~/.aria2
	

clean:
	rm -rf ~/.vimrc ~/.vim ~/.gitconfig ~/.gitignore_global ~/.bash_profile ~/.bash ~/.zsh ~/.zshrc ~/.oh-my-zsh ~/.screenrc ~/.aria2

.PHONY: all clean
