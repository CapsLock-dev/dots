if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

unsetopt BEEP

#aliases
alias cfgnvim="cd ~/.config/nvim"
alias manru="man --locale=ru_RU.UTF-8"
alias ls="ls --color=auto"
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
alias fixdiscord="sudo -E nvim /opt/discord/resources/build_info.json"
alias esp8266_venv="source ~/esp/ESP8266_RTOS_SDK/venv/bin/activate"
alias dotgit="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

#history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$XDG_STATE_HOME/zsh/history

#autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-"$ZSH_VERSION"
_comp_options+=(globdots)	

# binds
export KEYTIMEOUT=1
bindkey -e

# NB: can atm. only wrap native widgets

bindkey "\e[A": history-search-backward
bindkey "\e[B": history-search-forward

#edit command line with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#show vi mode on right side
#echo -ne '\e[5 q'
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

#bindkey '^[[Z' reverse-menu-complete
bindkey '^[[Z' up-history
