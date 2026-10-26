
# Path to the Oh My Zsh installation.
export ZSH="$HOME/.config/zsh/oh-my-zsh"

# ZSH_THEME="bira"
ZSH_THEME="bira"


HYPHEN_INSENSITIVE="true"


# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"


# History options

HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
HIST_STAMPS="dd/mm/yyyy"

# Fast escape
KEYTIMEOUT=1

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
  zsh-history-substring-search
	zsh-vi-mode
  zsh-syntax-highlighting
)
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

bindkey '^[k' history-substring-search-up
bindkey '^[j' history-substring-search-down

bindkey -M vicmd '^[k' history-substring-search-up
bindkey -M vicmd '^[j' history-substring-search-down

# new clear command binding
clear_cmd() { clear }
zle -N clear_cmd
bindkey -M vicmd '^[l' clear_cmd

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Aliases are defined in ~/.config/zsh/oh-my-zsh/custom/aliases.zsh
# Exports are defined in ~/.config/zsh/oh-my-zsh/custom/exports.zsh


if [[ ! -z $MAIN_TERM ]] && [[ -z "$TMUX" ]] && [[ -z "$NVIM" ]]; then
  
  # turn off sounds 
  wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 0 
  wpctl set-mute @DEFAULT_AUDIO_SINK@ 1
  qs ipc call volBriIPC updateVol

  # setup base tmux window
  tmux attach-session -t main
fi

