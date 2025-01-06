[ `uname -s` = "Darwin" ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ `uname -s` = "Linux" ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -Uz add-zsh-hook
autoload -Uz compinit && compinit
autoload -Uz vcs_info

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

export LC_ALL=en_US.UTF-8

export PATH=$HOME/.bin.local:$HOME/.bin:$PATH

setopt hist_ignore_all_dups
setopt inc_append_history

setopt prompt_subst

bindkey -e

if [ `uname -s` = "Darwin" ]
then
  bindkey "\e[A" history-search-backward
  bindkey "\e[B" history-search-forward
fi

if [ `uname -s` = "Linux" ]
then
  bindkey "^[[1;5D" backward-word
  bindkey "^[[1;5C" forward-word
  bindkey "^[[A" history-search-backward
  bindkey "^[[B" history-search-forward
fi

zstyle ":completion:*" menu select
zstyle ":completion:*" special-dirs true

zstyle ":vcs_info:*" check-for-changes true
zstyle ":vcs_info:git*" actionformats " on %b (%a)"
zstyle ":vcs_info:git*" formats " on %b"

add-zsh-hook precmd vcs_info

# PS1="%~\$vcs_info_msg_0_ %F{50}❯%F{reset} "
PS1="%~\$vcs_info_msg_0_ %B%F{50}λ%f%b "

[ -f ~/.aliases ] && source ~/.aliases
