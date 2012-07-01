PYTHONSTARTUP=$HOME/.pythonrc

packages() {
	reply=( $(python -c "import pkgutil; \
		print ' '.join(name for _, name, ispkg in pkgutil.iter_modules() if ispkg)") )
}

# cd into the folder of the given python module
cdp() {
	cd "$(python -c "import os.path as _, ${1}; \
		print _.dirname(_.realpath(${1}.__file__[:-1]))")"
}

# enable autocomplete for cdp
compctl -K packages cdp
