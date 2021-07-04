# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# history for vim binds
setopt  auto_cd  
# Auto Pushd
#DIRSTACKSIZE=10
#setopt autopushd
#setopt pushdignoredups
# CD Path
cdpath=($HOME/projects)
# Path Variable
export PATH="/home/$USER/wx/wxWidgets-3.1.3/lib/gtk3_so/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
# Aliases
alias sudo='doas'
alias yt='ytfzf --subt'
alias update='sudo pacman -Syu'
alias inst='sudo pacman -S'
alias hist='history 1 | cut -d " "  -f 6- | rofi -dmenu | xclip -selection clipboard'
alias remove='sudo pacman -Rcns'
alias search='pacman -Ss'
#alias ls='ls --color=auto'
alias ls='exa --icons'
alias rm='rm -I'
alias vim='nvim'
alias v='nvim'
#alias ll='ls -alh --color=auto'
alias ll='exa -laF  --git --icons'
alias mv="mv -iv"
alias mkdir="mkdir -vp"
alias cp="cp -rvi"
alias d='cdr -l'
alias 0='cdr 0'
alias 1='cdr 1'
alias 2='cdr 2'
alias 3='cdr 3'
alias 4='cdr 4'
alias 5='cdr 5'
alias 6='cdr 6'
alias 7='cdr 7'
alias 8='cdr 8'
alias 9='cdr 9'
alias tb='taskbook'
# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
setopt histignorealldups sharehistory

# Use emacs(-e) or vi(-v) keybindings 
bindkey -v

bindkey "^R" history-beginning-search-backward
#bindkey "^R" history-incremental-search-backward
# Auto CD
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*:*:cdr:*:*' menu selection
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

source ~/.config/zsh-configs/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh-configs/.p10k.zsh ]] || source ~/.config/zsh-configs/.p10k.zsh
source ~/.config/zsh-configs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
