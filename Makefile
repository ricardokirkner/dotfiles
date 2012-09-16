all: bazaar git gnome-terminal-colors-solarized mr python vim x11 zsh

.PHONY: bazaar git gnome-terminal-colors-solarized mr python vim x11 zsh

bazaar:
	rm -rf ~/.bazaar
	ln -s `pwd`/bazaar ~/.bazaar
	mkdir -p ~/.bazaar/plugins
	make mr

git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

gnome-terminal-colors-solarized:
	git submodule update --init gnome-terminal-colors-solarized
	./gnome-terminal-colors-solarized/set_dark.sh

mr:
	rm -rf ~/.mrconfig
	ln -s `pwd`/mr/mrconfig ~/.mrconfig
	cd ~ && mr update

python:
	rm -f ~/.pythonrc
	ln -s `pwd`/python/pythonrc ~/.pythonrc

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim/vim ~/.vim

x11:
	rm -rf ~/.Xresources
	ln -s `pwd`/x11/Xresources ~/.Xresources

zsh:
	rm -rf ~/.zsh ~/.zshrc
	ln -s `pwd`/zsh/zsh ~/.zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	make mr
