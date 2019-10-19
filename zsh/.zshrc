autoload -Uz add-zsh-hook
autoload -Uz compinit && compinit
autoload -Uz vcs_info

export HISTSIZE=10000
export SAVEHIST=10000

export PATH=$HOME/.bin:$PATH

setopt hist_ignore_all_dups
setopt inc_append_history

setopt prompt_subst

bindkey ";5D" backward-word
bindkey "[D" backward-word
bindkey ";5C" forward-word
bindkey "[C" forward-word

bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward

zstyle ":completion:*" menu select
zstyle ":completion:*" special-dirs true

zstyle ":vcs_info:*" check-for-changes true
zstyle ":vcs_info:git*" actionformats " on %b (%a)"
zstyle ":vcs_info:git*" formats " on %b"

add-zsh-hook precmd vcs_info

PS1="%~\$vcs_info_msg_0_ %F{blue}❯%F{reset} "

[ -f ~/.aliases ] && source ~/.aliases