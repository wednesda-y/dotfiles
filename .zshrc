# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wednesday/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Colourful output
alias ls='ls --color=auto'

#Typos lol
alias l=ls
alias c=cd

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 5)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 5)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 4)\]]\\$ \[$(tput sgr0)\]"

# PyWal
(cat ~/.cache/wal/sequences &)

# Modify path to include ~/scripts
export PATH=$HOME/scripts:$PATH

# Alias startx to ignore error messages.
alias startx='startx 2>/dev/null'

# Alias dotfile config command
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# pure prompt
PURE_PROMPT_SYMBOL=$
PURE_PROMPT_VICMD_SYMBOL=\<
autoload -U promptinit; promptinit
prompt pure
