all: bazaar git python vim zsh gnome-terminal-colors-solarized

.PHONY: bazaar git python vim zsh gnome-terminal-colors-solarized

bazaar:
	rm -rf ~/.bazaar
	mkdir -p ~/.bazaar/plugins
	make install-bzr-plugins
	ln -s `pwd`/bazaar ~/.bazaar

install-bzr-plugins: install-bzr-pipeline install-bzr-pager

install-bzr-pipeline:
	if test -d ~/.bazaar/plugins/pipeline; then \
		cd ~/.bazaar/plugins/pipeline && bzr pull; \
	else \
		bzr branch lp:bzr-pipeline ~/.bazaar/plugins/pipeline; \
	fi

install-bzr-pager:
	if test -d ~/.bazaar/plugins/pager; then \
		cd ~/.bazaar/plugins/pager && bzr pull; \
	else \
		bzr branch http://bzr.oxygene.sk/bzr-plugins/pager ~/.bazaar/plugins/pager; \
	fi

git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

python:
	rm -f ~/.pythonrc
	ln -s `pwd`/python/pythonrc ~/.pythonrc

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim/vim ~/.vim

zsh: install-oh-my-zsh
	rm -rf ~/.zsh ~/.zshrc
	ln -s `pwd`/zsh/zsh ~/.zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc

install-oh-my-zsh:
	git submodule update --init zsh/oh-my-zsh
	rm -rf ~/.oh-my-zsh
	ln -s `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh

gnome-terminal-colors-solarized:
	git submodule update --init gnome-terminal-colors-solarized
	./gnome-terminal-colors-solarized/set_dark.sh
