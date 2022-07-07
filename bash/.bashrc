# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

# Command Line Style
export PS1="\n\r\e[35m(\d \t)\e[0m\e[34m[\e[0m\e[32m\u\e[0m\e[33m@\e[0m\e[31m\h\e[0m \e[36m\w\e[0m\e[34m]\e[0m\n\r$ "
export PS2=">>> "

# Useful alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
