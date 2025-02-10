# History Configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# Basic Color Support
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Common Aliases
alias ls='ls -G'
alias ll='ls -lh'
alias la='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# PATH Configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Completion System
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Load Version Control System Info
autoload -Uz vcs_info
precmd() { vcs_info }

# Prompt Customization
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f '
setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f ${vcs_info_msg_0_}%# '

# Key Bindings
bindkey -e  # Use emacs key bindings
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history

# Additional Options
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt CORRECT_ALL

