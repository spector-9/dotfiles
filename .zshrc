# history for vim binds
setopt  auto_cd  
# Auto Pushd
DIRSTACKSIZE=10
setopt autopushd
setopt pushdignoredups
# CD Path
cdpath=($HOME/projects)
# Path Variable
export PATH="$HOME/.local/bin:$HOME/.emacs.d/bin:$PATH"
# Aliases
alias ls='ls --color'
alias vim='nvim'
alias ll='ls -al --color'
alias d='dirs -v | head -10'
alias 0='~0'
alias 1='~1'
alias 2='~2'
alias 3='~3'
alias 4='~4'
alias 5='~5'
alias 6='~6'
alias 7='~7'
alias 8='~8'
alias 9='~9'
# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs(-e) or vi(-v) keybindings 
bindkey -v

bindkey "^R" history-beginning-search-backward
#bindkey "^R" history-incremental-search-backward
# Auto CD
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
