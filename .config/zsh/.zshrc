if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

unsetopt BEEP

export EDITOR=nvim

alias fixkeyboard="setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle"
alias cfgnvim="cd ~/.config/nvim"
alias tomorrow="nvim ~/notes/tomorrow"
alias maksServer="cd ~/servers/maksim/1.20.1/ && ./start.sh"
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
alias manru="man --locale=ru_RU.UTF-8"
alias ls="ls --color=auto"

# temp aliases 
alias adventofcode="cd ~/code/advent-of-code/2023/"

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
bindkey -v
export KEYTIMEOUT=1
bindkey '^[[Z' up-history

#copy to clipboard in vi mode
function x11-clip-wrap-widgets() {
    # NB: Assume we are the first wrapper and that we only wrap native widgets
    # See zsh-autosuggestions.zsh for a more generic and more robust wrapper
    local copy_or_paste=$1
    shift
    for widget in $@; do
        # Ugh, zsh doesn't have closures
        if [[ $copy_or_paste == "copy" ]]; then
            eval "
            function _x11-clip-wrapped-$widget() {
                zle .$widget
                xclip -in -selection clipboard <<<\$CUTBUFFER
            }
            "
        else
            eval "
            function _x11-clip-wrapped-$widget() {
                CUTBUFFER=\$(xclip -out -selection clipboard)
                zle .$widget
            }
            "
        fi
        zle -N $widget _x11-clip-wrapped-$widget
    done
}
local copy_widgets=(
    vi-yank vi-yank-eol vi-delete vi-backward-kill-word vi-change-whole-line
)
local paste_widgets=(
    vi-put-{before,after}
)
# NB: can atm. only wrap native widgets
x11-clip-wrap-widgets copy $copy_widgets
x11-clip-wrap-widgets paste  $paste_widgets

bindkey "\e[A": history-search-backward
bindkey "\e[B": history-search-forward

#edit command line with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#xdg-ninja 
alias adb='HOME="$XDG_DATA_HOME/android adb"'
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

#show vi mode on right side
#echo -ne '\e[5 q'
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select
