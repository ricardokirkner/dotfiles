install: install-bazaar install-git install-python install-vim install-zsh

install-bazaar:
	rm -rf ~/.bazaar
	ln -s `pwd`/bazaar ~/.bazaar
	mkdir -p ~/.bazaar/plugins
	make install-bzr-plugins

install-bzr-plugins: install-bzr-pipeline install-bzr-pager

install-bzr-pipeline:
	rm -rf ~/.bazaar/plugins/pipeline
	bzr branch lp:bzr-pipeline ~/.bazaar/plugins/pipeline

install-bzr-pager:
	rm -rf ~/.bazaar/plugins/pager
	bzr branch http://bzr.oxygene.sk/bzr-plugins/pager ~/.bazaar/plugins/pager

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-python:
	rm -f ~/.pythonrc
	ln -s `pwd`/python/pythonrc ~/.pythonrc

install-vim: install-vim-plugins
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim/vim ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc

install-vim-plugins:
	git submodule update --init --recursive
	make build-vim-plugins

build-vim-plugins: build-command-t

build-command-t:
	sudo apt-get install vim-nox ruby ruby-dev
	cd ~/.vim/bundle/command-t/ruby/command-t
	ruby extconf.rb
	make

install-zsh: install-oh-my-zsh
	rm -rf ~/.zsh ~/.zshrc
	ln -s `pwd`/zsh/zsh ~/.zsh
	ln -s `pwd`/zsh/zshrc ~/.zshrc

install-oh-my-zsh:
	git submodule update --init zsh/oh-my-zsh
	rm -rf ~/.oh-my-zsh
	ln -s `pwd`/zsh/oh-my-zsh ~/.oh-my-zsh

