install: install-bazaar install-git install-python install-zsh

install-bazaar:
    rm -rf ~/.bazaar
    ln -s `pwd`/bazaar ~/.bazaar
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

install-oh-my-zsh:
    rm -rf ~/.oh-my-zsh
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

install-zsh: install-oh-my-zsh
    rm -rf ~/.zsh ~/.zshrc
    ln -s `pwd`/zsh/zsh ~/.zsh
    ln -s `pwd`/zsh/zshrc ~/.zshrc
