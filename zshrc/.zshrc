# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# history for vim binds
setopt  auto_cd  
# Auto Pushd
DIRSTACKSIZE=10
setopt autopushd
setopt pushdignoredups
# CD Path
cdpath=($HOME/projects)
# Path Variable
export PATH="/home/$USER/wx/wxWidgets-3.1.3/lib/gtk3_so/bin:$HOME/bash scripts:$HOME/.local/bin:$HOME/.emacs.d/bin:$PATH"
# Aliases
alias ls='ls --color=auto'
alias vim='nvim'
alias ll='ls -alh --color=auto'
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
alias tb='taskbook'
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
HISTFILE=~/.config/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
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


#if [ -x /usr/bin/taskbook ]; then
#    taskbook
#fi
#if [ -x /usr/bin/task ]; then
#    task next
#fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/saul/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
