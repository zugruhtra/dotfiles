#zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/guz/.zshrc'

autoload -Uz compinit promptinit
fpath+=~/.zfunc
compinit
promptinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

export TERMINAL='tilix'
export EDITOR='vim'
export PAGER='less'

prompt walters

export GOPATH=$HOME/.local/go

typeset -U path PATH
path=($GOPATH/bin ~/Scripts ~/.local/bin ~/.cargo/bin /usr/local/go/bin $path )
export PATH

autoload -Uz run-help
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

alias ls='ls --color=auto --group-directories-first --dereference-command-line-symlink-to-dir'
alias ll='ls -lh'

alias zrc='$EDITOR $HOME/.zshrc && source $HOME/.zshrc'
alias vrc='$EDITOR $HOME/.config/nvim/'
alias tmp='cd /tmp'

alias auau='sudo apt-get update && sudo apt-get upgrade'
alias ua='sudo apt-get update && sudo apt-get upgrade && sudo snap refresh'
alias '?'='webq --browser=lynx'

alias jargon='dict --database=jargon'
alias ende='dict --database=english-german'
alias deen='dict --database=german-english'
alias xclip='xclip -selection clipboard'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# keymappings
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

