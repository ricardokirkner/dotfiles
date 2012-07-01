WORKON_HOME=$HOME/.virtualenvs

if [ -e /etc/bash_completion.d/virtualenvwrapper ]; then
	source /etc/bash_completion.d/virtualenvwrapper
elif [ -e /usr/bin/virtualenvwrapper.sh ]; then
	source /usr/bin/virtualenvwrapper.sh
fi
