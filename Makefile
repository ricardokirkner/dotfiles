.PHONY: bazaar git gnome-terminal-colors-solarized mr nox python vim x11 zsh

all: nox gnome-terminal-colors-solarized x11
nox: bazaar git python vim zsh


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
	rm -rf ~/.zsh ~/.zlogin ~/.zlogout ~/.zprofile ~/.zshenv ~/.zshrc
	ln -s `pwd`/zsh/zsh ~/.zsh
	ln -s `pwd`/zsh/zlogin ~/.zlogin
	ln -s `pwd`/zsh/zlogout ~/.zlogout
	ln -s `pwd`/zsh/zprofile ~/.zprofile
	ln -s `pwd`/zsh/zshenv ~/.zshenv
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	make prezto

prezto:
	rm -rf ~/.zprezto ~/.zpreztorc
	ln -s `pwd`/zsh/prezto ~/.zprezto
	ln -s `pwd`/zsh/zpreztorc ~/.zpreztorc
