# extend default key bindings
source $ZSH/lib/key-bindings.zsh

# allow the use of Home/End keys
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

# map std bash keys to zsh
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line

# lookup man page
bindkey "^k" run-help

# search backwards
bindkey "^r" history-incremental-pattern-search-backward
