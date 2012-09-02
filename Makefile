all: bazaar git python vim zsh

.PHONY: bazaar git python vim zsh

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
