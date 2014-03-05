if [ -f `brew --prefix`/share/zsh-completions ]; then
  fpath=(`brew --prefix`/share/zsh-completions $fpath)
fi

autoload -U colors && colors
autoload -U compinit && compinit
autoload -Uz vcs_info

# changing directories
setopt autopushd
setopt pushdignoredups

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt histignoredups
setopt sharehistory

# prompting
setopt promptsubst

# zle
unsetopt beep

bindkey ';5D' backward-word
bindkey '[D' backward-word
bindkey ';5C' forward-word
bindkey '[C' forward-word

zstyle ':completion:*' special-dirs true

zstyle ':vcs_info:git*' formats " (%{$fg_bold[grey]%}%b%{$reset_color%})"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' enable git

precmd() {
  vcs_info
}

export CLICOLOR=1
export PROMPT='%{$fg_bold[white]%}%~%{$reset_color%}${vcs_info_msg_0_} %{$fg_bold[blue]%}☁ %{$reset_color%} '

# aliases
source ~/.common/aliases.sh
source ~/.common/homebrew.sh
source ~/.common/rbenv.sh

